package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1231:int;
      
      private var var_1735:String;
      
      private var var_1983:int;
      
      private var var_2394:int;
      
      private var var_2395:int;
      
      private var var_1982:int;
      
      private var var_1981:Boolean;
      
      private var _category:String;
      
      private var var_2733:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1231 = param1.readInteger();
         this.var_1735 = param1.readString();
         this.var_1983 = Math.max(1,param1.readInteger());
         this.var_2394 = param1.readInteger();
         this.var_2395 = param1.readInteger();
         this.var_1982 = param1.readInteger();
         this.var_1981 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2733 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1735;
      }
      
      public function get level() : int
      {
         return this.var_1231;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1983;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2394;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2395;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1982;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1981;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2733;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1231 > 1 || this.var_1981;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1982 = this.var_1983;
      }
   }
}
