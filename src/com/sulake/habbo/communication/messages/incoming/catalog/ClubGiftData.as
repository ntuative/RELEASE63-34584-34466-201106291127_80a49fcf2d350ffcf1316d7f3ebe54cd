package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1193:int;
      
      private var var_2908:Boolean;
      
      private var var_2622:Boolean;
      
      private var var_2909:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1193 = param1.readInteger();
         this.var_2908 = param1.readBoolean();
         this.var_2909 = param1.readInteger();
         this.var_2622 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1193;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2908;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2622;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2909;
      }
   }
}
