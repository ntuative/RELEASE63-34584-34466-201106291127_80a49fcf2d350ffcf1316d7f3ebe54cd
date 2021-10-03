package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1693:Boolean;
      
      private var var_1977:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1693;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1977;
      }
      
      public function flush() : Boolean
      {
         this.var_1693 = false;
         this.var_1977 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1693 = param1.readInteger() > 0;
         this.var_1977 = param1.readInteger();
         return true;
      }
   }
}
