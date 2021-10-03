package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2558:int;
      
      private var var_1575:String;
      
      private var var_2572:int;
      
      private var var_2575:int;
      
      private var _category:int;
      
      private var var_2246:String;
      
      private var var_1626:int;
      
      private var var_2574:int;
      
      private var var_2573:int;
      
      private var var_2577:int;
      
      private var var_2571:int;
      
      private var var_2576:Boolean;
      
      private var var_3105:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2558 = param1;
         this.var_1575 = param2;
         this.var_2572 = param3;
         this.var_2575 = param4;
         this._category = param5;
         this.var_2246 = param6;
         this.var_1626 = param7;
         this.var_2574 = param8;
         this.var_2573 = param9;
         this.var_2577 = param10;
         this.var_2571 = param11;
         this.var_2576 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2558;
      }
      
      public function get itemType() : String
      {
         return this.var_1575;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2572;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2575;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2246;
      }
      
      public function get extra() : int
      {
         return this.var_1626;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2574;
      }
      
      public function get creationDay() : int
      {
         return this.var_2573;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2577;
      }
      
      public function get creationYear() : int
      {
         return this.var_2571;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2576;
      }
      
      public function get songID() : int
      {
         return this.var_1626;
      }
   }
}
