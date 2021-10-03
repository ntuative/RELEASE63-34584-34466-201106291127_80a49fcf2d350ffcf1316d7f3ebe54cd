package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1755:int;
      
      private var var_2344:String;
      
      private var var_342:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1755 = param1.readInteger();
         this.var_2344 = param1.readString();
         this.var_342 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1755;
      }
      
      public function get nodeName() : String
      {
         return this.var_2344;
      }
      
      public function get visible() : Boolean
      {
         return this.var_342;
      }
   }
}
