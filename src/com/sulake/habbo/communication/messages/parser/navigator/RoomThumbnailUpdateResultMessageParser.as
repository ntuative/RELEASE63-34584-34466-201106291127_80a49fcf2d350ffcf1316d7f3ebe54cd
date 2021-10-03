package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomThumbnailUpdateResultMessageParser implements IMessageParser
   {
       
      
      private var var_373:int;
      
      private var var_1866:int;
      
      public function RoomThumbnailUpdateResultMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_373 = param1.readInteger();
         this.var_1866 = param1.readInteger();
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get resultCode() : int
      {
         return this.var_1866;
      }
   }
}
