package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2276:String;
      
      private var var_2274:String;
      
      private var var_446:BitmapDataAsset;
      
      private var var_1517:Boolean;
      
      private var var_1518:Boolean;
      
      private var var_2275:Boolean;
      
      private var _offsetX:int;
      
      private var var_1208:int;
      
      private var var_215:int;
      
      private var _height:int;
      
      private var var_761:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2276 = param1;
         this.var_2274 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_446 = _loc9_;
            this.var_761 = false;
         }
         else
         {
            this.var_446 = null;
            this.var_761 = true;
         }
         this.var_1517 = param4;
         this.var_1518 = param5;
         this._offsetX = param6;
         this.var_1208 = param7;
         this.var_2275 = param8;
      }
      
      public function dispose() : void
      {
         this.var_446 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_761 && this.var_446 != null)
         {
            _loc1_ = this.var_446.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_215 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_761 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1518;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1517;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_215;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2276;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2274;
      }
      
      public function get asset() : IAsset
      {
         return this.var_446;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2275;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1517)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1518)
         {
            return this.var_1208;
         }
         return -(this.height + this.var_1208);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1208;
      }
   }
}
