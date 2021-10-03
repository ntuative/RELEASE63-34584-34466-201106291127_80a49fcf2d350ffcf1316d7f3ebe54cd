package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1262:int;
      
      private var var_2729:String;
      
      private var var_2728:int;
      
      private var var_2342:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1262 = param1.readInteger();
         this.var_2729 = param1.readString();
         this.var_2342 = param1.readString();
         this.var_2728 = this.var_1262;
      }
      
      public function get requestId() : int
      {
         return this.var_1262;
      }
      
      public function get requesterName() : String
      {
         return this.var_2729;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2728;
      }
      
      public function get figureString() : String
      {
         return this.var_2342;
      }
   }
}
