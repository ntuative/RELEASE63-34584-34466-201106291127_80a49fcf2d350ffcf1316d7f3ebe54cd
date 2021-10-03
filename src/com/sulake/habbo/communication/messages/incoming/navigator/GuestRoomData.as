package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_373:int;
      
      private var var_905:Boolean;
      
      private var var_1063:String;
      
      private var _ownerName:String;
      
      private var var_2445:int;
      
      private var var_2591:int;
      
      private var var_2920:int;
      
      private var var_1732:String;
      
      private var var_2921:int;
      
      private var var_2446:Boolean;
      
      private var var_815:int;
      
      private var var_1544:int;
      
      private var var_2919:String;
      
      private var var_935:Array;
      
      private var var_2918:RoomThumbnailData;
      
      private var var_2738:Boolean;
      
      private var var_2922:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_935 = new Array();
         super();
         this.var_373 = param1.readInteger();
         this.var_905 = param1.readBoolean();
         this.var_1063 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2445 = param1.readInteger();
         this.var_2591 = param1.readInteger();
         this.var_2920 = param1.readInteger();
         this.var_1732 = param1.readString();
         this.var_2921 = param1.readInteger();
         this.var_2446 = param1.readBoolean();
         this.var_815 = param1.readInteger();
         this.var_1544 = param1.readInteger();
         this.var_2919 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_935.push(_loc4_);
            _loc3_++;
         }
         this.var_2918 = new RoomThumbnailData(param1);
         this.var_2738 = param1.readBoolean();
         this.var_2922 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_935 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get event() : Boolean
      {
         return this.var_905;
      }
      
      public function get roomName() : String
      {
         return this.var_1063;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2445;
      }
      
      public function get userCount() : int
      {
         return this.var_2591;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2920;
      }
      
      public function get description() : String
      {
         return this.var_1732;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2921;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2446;
      }
      
      public function get score() : int
      {
         return this.var_815;
      }
      
      public function get categoryId() : int
      {
         return this.var_1544;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2919;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2918;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2738;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2922;
      }
   }
}
