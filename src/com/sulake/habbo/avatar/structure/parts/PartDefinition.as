package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2757:String;
      
      private var var_1993:String;
      
      private var var_2758:String;
      
      private var var_1994:Boolean;
      
      private var var_1992:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2757 = String(param1["set-type"]);
         this.var_1993 = String(param1["flipped-set-type"]);
         this.var_2758 = String(param1["remove-set-type"]);
         this.var_1994 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1992 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1992;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1992 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2757;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1993;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2758;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1994;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1994 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1993 = param1;
      }
   }
}
