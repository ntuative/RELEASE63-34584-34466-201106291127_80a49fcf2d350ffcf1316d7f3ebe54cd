package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1713:Number = 12;
       
      
      private var var_3000:int = -1;
      
      private var var_3001:int = -2;
      
      private var var_235:Vector3d = null;
      
      private var var_1394:Number = 0;
      
      private var var_1688:Number = 0;
      
      private var var_2190:Boolean = false;
      
      private var var_210:Vector3d = null;
      
      private var var_2189:Vector3d;
      
      private var var_2996:Boolean = false;
      
      private var var_2998:Boolean = false;
      
      private var var_3002:Boolean = false;
      
      private var var_3005:Boolean = false;
      
      private var var_3004:int = 0;
      
      private var var_3003:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2999:int = 0;
      
      private var var_2997:int = 0;
      
      private var var_1910:int = -1;
      
      private var var_2188:int = 0;
      
      private var var_2191:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2189 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_210;
      }
      
      public function get targetId() : int
      {
         return this.var_3000;
      }
      
      public function get targetCategory() : int
      {
         return this.var_3001;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2189;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2996;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2998;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_3002;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_3005;
      }
      
      public function get screenWd() : int
      {
         return this.var_3004;
      }
      
      public function get screenHt() : int
      {
         return this.var_3003;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2999;
      }
      
      public function get roomHt() : int
      {
         return this.var_2997;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1910;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_235 != null && this.var_210 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_3000 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2189.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_3001 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2996 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2998 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_3002 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_3005 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_3004 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_3003 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2191 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2999 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2997 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1910 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_235 == null)
         {
            this.var_235 = new Vector3d();
         }
         if(this.var_235.x != param1.x || this.var_235.y != param1.y || this.var_235.z != param1.z)
         {
            this.var_235.assign(param1);
            this.var_2188 = 0;
            _loc2_ = Vector3d.dif(this.var_235,this.var_210);
            this.var_1394 = _loc2_.length;
            this.var_2190 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_235 = null;
         this.var_210 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_210 != null)
         {
            return;
         }
         this.var_210 = new Vector3d();
         this.var_210.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_210 == null)
         {
            this.var_210 = new Vector3d();
         }
         this.var_210.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_235 != null && this.var_210 != null)
         {
            ++this.var_2188;
            if(this.var_2191)
            {
               this.var_2191 = false;
               this.var_210 = this.var_235;
               this.var_235 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_235,this.var_210);
            if(_loc3_.length > this.var_1394)
            {
               this.var_1394 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_210 = this.var_235;
               this.var_235 = null;
               this.var_1688 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1394);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1394 / const_1713;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2190)
               {
                  if(_loc7_ < this.var_1688)
                  {
                     _loc7_ = this.var_1688;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2190 = false;
                  }
               }
               this.var_1688 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_210 = Vector3d.sum(this.var_210,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1910 = -1;
      }
   }
}
