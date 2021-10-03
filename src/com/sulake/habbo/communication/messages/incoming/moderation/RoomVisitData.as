package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2106:Boolean;
      
      private var _roomId:int;
      
      private var var_1063:String;
      
      private var var_3007:int;
      
      private var var_3006:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2106 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_1063 = param1.readString();
         this.var_3007 = param1.readInteger();
         this.var_3006 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2106;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_1063;
      }
      
      public function get enterHour() : int
      {
         return this.var_3007;
      }
      
      public function get enterMinute() : int
      {
         return this.var_3006;
      }
   }
}
