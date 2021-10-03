package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2117:int = 0;
      
      private var var_1621:Dictionary;
      
      private var var_2082:int = 0;
      
      private var var_2083:int = 0;
      
      private var var_2486:Boolean = false;
      
      private var var_2857:int = 0;
      
      private var var_2856:int = 0;
      
      private var var_2488:Boolean = false;
      
      public function Purse()
      {
         this.var_1621 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2117;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2117 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2082;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2082 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2083;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2083 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2082 > 0 || this.var_2083 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2486;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2488;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2488 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2486 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2857;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2857 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2856;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2856 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1621;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1621 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1621[param1];
      }
   }
}
