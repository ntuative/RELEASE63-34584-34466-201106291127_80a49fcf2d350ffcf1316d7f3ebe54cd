package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2128:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1364:int = 3;
       
      
      private var var_1000:String;
      
      private var var_2884:int;
      
      private var var_2885:int;
      
      private var var_2883:int;
      
      private var var_2888:int;
      
      private var var_2886:Boolean;
      
      private var var_2486:Boolean;
      
      private var var_2857:int;
      
      private var var_2856:int;
      
      private var var_2881:Boolean;
      
      private var var_2882:int;
      
      private var var_2887:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1000 = param1.readString();
         this.var_2884 = param1.readInteger();
         this.var_2885 = param1.readInteger();
         this.var_2883 = param1.readInteger();
         this.var_2888 = param1.readInteger();
         this.var_2886 = param1.readBoolean();
         this.var_2486 = param1.readBoolean();
         this.var_2857 = param1.readInteger();
         this.var_2856 = param1.readInteger();
         this.var_2881 = param1.readBoolean();
         this.var_2882 = param1.readInteger();
         this.var_2887 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1000;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2884;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2885;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2883;
      }
      
      public function get responseType() : int
      {
         return this.var_2888;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2886;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2486;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2857;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2856;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2881;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2882;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2887;
      }
   }
}
