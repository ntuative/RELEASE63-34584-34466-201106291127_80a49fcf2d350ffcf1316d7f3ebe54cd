package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_161:IHabboConfigurationManager = null;
      
      private var var_612:int = 0;
      
      private var var_520:Number = 0;
      
      private var var_3066:Array;
      
      private var var_1448:String = "";
      
      private var var_1748:String = "";
      
      private var var_2331:String = "";
      
      private var var_2346:String = "";
      
      private var var_1763:Boolean = false;
      
      private var var_1749:GarbageMonitor = null;
      
      private var var_1450:int = 0;
      
      private var var_2333:Boolean;
      
      private var var_1747:int = 1000;
      
      private var var_1449:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1746:int = 0;
      
      private var var_1745:int = 10;
      
      private var var_1447:int = 0;
      
      private var var_2329:Number = 0.15;
      
      private var var_2330:Boolean = true;
      
      private var var_2332:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_3066 = [];
         super();
         this.var_1748 = Capabilities.version;
         this.var_2331 = Capabilities.os;
         this.var_1763 = Capabilities.isDebugger;
         this.var_1448 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1448 == null)
         {
            this.var_1448 = "unknown";
         }
         this.var_1749 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1746 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1748;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_520;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1747 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1745 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_161 = param1;
         this._reportInterval = int(this.var_161.getKey("performancetest.interval","60"));
         this.var_1747 = int(this.var_161.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1745 = int(this.var_161.getKey("performancetest.reportlimit","10"));
         this.var_2329 = Number(this.var_161.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2330 = Boolean(int(this.var_161.getKey("performancetest.distribution.enabled","1")));
         this.var_2333 = Boolean(this.var_161.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1749.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1749.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2333)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1450;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1747)
         {
            ++this.var_1449;
            _loc3_ = true;
         }
         else
         {
            ++this.var_612;
            if(this.var_612 <= 1)
            {
               this.var_520 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_612);
               this.var_520 = this.var_520 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1746 > this._reportInterval * 1000 && this.var_1447 < this.var_1745)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_520 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2330 && this.var_1447 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2332,this.var_520);
               if(_loc8_ < this.var_2329)
               {
                  _loc7_ = false;
               }
            }
            this.var_1746 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2332 = this.var_520;
               if(this.sendReport(param2))
               {
                  ++this.var_1447;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1448,this.var_1748,this.var_2331,this.var_2346,this.var_1763,_loc5_,_loc4_,this.var_1450,this.var_520,this.var_1449);
            this._connection.send(_loc2_);
            this.var_1450 = 0;
            this.var_520 = 0;
            this.var_612 = 0;
            this.var_1449 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
