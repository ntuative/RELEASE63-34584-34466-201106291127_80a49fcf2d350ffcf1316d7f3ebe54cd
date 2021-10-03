package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_183:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_500:int = 0;
      
      private var var_523:int = 0;
      
      private var var_625:int = 0;
      
      private var var_208:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_208 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_208)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_208)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_208)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_183;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_208)
         {
            this.var_183 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_182;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_208)
         {
            this.var_182 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_500;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_208)
         {
            this.var_500 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_523;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_208)
         {
            this.var_523 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_625;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_208)
         {
            this.var_625 = param1;
         }
      }
   }
}
