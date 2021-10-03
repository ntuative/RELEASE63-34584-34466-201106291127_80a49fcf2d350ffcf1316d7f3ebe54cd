package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1178:int = 1;
      
      public static const const_878:int = 2;
      
      public static const const_782:int = 3;
      
      public static const const_1867:int = 4;
       
      
      private var _index:int;
      
      private var var_2649:String;
      
      private var var_2652:String;
      
      private var var_2651:Boolean;
      
      private var var_2650:String;
      
      private var var_1093:String;
      
      private var var_2648:int;
      
      private var var_2591:int;
      
      private var _type:int;
      
      private var var_2312:String;
      
      private var var_1036:GuestRoomData;
      
      private var var_1035:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2649 = param1.readString();
         this.var_2652 = param1.readString();
         this.var_2651 = param1.readInteger() == 1;
         this.var_2650 = param1.readString();
         this.var_1093 = param1.readString();
         this.var_2648 = param1.readInteger();
         this.var_2591 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1178)
         {
            this.var_2312 = param1.readString();
         }
         else if(this._type == const_782)
         {
            this.var_1035 = new PublicRoomData(param1);
         }
         else if(this._type == const_878)
         {
            this.var_1036 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1036 != null)
         {
            this.var_1036.dispose();
            this.var_1036 = null;
         }
         if(this.var_1035 != null)
         {
            this.var_1035.dispose();
            this.var_1035 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2649;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2652;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2651;
      }
      
      public function get picText() : String
      {
         return this.var_2650;
      }
      
      public function get picRef() : String
      {
         return this.var_1093;
      }
      
      public function get folderId() : int
      {
         return this.var_2648;
      }
      
      public function get tag() : String
      {
         return this.var_2312;
      }
      
      public function get userCount() : int
      {
         return this.var_2591;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1036;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1035;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1178)
         {
            return 0;
         }
         if(this.type == const_878)
         {
            return this.var_1036.maxUserCount;
         }
         if(this.type == const_782)
         {
            return this.var_1035.maxUsers;
         }
         return 0;
      }
   }
}
