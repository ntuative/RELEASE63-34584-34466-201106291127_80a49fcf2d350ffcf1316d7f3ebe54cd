package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1193:int;
      
      private var var_1729:String;
      
      private var var_1728:int;
      
      private var _upgrade:Boolean;
      
      private var var_2285:Boolean;
      
      private var var_2281:int;
      
      private var var_2286:int;
      
      private var var_2280:int;
      
      private var var_2283:int;
      
      private var var_2282:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1193 = param1.readInteger();
         this.var_1729 = param1.readString();
         this.var_1728 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2285 = param1.readBoolean();
         this.var_2281 = param1.readInteger();
         this.var_2286 = param1.readInteger();
         this.var_2280 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         this.var_2282 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1193;
      }
      
      public function get productCode() : String
      {
         return this.var_1729;
      }
      
      public function get price() : int
      {
         return this.var_1728;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2285;
      }
      
      public function get periods() : int
      {
         return this.var_2281;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2286;
      }
      
      public function get year() : int
      {
         return this.var_2280;
      }
      
      public function get month() : int
      {
         return this.var_2283;
      }
      
      public function get day() : int
      {
         return this.var_2282;
      }
   }
}
