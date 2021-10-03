package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2112:int;
      
      private var _name:String;
      
      private var var_1231:int;
      
      private var var_2985:int;
      
      private var var_2465:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2982:int;
      
      private var var_2983:int;
      
      private var var_2984:int;
      
      private var var_2463:int;
      
      private var var_2464:int;
      
      private var _ownerName:String;
      
      private var var_587:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_2112;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1231;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2985;
      }
      
      public function get experience() : int
      {
         return this.var_2465;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2982;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2983;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2984;
      }
      
      public function get respect() : int
      {
         return this.var_2463;
      }
      
      public function get ownerId() : int
      {
         return this.var_2464;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_587;
      }
      
      public function flush() : Boolean
      {
         this.var_2112 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_2112 = param1.readInteger();
         this._name = param1.readString();
         this.var_1231 = param1.readInteger();
         this.var_2985 = param1.readInteger();
         this.var_2465 = param1.readInteger();
         this.var_2982 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2983 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2984 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2463 = param1.readInteger();
         this.var_2464 = param1.readInteger();
         this.var_587 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
