package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import flash.geom.Point;
   
   public class QuestDetails implements IDisposable
   {
      
      private static const const_1625:int = 56;
      
      private static const const_482:int = 5;
      
      private static const const_1530:int = 5;
      
      private static const const_1155:Point = new Point(8,8);
      
      private static const const_1712:Array = ["PLACE_ITEM","PLACE_FLOOR","PLACE_WALLPAPER","PET_DRINK","PET_EAT"];
       
      
      private var var_49:HabboQuestEngine;
      
      private var _window:IFrameWindow;
      
      private var var_2186:Boolean;
      
      private var var_131:QuestMessageData;
      
      private var var_1507:int;
      
      public function QuestDetails(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         this.var_131 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         if(this.var_2186)
         {
            this.var_2186 = false;
            this.showDetails(param1);
         }
         else if(this.var_131 == null || this.var_131.id != param1.id)
         {
            this.close();
         }
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.close();
      }
      
      public function onQuestCancelled() : void
      {
         this.close();
      }
      
      public function onRoomExit() : void
      {
         this.close();
      }
      
      private function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      public function showDetails(param1:QuestMessageData) : void
      {
         if(this._window && this._window.visible)
         {
            this._window.visible = false;
            return;
         }
         this.openDetails(param1);
      }
      
      private function openDetails(param1:QuestMessageData) : void
      {
         var _loc8_:* = null;
         this.var_131 = param1;
         if(param1 == null)
         {
            return;
         }
         if(this._window == null)
         {
            this._window = IFrameWindow(this.var_49.getXmlWindow("QuestDetails"));
            this._window.findChildByTag("close").procedure = this.onDetailsWindowClose;
            this._window.center();
            _loc8_ = this.var_49.questController.questsList.createListEntry();
            _loc8_.x = const_1155.x;
            _loc8_.y = const_1155.y;
            this._window.content.addChild(_loc8_);
            this._window.findChildByName("link_region").procedure = this.onLinkProc;
         }
         _loc8_ = IWindowContainer(this._window.findChildByName("entry_container"));
         this.var_49.questController.questsList.refreshEntryDetails(_loc8_,param1);
         var _loc2_:* = this.var_131.waitPeriodSeconds > 0;
         var _loc3_:ITextWindow = ITextWindow(_loc8_.findChildByName("hint_txt"));
         var _loc4_:int = this.getTextHeight(_loc3_);
         if(!_loc2_)
         {
            _loc3_.caption = this.var_49.getQuestHint(param1);
            _loc3_.height = _loc3_.textHeight + const_1530;
         }
         _loc3_.visible = !_loc2_;
         var _loc5_:int = this.getTextHeight(_loc3_) - _loc4_;
         var _loc6_:int = this.setupLink("link_region",_loc3_.y + _loc3_.height + const_482);
         var _loc7_:IWindowContainer = IWindowContainer(_loc8_.findChildByName("quest_container"));
         _loc7_.height += _loc5_ + _loc6_;
         this.var_49.questController.questsList.setEntryHeight(_loc8_);
         this._window.height = _loc8_.height + const_1625;
         this._window.visible = true;
         this._window.activate();
      }
      
      private function setupLink(param1:String, param2:int) : int
      {
         var _loc3_:Boolean = this.hasCatalogLink();
         var _loc4_:Boolean = this.hasNavigatorLink();
         var _loc5_:Boolean = _loc3_ || _loc4_;
         var _loc6_:IRegionWindow = IRegionWindow(this._window.findChildByName(param1));
         _loc6_.y = param2;
         var _loc7_:int = 0;
         if(_loc5_ && !_loc6_.visible)
         {
            _loc7_ = const_482 + _loc6_.height;
         }
         if(!_loc5_ && _loc6_.visible)
         {
            _loc7_ = -const_482 - _loc6_.height;
         }
         _loc6_.visible = _loc5_;
         _loc6_.findChildByName("link_catalog").visible = _loc3_;
         _loc6_.findChildByName("link_navigator").visible = _loc4_;
         return _loc7_;
      }
      
      private function hasCatalogLink() : Boolean
      {
         return this.var_131.waitPeriodSeconds < 1 && const_1712.indexOf(this.var_131.type) > -1;
      }
      
      private function hasNavigatorLink() : Boolean
      {
         var _loc1_:Boolean = this.var_49.localization.hasKey(this.var_131.getCampaignLocalizationKey() + ".searchtag");
         var _loc2_:Boolean = this.var_49.localization.hasKey(this.var_131.getCampaignLocalizationKey() + ".searchtag");
         return this.var_131.waitPeriodSeconds < 1 && (_loc1_ || _loc2_);
      }
      
      private function getTextHeight(param1:ITextWindow) : int
      {
         return !!param1.visible ? int(param1.height) : 0;
      }
      
      private function onDetailsWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._window.visible = false;
         }
      }
      
      public function set openForNextQuest(param1:Boolean) : void
      {
         this.var_2186 = param1;
      }
      
      private function onLinkProc(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(this.hasCatalogLink())
            {
               this.var_49.openCatalog(this.var_131);
            }
            else if(this.hasNavigatorLink())
            {
               this.var_49.openNavigator(this.var_131);
            }
         }
      }
      
      public function update(param1:uint) : void
      {
         if(this._window == null || !this._window.visible)
         {
            return;
         }
         this.var_1507 -= param1;
         if(this.var_1507 > 0)
         {
            return;
         }
         this.var_1507 = NextQuestTimer.const_739;
         var _loc2_:Boolean = this.var_49.questController.questsList.refreshDelay(this._window,this.var_131);
         if(_loc2_)
         {
            this.openDetails(this.var_131);
         }
      }
   }
}
