package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2579:int;
      
      private var var_1575:String;
      
      private var _objId:int;
      
      private var var_2199:int;
      
      private var _category:int;
      
      private var var_2246:String;
      
      private var var_2971:Boolean;
      
      private var var_2970:Boolean;
      
      private var var_2969:Boolean;
      
      private var var_2958:Boolean;
      
      private var var_2817:int;
      
      private var var_1626:int;
      
      private var var_1930:String = "";
      
      private var var_1945:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2579 = param1;
         this.var_1575 = param2;
         this._objId = param3;
         this.var_2199 = param4;
         this._category = param5;
         this.var_2246 = param6;
         this.var_2971 = param7;
         this.var_2970 = param8;
         this.var_2969 = param9;
         this.var_2958 = param10;
         this.var_2817 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1930 = param1;
         this.var_1626 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2579;
      }
      
      public function get itemType() : String
      {
         return this.var_1575;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2199;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2246;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2971;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2970;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2969;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2958;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2817;
      }
      
      public function get slotId() : String
      {
         return this.var_1930;
      }
      
      public function get songId() : int
      {
         return this.var_1945;
      }
      
      public function get extra() : int
      {
         return this.var_1626;
      }
   }
}
