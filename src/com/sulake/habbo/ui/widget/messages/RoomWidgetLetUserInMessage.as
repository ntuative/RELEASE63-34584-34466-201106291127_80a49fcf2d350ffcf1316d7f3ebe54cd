package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetLetUserInMessage extends RoomWidgetMessage
   {
      
      public static const const_962:String = "RWLUIM_LET_USER_IN";
       
      
      private var _userName:String;
      
      private var var_2466:Boolean;
      
      public function RoomWidgetLetUserInMessage(param1:String, param2:Boolean)
      {
         super(const_962);
         this._userName = param1;
         this.var_2466 = param2;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get canEnter() : Boolean
      {
         return this.var_2466;
      }
   }
}
