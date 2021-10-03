package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1770:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1575:String;
      
      private var var_2199:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1575 = param2;
         this.var_2199 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1575;
      }
      
      public function get classId() : int
      {
         return this.var_2199;
      }
   }
}
