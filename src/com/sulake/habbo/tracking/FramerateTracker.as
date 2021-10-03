package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1746:int;
      
      private var var_2491:int;
      
      private var var_807:int;
      
      private var var_520:Number;
      
      private var var_2492:Boolean;
      
      private var var_2490:int;
      
      private var var_1830:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_520);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2491 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2490 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2492 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_807;
         if(this.var_807 == 1)
         {
            this.var_520 = param1;
            this.var_1746 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_807);
            this.var_520 = this.var_520 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2492 && param3 - this.var_1746 >= this.var_2491)
         {
            this.var_807 = 0;
            if(this.var_1830 < this.var_2490)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1830;
               this.var_1746 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
