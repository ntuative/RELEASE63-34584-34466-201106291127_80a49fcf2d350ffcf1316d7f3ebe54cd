package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_580:String = "RSVFS_STATUS";
      
      public static const const_575:String = "RSVFS_RECEIVED";
       
      
      private var var_194:String;
      
      private var var_237:int;
      
      private var var_429:int = -1;
      
      private var _shareId:String;
      
      private var var_2392:String;
      
      private var var_2391:Boolean;
      
      private var var_1443:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_429 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get status() : int
      {
         return this.var_429;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2392;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2391;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1443;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_237 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_429 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2392 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2391 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1443 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_194;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_194 = param1;
      }
   }
}
