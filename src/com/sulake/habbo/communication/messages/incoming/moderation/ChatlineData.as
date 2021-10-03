package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2299:int;
      
      private var var_2300:int;
      
      private var var_2301:int;
      
      private var var_2302:String;
      
      private var var_1780:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2299 = param1.readInteger();
         this.var_2300 = param1.readInteger();
         this.var_2301 = param1.readInteger();
         this.var_2302 = param1.readString();
         this.var_1780 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2299;
      }
      
      public function get minute() : int
      {
         return this.var_2300;
      }
      
      public function get chatterId() : int
      {
         return this.var_2301;
      }
      
      public function get chatterName() : String
      {
         return this.var_2302;
      }
      
      public function get msg() : String
      {
         return this.var_1780;
      }
   }
}
