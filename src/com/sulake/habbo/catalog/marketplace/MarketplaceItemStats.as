package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2547:int;
      
      private var var_2682:int;
      
      private var var_2683:int;
      
      private var _dayOffsets:Array;
      
      private var var_2039:Array;
      
      private var var_2040:Array;
      
      private var var_2684:int;
      
      private var var_2685:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2547 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2682 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2683 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2039 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2040 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2684 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2685 = param1;
      }
   }
}
