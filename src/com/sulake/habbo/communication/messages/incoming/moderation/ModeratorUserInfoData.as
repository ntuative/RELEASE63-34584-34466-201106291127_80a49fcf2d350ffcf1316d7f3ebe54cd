package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2951:int;
      
      private var var_2949:int;
      
      private var var_845:Boolean;
      
      private var var_2947:int;
      
      private var var_2948:int;
      
      private var var_2946:int;
      
      private var var_2950:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2951 = param1.readInteger();
         this.var_2949 = param1.readInteger();
         this.var_845 = param1.readBoolean();
         this.var_2947 = param1.readInteger();
         this.var_2948 = param1.readInteger();
         this.var_2946 = param1.readInteger();
         this.var_2950 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2951;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2949;
      }
      
      public function get online() : Boolean
      {
         return this.var_845;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2947;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2948;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2946;
      }
      
      public function get banCount() : int
      {
         return this.var_2950;
      }
   }
}
