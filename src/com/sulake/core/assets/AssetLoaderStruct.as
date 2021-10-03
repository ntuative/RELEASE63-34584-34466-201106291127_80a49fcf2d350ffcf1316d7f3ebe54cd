package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_990:IAssetLoader;
      
      private var var_2276:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2276 = param1;
         this.var_990 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2276;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_990;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_990 != null)
            {
               if(!this.var_990.disposed)
               {
                  this.var_990.dispose();
                  this.var_990 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
