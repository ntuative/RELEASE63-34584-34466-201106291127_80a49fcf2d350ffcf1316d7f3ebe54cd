package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_534:String = "RWUAM_WHISPER_USER";
      
      public static const const_665:String = "RWUAM_IGNORE_USER";
      
      public static const const_644:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_433:String = "RWUAM_KICK_USER";
      
      public static const const_590:String = "RWUAM_BAN_USER";
      
      public static const const_670:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_664:String = "RWUAM_RESPECT_USER";
      
      public static const const_624:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_523:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_526:String = "RWUAM_START_TRADING";
      
      public static const const_973:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_635:String = "RWUAM_KICK_BOT";
      
      public static const const_537:String = "RWUAM_REPORT";
      
      public static const const_647:String = "RWUAM_PICKUP_PET";
      
      public static const const_1926:String = "RWUAM_TRAIN_PET";
      
      public static const const_608:String = " RWUAM_RESPECT_PET";
      
      public static const const_275:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_656:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
