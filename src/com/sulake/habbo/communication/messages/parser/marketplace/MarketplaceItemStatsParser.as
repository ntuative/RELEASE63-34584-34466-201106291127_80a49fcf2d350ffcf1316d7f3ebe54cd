package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2547:int;
      
      private var var_2682:int;
      
      private var var_2683:int;
      
      private var _dayOffsets:Array;
      
      private var var_2039:Array;
      
      private var var_2040:Array;
      
      private var var_2684:int;
      
      private var var_2685:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2547;
      }
      
      public function get offerCount() : int
      {
         return this.var_2682;
      }
      
      public function get historyLength() : int
      {
         return this.var_2683;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2039;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2040;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2684;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2685;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2547 = param1.readInteger();
         this.var_2682 = param1.readInteger();
         this.var_2683 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2039 = [];
         this.var_2040 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2039.push(param1.readInteger());
            this.var_2040.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2685 = param1.readInteger();
         this.var_2684 = param1.readInteger();
         return true;
      }
   }
}
