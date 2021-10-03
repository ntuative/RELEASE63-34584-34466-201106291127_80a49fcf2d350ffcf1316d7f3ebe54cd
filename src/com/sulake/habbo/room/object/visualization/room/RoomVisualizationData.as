package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_571:WallRasterizer;
      
      private var var_572:FloorRasterizer;
      
      private var var_875:WallAdRasterizer;
      
      private var var_573:LandscapeRasterizer;
      
      private var var_874:PlaneMaskManager;
      
      private var var_761:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_571 = new WallRasterizer();
         this.var_572 = new FloorRasterizer();
         this.var_875 = new WallAdRasterizer();
         this.var_573 = new LandscapeRasterizer();
         this.var_874 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_761;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_572;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_571;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_875;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_573;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_874;
      }
      
      public function dispose() : void
      {
         if(this.var_571 != null)
         {
            this.var_571.dispose();
            this.var_571 = null;
         }
         if(this.var_572 != null)
         {
            this.var_572.dispose();
            this.var_572 = null;
         }
         if(this.var_875 != null)
         {
            this.var_875.dispose();
            this.var_875 = null;
         }
         if(this.var_573 != null)
         {
            this.var_573.dispose();
            this.var_573 = null;
         }
         if(this.var_874 != null)
         {
            this.var_874.dispose();
            this.var_874 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_571 != null)
         {
            this.var_571.clearCache();
         }
         if(this.var_572 != null)
         {
            this.var_572.clearCache();
         }
         if(this.var_573 != null)
         {
            this.var_573.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_571.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_572.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_875.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_573.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_874.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_761)
         {
            return;
         }
         this.var_571.initializeAssetCollection(param1);
         this.var_572.initializeAssetCollection(param1);
         this.var_875.initializeAssetCollection(param1);
         this.var_573.initializeAssetCollection(param1);
         this.var_874.initializeAssetCollection(param1);
         this.var_761 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
