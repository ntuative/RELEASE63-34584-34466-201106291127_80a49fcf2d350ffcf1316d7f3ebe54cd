package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1773:int = 0;
      
      private var var_1772:int = 0;
      
      private var var_1774:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1773;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1772;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1774;
      }
      
      public function flush() : Boolean
      {
         this.var_1773 = 0;
         this.var_1772 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1773 = param1.readInteger();
         this.var_1772 = param1.readInteger();
         this.var_1774 = param1.readInteger();
         return true;
      }
   }
}
