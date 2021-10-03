package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2979:Boolean = false;
      
      private var var_2978:int = 0;
      
      private var var_2980:int = 0;
      
      private var var_2413:int = 0;
      
      private var var_2411:int = 0;
      
      private var var_183:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_500:String = "";
      
      private var _type:int = 0;
      
      private var var_3116:String = "";
      
      private var var_1626:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_208:Boolean = false;
      
      private var var_2818:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2979 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_208 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2979;
      }
      
      public function get wallX() : Number
      {
         return this.var_2978;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_208)
         {
            this.var_2978 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2980;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_208)
         {
            this.var_2980 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2413;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_208)
         {
            this.var_2413 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2411;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_208)
         {
            this.var_2411 = param1;
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
      
      public function get dir() : String
      {
         return this.var_500;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_208)
         {
            this.var_500 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_208)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_208)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_208)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2818;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_208)
         {
            this.var_2818 = param1;
         }
      }
   }
}
