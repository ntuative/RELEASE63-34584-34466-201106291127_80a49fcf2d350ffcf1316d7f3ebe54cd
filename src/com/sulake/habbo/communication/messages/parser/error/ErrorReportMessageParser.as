package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1818:int;
      
      private var var_1938:int;
      
      private var var_1937:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1938 = param1.readInteger();
         this.var_1818 = param1.readInteger();
         this.var_1937 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1818 = 0;
         this.var_1938 = 0;
         this.var_1937 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1818;
      }
      
      public function get messageId() : int
      {
         return this.var_1938;
      }
      
      public function get timestamp() : String
      {
         return this.var_1937;
      }
   }
}
