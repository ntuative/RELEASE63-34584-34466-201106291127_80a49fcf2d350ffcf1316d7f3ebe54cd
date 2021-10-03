package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class SellablePetBreedData
   {
       
      
      private var _type:int;
      
      private var var_1840:int;
      
      private var var_2646:Boolean;
      
      private var var_2647:Boolean;
      
      public function SellablePetBreedData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1840 = param1.readInteger();
         this.var_2646 = param1.readBoolean();
         this.var_2647 = param1.readBoolean();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get breed() : int
      {
         return this.var_1840;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2646;
      }
      
      public function get rare() : Boolean
      {
         return this.var_2647;
      }
   }
}
