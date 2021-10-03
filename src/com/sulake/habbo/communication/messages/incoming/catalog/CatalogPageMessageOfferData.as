package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1193:int;
      
      private var var_1775:String;
      
      private var var_1185:int;
      
      private var var_1184:int;
      
      private var var_1774:int;
      
      private var var_2048:int;
      
      private var var_1352:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1193 = param1.readInteger();
         this.var_1775 = param1.readString();
         this.var_1185 = param1.readInteger();
         this.var_1184 = param1.readInteger();
         this.var_1774 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1352 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1352.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2048 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1193;
      }
      
      public function get localizationId() : String
      {
         return this.var_1775;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1185;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1184;
      }
      
      public function get products() : Array
      {
         return this.var_1352;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1774;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2048;
      }
   }
}
