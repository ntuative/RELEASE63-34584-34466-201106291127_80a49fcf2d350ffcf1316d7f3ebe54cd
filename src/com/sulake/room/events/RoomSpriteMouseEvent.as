package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1886:String = "";
      
      private var var_1915:String = "";
      
      private var var_2409:String = "";
      
      private var var_2412:Number = 0;
      
      private var var_2406:Number = 0;
      
      private var var_2413:Number = 0;
      
      private var var_2411:Number = 0;
      
      private var var_2407:Boolean = false;
      
      private var var_2408:Boolean = false;
      
      private var var_2410:Boolean = false;
      
      private var var_2414:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1886 = param2;
         this.var_1915 = param3;
         this.var_2409 = param4;
         this.var_2412 = param5;
         this.var_2406 = param6;
         this.var_2413 = param7;
         this.var_2411 = param8;
         this.var_2407 = param9;
         this.var_2408 = param10;
         this.var_2410 = param11;
         this.var_2414 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1886;
      }
      
      public function get canvasId() : String
      {
         return this.var_1915;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2409;
      }
      
      public function get screenX() : Number
      {
         return this.var_2412;
      }
      
      public function get screenY() : Number
      {
         return this.var_2406;
      }
      
      public function get localX() : Number
      {
         return this.var_2413;
      }
      
      public function get localY() : Number
      {
         return this.var_2411;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2407;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2408;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2410;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2414;
      }
   }
}
