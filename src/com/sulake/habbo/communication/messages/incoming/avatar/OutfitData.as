package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1930:int;
      
      private var var_2342:String;
      
      private var var_1031:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1930 = param1.readInteger();
         this.var_2342 = param1.readString();
         this.var_1031 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1930;
      }
      
      public function get figureString() : String
      {
         return this.var_2342;
      }
      
      public function get gender() : String
      {
         return this.var_1031;
      }
   }
}
