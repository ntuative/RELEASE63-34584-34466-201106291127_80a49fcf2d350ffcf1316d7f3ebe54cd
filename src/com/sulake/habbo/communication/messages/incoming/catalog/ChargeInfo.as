package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2293:int;
      
      private var var_2560:int;
      
      private var var_1185:int;
      
      private var var_1184:int;
      
      private var var_1774:int;
      
      private var var_2559:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2293 = param1.readInteger();
         this.var_2560 = param1.readInteger();
         this.var_1185 = param1.readInteger();
         this.var_1184 = param1.readInteger();
         this.var_1774 = param1.readInteger();
         this.var_2559 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2293;
      }
      
      public function get charges() : int
      {
         return this.var_2560;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1185;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1184;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2559;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1774;
      }
   }
}
