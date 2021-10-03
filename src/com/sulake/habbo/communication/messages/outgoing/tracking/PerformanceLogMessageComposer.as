package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2347:int = 0;
      
      private var var_1448:String = "";
      
      private var var_1748:String = "";
      
      private var var_2331:String = "";
      
      private var var_2346:String = "";
      
      private var var_1763:int = 0;
      
      private var var_2349:int = 0;
      
      private var var_2348:int = 0;
      
      private var var_1450:int = 0;
      
      private var var_2350:int = 0;
      
      private var var_1449:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2347 = param1;
         this.var_1448 = param2;
         this.var_1748 = param3;
         this.var_2331 = param4;
         this.var_2346 = param5;
         if(param6)
         {
            this.var_1763 = 1;
         }
         else
         {
            this.var_1763 = 0;
         }
         this.var_2349 = param7;
         this.var_2348 = param8;
         this.var_1450 = param9;
         this.var_2350 = param10;
         this.var_1449 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2347,this.var_1448,this.var_1748,this.var_2331,this.var_2346,this.var_1763,this.var_2349,this.var_2348,this.var_1450,this.var_2350,this.var_1449];
      }
   }
}
