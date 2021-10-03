package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1432:IHabboTracking;
      
      private var var_1950:Boolean = false;
      
      private var var_2778:int = 0;
      
      private var var_2010:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1432 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1432 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1950 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2778 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1950)
         {
            return;
         }
         ++this.var_2010;
         if(this.var_2010 <= this.var_2778)
         {
            this.var_1432.trackGoogle("toolbar",param1);
         }
      }
   }
}
