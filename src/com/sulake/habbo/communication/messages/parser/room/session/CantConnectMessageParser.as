package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1964:int = 1;
      
      public static const const_2205:int = 2;
      
      public static const const_1825:int = 3;
      
      public static const const_1864:int = 4;
       
      
      private var var_1590:int = 0;
      
      private var var_1591:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1590 = 0;
         this.var_1591 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1590 = param1.readInteger();
         if(this.var_1590 == 3)
         {
            this.var_1591 = param1.readString();
         }
         else
         {
            this.var_1591 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1590;
      }
      
      public function get parameter() : String
      {
         return this.var_1591;
      }
   }
}
