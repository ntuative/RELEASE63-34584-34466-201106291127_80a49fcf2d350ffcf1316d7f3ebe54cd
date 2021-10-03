package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_373:int;
      
      private var var_2591:int;
      
      private var var_2590:Boolean;
      
      private var var_2464:int;
      
      private var _ownerName:String;
      
      private var var_132:RoomData;
      
      private var var_905:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_373 = param1.readInteger();
         this.var_2591 = param1.readInteger();
         this.var_2590 = param1.readBoolean();
         this.var_2464 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_132 = new RoomData(param1);
         this.var_905 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_132 != null)
         {
            this.var_132.dispose();
            this.var_132 = null;
         }
         if(this.var_905 != null)
         {
            this.var_905.dispose();
            this.var_905 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get userCount() : int
      {
         return this.var_2591;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2590;
      }
      
      public function get ownerId() : int
      {
         return this.var_2464;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_132;
      }
      
      public function get event() : RoomData
      {
         return this.var_905;
      }
   }
}
