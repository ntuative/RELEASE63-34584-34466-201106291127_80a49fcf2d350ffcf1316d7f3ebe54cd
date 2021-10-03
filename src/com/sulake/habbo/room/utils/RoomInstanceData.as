package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_883:TileHeightMap = null;
      
      private var var_1323:LegacyWallGeometry = null;
      
      private var var_1324:RoomCamera = null;
      
      private var var_884:SelectedRoomObjectData = null;
      
      private var var_882:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_579:Map;
      
      private var var_580:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_579 = new Map();
         this.var_580 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1323 = new LegacyWallGeometry();
         this.var_1324 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_883;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_883 != null)
         {
            this.var_883.dispose();
         }
         this.var_883 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1323;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1324;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_884;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_884 != null)
         {
            this.var_884.dispose();
         }
         this.var_884 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_882;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_882 != null)
         {
            this.var_882.dispose();
         }
         this.var_882 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_883 != null)
         {
            this.var_883.dispose();
            this.var_883 = null;
         }
         if(this.var_1323 != null)
         {
            this.var_1323.dispose();
            this.var_1323 = null;
         }
         if(this.var_1324 != null)
         {
            this.var_1324.dispose();
            this.var_1324 = null;
         }
         if(this.var_884 != null)
         {
            this.var_884.dispose();
            this.var_884 = null;
         }
         if(this.var_882 != null)
         {
            this.var_882.dispose();
            this.var_882 = null;
         }
         if(this.var_579 != null)
         {
            this.var_579.dispose();
            this.var_579 = null;
         }
         if(this.var_580 != null)
         {
            this.var_580.dispose();
            this.var_580 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_579.remove(param1.id);
            this.var_579.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_579.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_579.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_579.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_580.remove(param1.id);
            this.var_580.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_580.length > 0)
         {
            return this.getWallItemDataWithId(this.var_580.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_580.remove(param1);
      }
   }
}
