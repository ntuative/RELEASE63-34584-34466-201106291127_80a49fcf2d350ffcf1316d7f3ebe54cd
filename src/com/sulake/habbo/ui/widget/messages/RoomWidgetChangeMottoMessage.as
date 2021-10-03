package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_1019:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_2007:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_1019);
         this.var_2007 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2007;
      }
   }
}
