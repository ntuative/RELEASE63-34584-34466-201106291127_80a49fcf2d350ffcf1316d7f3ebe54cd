package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_776:String = "";
      
      public static const const_452:int = 0;
      
      public static const const_571:int = 255;
      
      public static const const_956:Boolean = false;
      
      public static const const_617:int = 0;
      
      public static const const_583:int = 0;
      
      public static const const_443:int = 0;
      
      public static const const_1322:int = 1;
      
      public static const const_1402:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2312:String = "";
      
      private var var_1936:int = 0;
      
      private var var_2277:int = 255;
      
      private var var_2501:Boolean = false;
      
      private var var_2503:int = 0;
      
      private var var_2500:int = 0;
      
      private var var_2502:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2312 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2312;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1936 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1936;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2277 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2277;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2501 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2501;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2503 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2503;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2500 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2500;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2502 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2502;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
