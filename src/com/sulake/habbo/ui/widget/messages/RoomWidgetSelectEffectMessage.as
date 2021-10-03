package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_1386:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_1240:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_1347:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_886:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_886 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_886;
      }
   }
}
