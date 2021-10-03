package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1537:Boolean = false;
      
      private var var_1728:int;
      
      private var var_1790:Array;
      
      private var var_780:Array;
      
      private var var_781:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1537 = _loc2_.isWrappingEnabled;
         this.var_1728 = _loc2_.wrappingPrice;
         this.var_1790 = _loc2_.stuffTypes;
         this.var_780 = _loc2_.boxTypes;
         this.var_781 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1537;
      }
      
      public function get price() : int
      {
         return this.var_1728;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1790;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_780;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_781;
      }
   }
}
