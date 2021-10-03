package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_914:String = "RWFRM_ACCEPT";
      
      public static const const_882:String = "RWFRM_DECLINE";
       
      
      private var var_1262:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this.var_1262 = param2;
      }
      
      public function get requestId() : int
      {
         return this.var_1262;
      }
   }
}
