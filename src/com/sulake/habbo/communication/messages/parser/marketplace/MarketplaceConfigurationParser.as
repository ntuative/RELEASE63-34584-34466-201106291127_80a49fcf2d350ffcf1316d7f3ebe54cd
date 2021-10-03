package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1537:Boolean;
      
      private var var_2429:int;
      
      private var var_1809:int;
      
      private var var_1808:int;
      
      private var var_2431:int;
      
      private var var_2432:int;
      
      private var var_2430:int;
      
      private var var_2382:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1537;
      }
      
      public function get commission() : int
      {
         return this.var_2429;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1809;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1808;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2432;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2431;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2430;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2382;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1537 = param1.readBoolean();
         this.var_2429 = param1.readInteger();
         this.var_1809 = param1.readInteger();
         this.var_1808 = param1.readInteger();
         this.var_2432 = param1.readInteger();
         this.var_2431 = param1.readInteger();
         this.var_2430 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         return true;
      }
   }
}
