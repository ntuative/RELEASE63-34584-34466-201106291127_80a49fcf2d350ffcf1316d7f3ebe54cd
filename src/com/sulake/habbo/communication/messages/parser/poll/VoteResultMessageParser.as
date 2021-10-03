package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1310:String;
      
      private var var_1508:Array;
      
      private var var_1181:Array;
      
      private var var_2129:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1310;
      }
      
      public function get choices() : Array
      {
         return this.var_1508.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1181.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2129;
      }
      
      public function flush() : Boolean
      {
         this.var_1310 = "";
         this.var_1508 = [];
         this.var_1181 = [];
         this.var_2129 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1310 = param1.readString();
         this.var_1508 = [];
         this.var_1181 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1508.push(param1.readString());
            this.var_1181.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2129 = param1.readInteger();
         return true;
      }
   }
}
