package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2094:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_218:MsgWithRequestId;
      
      private var var_669:RoomEventData;
      
      private var var_2660:Boolean;
      
      private var var_2656:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2337:int;
      
      private var var_289:GuestRoomData;
      
      private var var_1037:PublicRoomShortData;
      
      private var var_2653:int;
      
      private var var_2661:Boolean;
      
      private var var_2662:int;
      
      private var var_2657:Boolean;
      
      private var var_1934:int;
      
      private var var_2658:Boolean;
      
      private var var_1534:Array;
      
      private var var_1542:Array;
      
      private var var_2654:int;
      
      private var var_1541:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1256:Boolean;
      
      private var var_2659:int;
      
      private var var_2655:Boolean;
      
      private var var_2663:int = 0;
      
      private var var_1935:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1534 = new Array();
         this.var_1542 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_289 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_289 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1037 = null;
         this.var_289 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1037 = param1.publicSpace;
            this.var_669 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_669 != null)
         {
            this.var_669.dispose();
            this.var_669 = null;
         }
         if(this.var_1037 != null)
         {
            this.var_1037.dispose();
            this.var_1037 = null;
         }
         if(this.var_289 != null)
         {
            this.var_289.dispose();
            this.var_289 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_289 != null)
         {
            this.var_289.dispose();
         }
         this.var_289 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_669 != null)
         {
            this.var_669.dispose();
         }
         this.var_669 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_218 != null && this.var_218 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_218 != null && this.var_218 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_218 != null && this.var_218 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_218 = param1;
         this.var_1935 = param1.ad;
         this.var_1256 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_218 = param1;
         this.var_1256 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_218 = param1;
         this.var_1256 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_218 == null)
         {
            return;
         }
         this.var_218.dispose();
         this.var_218 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_1935 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_1935;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_218 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_218 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_218 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_669;
      }
      
      public function get avatarId() : int
      {
         return this.var_2337;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2660;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2656;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_289;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1037;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2661;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2662;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1934;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2657;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2659;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2653;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2658;
      }
      
      public function get adIndex() : int
      {
         return this.var_2663;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2655;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2337 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2662 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2661 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2660 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2656 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2657 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1934 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2659 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2653 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2658 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2663 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2655 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1534 = param1;
         this.var_1542 = new Array();
         for each(_loc2_ in this.var_1534)
         {
            if(_loc2_.visible)
            {
               this.var_1542.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1534;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1542;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2654 = param1.limit;
         this.var_1541 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1541 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_289.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_289 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_289.flatId;
         return this.var_1934 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1541 >= this.var_2654;
      }
      
      public function startLoading() : void
      {
         this.var_1256 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1256;
      }
   }
}
