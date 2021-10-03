package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_108:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_154:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_769:int = 2;
      
      public static const const_887:int = 3;
      
      public static const const_1857:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_2007:String = "";
      
      private var var_2316:int;
      
      private var var_2318:int = 0;
      
      private var var_2317:int = 0;
      
      private var _figure:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_252:Array;
      
      private var var_1436:int = 0;
      
      private var var_2470:String = "";
      
      private var var_2469:int = 0;
      
      private var var_2471:int = 0;
      
      private var var_2137:Boolean = false;
      
      private var var_1964:String = "";
      
      private var var_2261:Boolean = false;
      
      private var var_2716:Boolean = false;
      
      private var var_2718:Boolean = true;
      
      private var var_1318:int = 0;
      
      private var var_2720:Boolean = false;
      
      private var var_2722:Boolean = false;
      
      private var var_2719:Boolean = false;
      
      private var var_2715:Boolean = false;
      
      private var var_2717:Boolean = false;
      
      private var var_2721:Boolean = false;
      
      private var var_2714:int = 0;
      
      private var var_2135:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_252 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2007 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2007;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2316 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2316;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2318 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2318;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2317;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_252 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_252;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1436 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1436;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2470 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2470;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2716 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2716;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1318 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1318;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2720 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2720;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2722 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2722;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2719 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2719;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2715 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2715;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2717 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2717;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2721 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2721;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2714 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2714;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2718 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2718;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2135 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2135;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2469 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2469;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2471 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2471;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2137 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2137;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1964 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1964;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2261 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2261;
      }
   }
}
