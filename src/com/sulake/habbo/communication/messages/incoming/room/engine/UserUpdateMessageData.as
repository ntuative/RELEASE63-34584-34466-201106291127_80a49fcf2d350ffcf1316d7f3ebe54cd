package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_183:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_2698:Number = 0;
      
      private var var_2696:Number = 0;
      
      private var var_2699:Number = 0;
      
      private var var_2697:Number = 0;
      
      private var var_500:int = 0;
      
      private var var_2695:int = 0;
      
      private var var_360:Array;
      
      private var var_2700:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_360 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_183 = param3;
         this.var_182 = param4;
         this.var_2698 = param5;
         this.var_500 = param6;
         this.var_2695 = param7;
         this.var_2696 = param8;
         this.var_2699 = param9;
         this.var_2697 = param10;
         this.var_2700 = param11;
         this.var_360 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_183;
      }
      
      public function get z() : Number
      {
         return this.var_182;
      }
      
      public function get localZ() : Number
      {
         return this.var_2698;
      }
      
      public function get targetX() : Number
      {
         return this.var_2696;
      }
      
      public function get targetY() : Number
      {
         return this.var_2699;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2697;
      }
      
      public function get dir() : int
      {
         return this.var_500;
      }
      
      public function get dirHead() : int
      {
         return this.var_2695;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2700;
      }
      
      public function get actions() : Array
      {
         return this.var_360.slice();
      }
   }
}
