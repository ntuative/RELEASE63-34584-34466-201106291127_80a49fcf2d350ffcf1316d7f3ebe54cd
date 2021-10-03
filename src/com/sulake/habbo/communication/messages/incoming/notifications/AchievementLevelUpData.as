package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1231:int;
      
      private var var_1960:int;
      
      private var var_2394:int;
      
      private var var_2395:int;
      
      private var var_2374:int;
      
      private var var_1735:int;
      
      private var var_2393:String = "";
      
      private var var_2396:String = "";
      
      private var var_2397:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1231 = param1.readInteger();
         this.var_1735 = param1.readInteger();
         this.var_2393 = param1.readString();
         this.var_1960 = param1.readInteger();
         this.var_2394 = param1.readInteger();
         this.var_2395 = param1.readInteger();
         this.var_2374 = param1.readInteger();
         this.var_2397 = param1.readInteger();
         this.var_2396 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1231;
      }
      
      public function get points() : int
      {
         return this.var_1960;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2394;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2395;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2374;
      }
      
      public function get badgeId() : int
      {
         return this.var_1735;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2393;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2396;
      }
      
      public function get achievementID() : int
      {
         return this.var_2397;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
