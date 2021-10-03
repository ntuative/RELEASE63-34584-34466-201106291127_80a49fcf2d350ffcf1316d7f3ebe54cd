package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_894:int = 1;
      
      public static const const_761:int = 2;
      
      public static const const_900:int = 3;
      
      public static const const_1291:int = 4;
      
      public static const const_749:int = 5;
      
      public static const const_1229:int = 6;
       
      
      private var _type:int;
      
      private var var_1390:int;
      
      private var var_2603:String;
      
      private var var_2645:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1390 = param2;
         this.var_2603 = param3;
         this.var_2645 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2603;
      }
      
      public function get time() : String
      {
         return this.var_2645;
      }
      
      public function get senderId() : int
      {
         return this.var_1390;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
