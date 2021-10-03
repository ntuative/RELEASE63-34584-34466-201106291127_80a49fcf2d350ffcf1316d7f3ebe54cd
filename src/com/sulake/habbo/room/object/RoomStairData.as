package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2797:int;
      
      private var var_2015:Boolean;
      
      private var var_2016:Boolean;
      
      private var var_46:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_46 = param4;
         this.var_2797 = param1;
         this.var_2015 = param2;
         this.var_2016 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2797;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_2015;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_2016;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_2015 || this.var_2016;
      }
      
      public function get border() : Boolean
      {
         return this.var_46;
      }
   }
}
