package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2243:int = 1;
      
      public static const const_2125:int = 2;
      
      public static const const_2217:int = 3;
      
      public static const const_2308:int = 4;
      
      public static const const_1789:int = 5;
      
      public static const const_2283:int = 6;
      
      public static const const_1841:int = 7;
      
      public static const const_1937:int = 8;
      
      public static const const_2287:int = 9;
      
      public static const const_1901:int = 10;
      
      public static const const_1885:int = 11;
      
      public static const const_2026:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1818:int;
      
      private var var_723:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1818 = param1.readInteger();
         this.var_723 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1818;
      }
      
      public function get info() : String
      {
         return this.var_723;
      }
   }
}
