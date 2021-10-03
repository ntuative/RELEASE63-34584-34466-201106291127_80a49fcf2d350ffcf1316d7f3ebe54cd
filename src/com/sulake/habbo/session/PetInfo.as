package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_2112:int;
      
      private var var_1231:int;
      
      private var var_2461:int;
      
      private var var_2465:int;
      
      private var var_2459:int;
      
      private var _energy:int;
      
      private var var_2460:int;
      
      private var _nutrition:int;
      
      private var var_2462:int;
      
      private var var_2464:int;
      
      private var _ownerName:String;
      
      private var var_2463:int;
      
      private var var_587:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_2112;
      }
      
      public function get level() : int
      {
         return this.var_1231;
      }
      
      public function get levelMax() : int
      {
         return this.var_2461;
      }
      
      public function get experience() : int
      {
         return this.var_2465;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2459;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2460;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2462;
      }
      
      public function get ownerId() : int
      {
         return this.var_2464;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2463;
      }
      
      public function get age() : int
      {
         return this.var_587;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_2112 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1231 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2461 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2465 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2459 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2460 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2462 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2464 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2463 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_587 = param1;
      }
   }
}
