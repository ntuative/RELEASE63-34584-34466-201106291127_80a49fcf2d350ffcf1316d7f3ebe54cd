package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1732:String;
      
      private var var_2445:int;
      
      private var _password:String;
      
      private var var_1544:int;
      
      private var var_2737:int;
      
      private var var_935:Array;
      
      private var var_2741:Array;
      
      private var var_2738:Boolean;
      
      private var var_2739:Boolean;
      
      private var var_2744:Boolean;
      
      private var var_2740:Boolean;
      
      private var var_2742:int;
      
      private var var_2743:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2738;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2738 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2739;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2739 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2744;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2744 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2740;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2740 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2742;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2742 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2743;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2743 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1732;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1732 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2445;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2445 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1544;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1544 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2737;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2737 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_935 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2741;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2741 = param1;
      }
   }
}
