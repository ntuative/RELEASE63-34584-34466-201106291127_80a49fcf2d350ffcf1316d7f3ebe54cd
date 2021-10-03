package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2704:String;
      
      private var var_2706:int;
      
      private var var_2524:int;
      
      private var var_2707:String;
      
      private var var_2705:int;
      
      private var var_1755:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2704 = param1.readString();
         this.var_2706 = param1.readInteger();
         this.var_2524 = param1.readInteger();
         this.var_2707 = param1.readString();
         this.var_2705 = param1.readInteger();
         this.var_1755 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2704;
      }
      
      public function get unitPort() : int
      {
         return this.var_2706;
      }
      
      public function get worldId() : int
      {
         return this.var_2524;
      }
      
      public function get castLibs() : String
      {
         return this.var_2707;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2705;
      }
      
      public function get nodeId() : int
      {
         return this.var_1755;
      }
   }
}
