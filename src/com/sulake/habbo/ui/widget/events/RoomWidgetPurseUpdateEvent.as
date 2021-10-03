package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetPurseUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_132:String = "RWPUE_CREDIT_BALANCE";
      
      public static const const_333:String = "RWPUE_PIXEL_BALANCE";
      
      public static const const_347:String = "RWPUE_SHELL_BALANCE";
       
      
      private var var_1943:int;
      
      public function RoomWidgetPurseUpdateEvent(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_1943 = param2;
      }
      
      public function get balance() : int
      {
         return this.var_1943;
      }
   }
}
