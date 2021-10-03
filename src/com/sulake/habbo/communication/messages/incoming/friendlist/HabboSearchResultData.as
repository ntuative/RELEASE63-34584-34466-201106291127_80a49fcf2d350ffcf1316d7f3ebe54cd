package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2337:int;
      
      private var var_1963:String;
      
      private var var_2334:String;
      
      private var var_2339:Boolean;
      
      private var var_2335:Boolean;
      
      private var var_2338:int;
      
      private var var_2336:String;
      
      private var var_2340:String;
      
      private var var_1964:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2337 = param1.readInteger();
         this.var_1963 = param1.readString();
         this.var_2334 = param1.readString();
         this.var_2339 = param1.readBoolean();
         this.var_2335 = param1.readBoolean();
         param1.readString();
         this.var_2338 = param1.readInteger();
         this.var_2336 = param1.readString();
         this.var_2340 = param1.readString();
         this.var_1964 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2337;
      }
      
      public function get avatarName() : String
      {
         return this.var_1963;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2334;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2339;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2335;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2338;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2336;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2340;
      }
      
      public function get realName() : String
      {
         return this.var_1964;
      }
   }
}
