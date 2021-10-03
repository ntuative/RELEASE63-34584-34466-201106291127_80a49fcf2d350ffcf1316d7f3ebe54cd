package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.EventStreamData;
   
   public class EventStreamMessageParser implements IMessageParser
   {
       
      
      private var _events:Vector.<EventStreamData>;
      
      public function EventStreamMessageParser()
      {
         super();
      }
      
      public function get events() : Vector.<EventStreamData>
      {
         return this._events;
      }
      
      public function flush() : Boolean
      {
         this._events = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = param1.readInteger();
         this._events = new Vector.<EventStreamData>();
         while(_loc2_-- > 0)
         {
            this._events.push(new EventStreamData(param1.readInteger(),param1.readInteger(),param1.readString(),param1.readString(),param1.readString(),param1.readInteger(),param1.readInteger(),param1));
         }
         return true;
      }
   }
}
