package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2082:int = 0;
      
      private var var_2083:int = 0;
      
      private var var_2487:int = 0;
      
      private var var_2489:Boolean = false;
      
      private var var_2486:Boolean = false;
      
      private var var_2488:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2082 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2083 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2487 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2489 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2486 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2488 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2082;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2083;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2487;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2489;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2486;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2488;
      }
   }
}
