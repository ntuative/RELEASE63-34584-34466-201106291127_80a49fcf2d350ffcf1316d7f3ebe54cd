package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_203:IWindowContainer;
      
      private var var_3092:int;
      
      private var var_422:RoomEventViewCtrl;
      
      private var var_423:Timer;
      
      private var var_164:RoomSettingsCtrl;
      
      private var var_306:RoomThumbnailCtrl;
      
      private var var_1120:TagRenderer;
      
      private var var_420:IWindowContainer;
      
      private var var_421:IWindowContainer;
      
      private var var_728:IWindowContainer;
      
      private var var_2165:IWindowContainer;
      
      private var var_2163:IWindowContainer;
      
      private var var_1378:IWindowContainer;
      
      private var var_1063:ITextWindow;
      
      private var var_1119:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_911:ITextWindow;
      
      private var var_1382:ITextWindow;
      
      private var var_1121:ITextWindow;
      
      private var var_912:ITextWindow;
      
      private var var_1672:ITextWindow;
      
      private var var_307:IWindowContainer;
      
      private var var_913:IWindowContainer;
      
      private var var_1673:IWindowContainer;
      
      private var var_2166:ITextWindow;
      
      private var var_729:ITextWindow;
      
      private var var_2164:IWindow;
      
      private var var_1376:IContainerButtonWindow;
      
      private var var_1379:IContainerButtonWindow;
      
      private var var_1381:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1377:IContainerButtonWindow;
      
      private var var_1669:IButtonWindow;
      
      private var var_1674:IButtonWindow;
      
      private var var_1670:IButtonWindow;
      
      private var var_914:IWindowContainer;
      
      private var var_1380:ITextWindow;
      
      private var var_1118:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_910:IButtonWindow;
      
      private var var_1671:Boolean = false;
      
      private const const_929:int = 75;
      
      private const const_946:int = 3;
      
      private const const_978:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_422 = new RoomEventViewCtrl(this._navigator);
         this.var_164 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_306 = new RoomThumbnailCtrl(this._navigator);
         this.var_1120 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_164);
         this.var_423 = new Timer(6000,1);
         this.var_423.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_423)
         {
            this.var_423.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_423.reset();
            this.var_423 = null;
         }
         this._navigator = null;
         this.var_422 = null;
         this.var_164 = null;
         this.var_306 = null;
         if(this.var_1120)
         {
            this.var_1120.dispose();
            this.var_1120 = null;
         }
         this.var_203 = null;
         this.var_420 = null;
         this.var_421 = null;
         this.var_728 = null;
         this.var_2165 = null;
         this.var_2163 = null;
         this.var_1378 = null;
         this.var_1063 = null;
         this.var_1119 = null;
         this._ownerName = null;
         this.var_911 = null;
         this.var_1382 = null;
         this.var_1121 = null;
         this.var_912 = null;
         this.var_1672 = null;
         this.var_307 = null;
         this.var_913 = null;
         this.var_1673 = null;
         this.var_2166 = null;
         this.var_729 = null;
         this.var_2164 = null;
         this.var_1376 = null;
         this.var_1379 = null;
         this.var_1381 = null;
         this._remFavouriteButton = null;
         this.var_1377 = null;
         this.var_1669 = null;
         this.var_1674 = null;
         this.var_1670 = null;
         this.var_914 = null;
         this.var_1380 = null;
         this.var_1118 = null;
         this._buttons = null;
         this.var_910 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_423.reset();
         this.var_422.active = true;
         this.var_164.active = false;
         this.var_306.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_423.reset();
         this.var_164.load(param1);
         this.var_164.active = true;
         this.var_422.active = false;
         this.var_306.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_164.active = true;
         this.var_422.active = false;
         this.var_306.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_423.reset();
         this.var_164.active = false;
         this.var_422.active = false;
         this.var_306.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1671 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_423.reset();
         this.var_422.active = false;
         this.var_164.active = false;
         this.var_306.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_946;
         this._window.y = this.const_929;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_203,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_203.height = Util.getLowestPoint(this.var_203);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_978;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_420);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_164.refresh(this.var_420);
         this.var_306.refresh(this.var_420);
         Util.moveChildrenToColumn(this.var_420,["room_details","room_buttons"],0,2);
         this.var_420.height = Util.getLowestPoint(this.var_420);
         this.var_420.visible = true;
         Logger.log("XORP: " + this.var_421.visible + ", " + this.var_1378.visible + ", " + this.var_728.visible + ", " + this.var_728.rectangle + ", " + this.var_420.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_307);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_422.refresh(this.var_307);
         if(Util.hasVisibleChildren(this.var_307) && !(this.var_164.active || this.var_306.active))
         {
            Util.moveChildrenToColumn(this.var_307,["event_details","event_buttons"],0,2);
            this.var_307.height = Util.getLowestPoint(this.var_307);
            this.var_307.visible = true;
         }
         else
         {
            this.var_307.visible = false;
         }
         Logger.log("EVENT: " + this.var_307.visible + ", " + this.var_307.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_164.active && !this.var_306.active && !this.var_422.active)
         {
            this.var_914.visible = true;
            this.var_1118.text = this.getEmbedData();
         }
         else
         {
            this.var_914.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_164.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_910)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_910.visible = _loc1_;
            if(this.var_1671)
            {
               this.var_910.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_910.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_164.active || this.var_306.active)
         {
            return;
         }
         this.var_1063.text = param1.roomName;
         this.var_1063.height = this.var_1063.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_911.text = param1.description;
         this.var_1120.refreshTags(this.var_421,param1.tags);
         this.var_911.visible = false;
         if(param1.description != "")
         {
            this.var_911.height = this.var_911.textHeight + 5;
            this.var_911.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1379,"facebook_logo_small",_loc3_,null,0);
         this.var_1379.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1376,"thumb_up",_loc4_,null,0);
         this.var_1376.visible = _loc4_;
         this.var_912.visible = !_loc4_;
         this.var_1672.visible = !_loc4_;
         this.var_1672.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_421,"home",param2,null,0);
         this._navigator.refreshButton(this.var_421,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_421,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_1063.y,0);
         this.var_421.visible = true;
         this.var_421.height = Util.getLowestPoint(this.var_421);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_421.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_164.active || this.var_306.active)
         {
            return;
         }
         this.var_1119.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1119.height = this.var_1119.textHeight + 5;
         this.var_1382.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1382.height = this.var_1382.textHeight + 5;
         Util.moveChildrenToColumn(this.var_728,["public_space_name","public_space_desc"],this.var_1119.y,0);
         this.var_728.visible = true;
         this.var_728.height = Math.max(86,Util.getLowestPoint(this.var_728));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_422.active)
         {
            return;
         }
         this.var_2166.text = param1.eventName;
         this.var_729.text = param1.eventDescription;
         this.var_1120.refreshTags(this.var_913,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_729.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_729.height = this.var_729.textHeight + 5;
            this.var_729.y = Util.getLowestPoint(this.var_913) + 2;
            this.var_729.visible = true;
         }
         this.var_913.visible = true;
         this.var_913.height = Util.getLowestPoint(this.var_913);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_164.active || this.var_306.active)
         {
            return;
         }
         this.var_1669.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1381.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1377.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1378.visible = Util.hasVisibleChildren(this.var_1378);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_422.active)
         {
            return;
         }
         this.var_1674.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1670.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1673.visible = Util.hasVisibleChildren(this.var_1673);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_203 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_420 = IWindowContainer(this.find("room_info"));
         this.var_421 = IWindowContainer(this.find("room_details"));
         this.var_728 = IWindowContainer(this.find("public_space_details"));
         this.var_2165 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2163 = IWindowContainer(this.find("rating_cont"));
         this.var_1378 = IWindowContainer(this.find("room_buttons"));
         this.var_1063 = ITextWindow(this.find("room_name"));
         this.var_1119 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_911 = ITextWindow(this.find("room_desc"));
         this.var_1382 = ITextWindow(this.find("public_space_desc"));
         this.var_1121 = ITextWindow(this.find("owner_caption"));
         this.var_912 = ITextWindow(this.find("rating_caption"));
         this.var_1672 = ITextWindow(this.find("rating_txt"));
         this.var_307 = IWindowContainer(this.find("event_info"));
         this.var_913 = IWindowContainer(this.find("event_details"));
         this.var_1673 = IWindowContainer(this.find("event_buttons"));
         this.var_2166 = ITextWindow(this.find("event_name"));
         this.var_729 = ITextWindow(this.find("event_desc"));
         this.var_1379 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1376 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2164 = this.find("staff_pick_button");
         this.var_1381 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1377 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1669 = IButtonWindow(this.find("room_settings_button"));
         this.var_1674 = IButtonWindow(this.find("create_event_button"));
         this.var_1670 = IButtonWindow(this.find("edit_event_button"));
         this.var_914 = IWindowContainer(this.find("embed_info"));
         this.var_1380 = ITextWindow(this.find("embed_info_txt"));
         this.var_1118 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_910 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1381,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1669,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1377,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1674,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1670,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1118,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1376,this.onThumbUp);
         this.addMouseClickListener(this.var_2164,this.onStaffPick);
         this.addMouseClickListener(this.var_1379,this.onFacebookLike);
         this.addMouseClickListener(this.var_910,this.onZoomClick);
         this._navigator.refreshButton(this.var_1381,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1377,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_420,this.onHover);
         this.addMouseOverListener(this.var_307,this.onHover);
         this.var_1121.width = this.var_1121.textWidth;
         Util.moveChildrenToRow(this.var_2165,["owner_caption","owner_name"],this.var_1121.x,this.var_1121.y,3);
         this.var_912.width = this.var_912.textWidth;
         Util.moveChildrenToRow(this.var_2163,["rating_caption","rating_txt"],this.var_912.x,this.var_912.y,3);
         this.var_1380.height = this.var_1380.textHeight + 5;
         Util.moveChildrenToColumn(this.var_914,["embed_info_txt","embed_src_txt"],this.var_1380.y,2);
         this.var_914.height = Util.getLowestPoint(this.var_914) + 5;
         this.var_3092 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1118.setSelection(0,this.var_1118.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_375));
         this.var_1671 = !this.var_1671;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_423.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_164 != null)
         {
            this.var_164.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
