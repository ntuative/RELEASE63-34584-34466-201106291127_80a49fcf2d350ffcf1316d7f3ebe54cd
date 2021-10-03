package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1111:String;
      
      private var var_3023:String;
      
      private var var_1964:String;
      
      private var var_3022:int;
      
      private var var_3024:String;
      
      private var var_3025:int;
      
      private var var_3026:int;
      
      private var var_2767:int;
      
      private var var_1318:int;
      
      private var var_878:int;
      
      private var var_2822:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1111 = param1.readString();
         this.var_3023 = param1.readString();
         this.var_1964 = param1.readString();
         this.var_3022 = param1.readInteger();
         this.var_3024 = param1.readString();
         this.var_3025 = param1.readInteger();
         this.var_3026 = param1.readInteger();
         this.var_2767 = param1.readInteger();
         this.var_1318 = param1.readInteger();
         this.var_878 = param1.readInteger();
         this.var_2822 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1111;
      }
      
      public function get customData() : String
      {
         return this.var_3023;
      }
      
      public function get realName() : String
      {
         return this.var_1964;
      }
      
      public function get tickets() : int
      {
         return this.var_3022;
      }
      
      public function get poolFigure() : String
      {
         return this.var_3024;
      }
      
      public function get photoFilm() : int
      {
         return this.var_3025;
      }
      
      public function get directMail() : int
      {
         return this.var_3026;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2767;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1318;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_878;
      }
      
      public function get identityId() : int
      {
         return this.var_2822;
      }
   }
}
