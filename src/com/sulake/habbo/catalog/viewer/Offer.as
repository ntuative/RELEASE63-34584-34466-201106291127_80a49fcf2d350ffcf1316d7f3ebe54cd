package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1761:String = "pricing_model_unknown";
      
      public static const const_414:String = "pricing_model_single";
      
      public static const const_437:String = "pricing_model_multi";
      
      public static const const_492:String = "pricing_model_bundle";
      
      public static const const_1763:String = "price_type_none";
      
      public static const const_867:String = "price_type_credits";
      
      public static const const_1277:String = "price_type_activitypoints";
      
      public static const const_1297:String = "price_type_credits_and_activitypoints";
       
      
      private var var_772:String;
      
      private var var_1186:String;
      
      private var var_1193:int;
      
      private var var_1775:String;
      
      private var var_1185:int;
      
      private var var_1184:int;
      
      private var var_1774:int;
      
      private var var_377:ICatalogPage;
      
      private var var_622:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2048:int = 0;
      
      private var var_2354:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1193 = param1;
         this.var_1775 = param2;
         this.var_1185 = param3;
         this.var_1184 = param4;
         this.var_1774 = param5;
         this.var_377 = param8;
         this.var_2048 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2048;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_377;
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
      
      public function get activityPointType() : int
      {
         return this.var_1774;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_622;
      }
      
      public function get pricingModel() : String
      {
         return this.var_772;
      }
      
      public function get priceType() : String
      {
         return this.var_1186;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2354;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2354 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1193 = 0;
         this.var_1775 = "";
         this.var_1185 = 0;
         this.var_1184 = 0;
         this.var_1774 = 0;
         this.var_377 = null;
         if(this.var_622 != null)
         {
            this.var_622.dispose();
            this.var_622 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_772)
         {
            case const_414:
               this.var_622 = new SingleProductContainer(this,param1);
               break;
            case const_437:
               this.var_622 = new MultiProductContainer(this,param1);
               break;
            case const_492:
               this.var_622 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_772);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_772 = const_414;
            }
            else
            {
               this.var_772 = const_437;
            }
         }
         else if(param1.length > 1)
         {
            this.var_772 = const_492;
         }
         else
         {
            this.var_772 = const_1761;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1185 > 0 && this.var_1184 > 0)
         {
            this.var_1186 = const_1297;
         }
         else if(this.var_1185 > 0)
         {
            this.var_1186 = const_867;
         }
         else if(this.var_1184 > 0)
         {
            this.var_1186 = const_1277;
         }
         else
         {
            this.var_1186 = const_1763;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_377.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_622.products)
         {
            _loc4_ = this.var_377.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
