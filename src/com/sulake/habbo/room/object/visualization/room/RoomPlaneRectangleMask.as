package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2688:Number = 0.0;
      
      private var var_2689:Number = 0.0;
      
      private var var_2777:Number = 0.0;
      
      private var var_2776:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2688 = param1;
         this.var_2689 = param2;
         this.var_2777 = param3;
         this.var_2776 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2688;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2689;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2777;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2776;
      }
   }
}
