package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_62:String = "i";
      
      public static const const_69:String = "s";
      
      public static const const_186:String = "e";
       
      
      private var var_1599:String;
      
      private var var_2345:int;
      
      private var var_1068:String;
      
      private var var_1598:int;
      
      private var var_2042:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1599 = param1.readString();
         this.var_2345 = param1.readInteger();
         this.var_1068 = param1.readString();
         this.var_1598 = param1.readInteger();
         this.var_2042 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1599;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2345;
      }
      
      public function get extraParam() : String
      {
         return this.var_1068;
      }
      
      public function get productCount() : int
      {
         return this.var_1598;
      }
      
      public function get expiration() : int
      {
         return this.var_2042;
      }
   }
}
