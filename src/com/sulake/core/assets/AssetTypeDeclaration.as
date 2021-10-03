package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2831:String;
      
      private var var_2830:Class;
      
      private var var_2832:Class;
      
      private var var_2051:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2831 = param1;
         this.var_2830 = param2;
         this.var_2832 = param3;
         if(rest == null)
         {
            this.var_2051 = new Array();
         }
         else
         {
            this.var_2051 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2831;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2830;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2832;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2051;
      }
   }
}
