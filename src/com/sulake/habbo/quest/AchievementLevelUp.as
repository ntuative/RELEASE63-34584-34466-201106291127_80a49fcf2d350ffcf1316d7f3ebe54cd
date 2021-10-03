package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.notifications.AchievementLevelUpData;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.GetAchievementShareIdComposer;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class AchievementLevelUp implements IDisposable
   {
      
      private static const const_1088:int = 2000;
      
      private static const const_1588:int = 500;
      
      private static const const_1589:int = 500;
      
      private static const const_2097:int = 300;
      
      private static const const_1591:int = 1400;
      
      private static const const_1590:Number = 1;
      
      private static const const_1587:int = 3;
      
      private static const const_1091:int = 0;
      
      private static const const_1090:int = 1;
      
      private static const const_703:int = 2;
      
      private static const const_1089:int = 3;
       
      
      private var _window:IFrameWindow;
      
      private var var_49:HabboQuestEngine;
      
      private var var_70:AchievementLevelUpData;
      
      private var var_842:Array;
      
      private var var_843:int;
      
      private var var_1956:int = 0;
      
      private var var_1957:int;
      
      private var var_558:int;
      
      private var var_1558:int;
      
      private var var_1557:int = 3;
      
      private var var_844:BitmapData;
      
      private var var_2690:Point;
      
      private var var_557:Array;
      
      private var var_1955:ColorMatrixFilter;
      
      private var var_649:Animation;
      
      public function AchievementLevelUp(param1:HabboQuestEngine)
      {
         this.var_842 = new Array();
         this.var_557 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_1955 = new ColorMatrixFilter(this.var_557);
         super();
         this.var_49 = param1;
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         this.var_842 = null;
         this.var_70 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_649)
         {
            this.var_649.dispose();
            this.var_649 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._window == null;
      }
      
      public function onLevelUp(param1:AchievementLevelUpData) : void
      {
         this.var_842.push(param1);
         this.var_49.sessionDataManager.getBadgeImage(param1.badgeCode);
         this.var_49.sessionDataManager.getBadgeImage(this.var_49.localization.getPreviousLevelBadgeId(param1.badgeCode));
         if(this._window == null || !this._window.visible)
         {
            this.var_843 = const_1088;
         }
         this.prepare();
      }
      
      private function close() : void
      {
         if(this._window)
         {
            this._window.visible = false;
            if(this.var_842.length > 0)
            {
               this.var_843 = const_1588;
            }
         }
      }
      
      private function prepare() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IFrameWindow(this.var_49.getXmlWindow("AchievementLevelUp"));
         this._window.findChildByTag("close").procedure = this.onCloseLink;
         this._window.findChildByName("ok_button").procedure = this.onOkButton;
         this._window.findChildByName("share_button").procedure = this.onShareButton;
         new PendingImage(this.var_49,this._window.findChildByName("reward_icon"),"ach_receive_star");
         this._window.findChildByName("achievements_link_region").procedure = this.onAchievementsLink;
         this._window.findChildByName("close_link_region").procedure = this.onCloseLink;
         this.var_649 = this.var_49.getTwinkleAnimation(this._window);
         this._window.visible = false;
      }
      
      private function show() : void
      {
         this.prepare();
         this.registerParameter("achievements.levelup.title","category",this.var_49.getAchievementCategoryName(this.var_70.category));
         this.registerParameter("achievements.levelup.reward","amount","" + this.var_70.levelRewardPoints);
         this.registerParameter("achievements.levelup.reward","currency_name",this.var_49.getActivityPointName(this.var_70.levelRewardPointType));
         this.registerParameter("achievements.levelup.score","amount","" + this.var_70.points);
         this.registerParameter("achievements.levelup.sharedesc","amount","" + this.var_70.bonusPoints);
         this._window.findChildByName("achievement_name_txt").caption = "\'" + this.var_49.localization.getBadgeName(this.var_70.badgeCode) + "\'";
         var _loc1_:Boolean = this.isFacebookPostingEnabled();
         this._window.findChildByName("achievements_link_region").visible = !_loc1_;
         this._window.findChildByName("close_link_region").visible = _loc1_;
         this._window.findChildByName("ok_button").visible = !_loc1_;
         this._window.findChildByName("share_button").visible = _loc1_;
         this._window.findChildByName("facebook_info_txt").visible = _loc1_;
         this.doFacebookLogging();
         if(this.var_70.level > 1)
         {
            this.setFadeStatus(const_1090);
         }
         else
         {
            this.setFadeStatus(const_703,const_1591);
         }
         this.var_649.restart();
      }
      
      private function setFadeStatus(param1:int, param2:int = 300) : void
      {
         this.var_844 = null;
         this.var_1956 = param1;
         this.var_558 = param2;
         this.var_1957 = param2;
         this.var_1558 = const_1589;
      }
      
      private function isFacebookPostingEnabled() : Boolean
      {
         return this.var_70.bonusPoints > 0 && this.isPostingEnabled() && this.var_49.configuration.keyExists("facebook.user");
      }
      
      private function isPostingEnabled() : Boolean
      {
         return this.var_49.configuration.getKey("achievement.post.enabled","1") != "0";
      }
      
      private function doFacebookLogging() : void
      {
         var _loc1_:Boolean = this.var_49.configuration.keyExists("facebook.user");
         var _loc2_:String = this.var_70.badgeCode;
         if(this.var_70.bonusPoints <= 0 || !this.isPostingEnabled())
         {
            this.var_49.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.no_post"));
         }
         else if(_loc1_)
         {
            this.var_49.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.post"));
         }
         else
         {
            this.var_49.send(new EventLogMessageComposer("Achievements",_loc2_,"client.show.no_fb"));
         }
      }
      
      private function onOkButton(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onCloseLink(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.close();
         }
      }
      
      private function onAchievementsLink(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_49.achievementController.show();
            this.close();
         }
      }
      
      private function onShareButton(param1:WindowEvent, param2:IWindow = null) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_49.send(new GetAchievementShareIdComposer(this.var_70.achievementID));
            this.var_49.send(new EventLogMessageComposer("Achievements",this.var_70.badgeCode,"client.start_post"));
         }
      }
      
      public function update(param1:uint) : void
      {
         if(this.var_843 > 0)
         {
            this.checkDialogOpen(param1);
            return;
         }
         if(this.var_649 != null)
         {
            this.var_649.update(param1);
         }
         if(this._window == null || this.var_1956 == const_1091)
         {
            return;
         }
         switch(this.var_1956)
         {
            case const_1090:
               this.var_1558 -= param1;
               this.animateBadgeImage(true);
               if(this.var_1558 < 0)
               {
                  this.setFadeStatus(const_1089);
               }
               break;
            case const_1089:
               this.var_558 -= param1;
               this.animateBadgeImage(true);
               if(this.var_558 < 0)
               {
                  this.setFadeStatus(const_703);
               }
               break;
            case const_703:
               this.var_558 -= param1;
               this.animateBadgeImage(false);
               if(this.var_558 < 0)
               {
                  this.setFadeStatus(const_1091);
               }
         }
      }
      
      private function checkDialogOpen(param1:uint) : void
      {
         this.var_843 -= param1;
         if(this.var_843 > 0)
         {
            return;
         }
         if(this.var_842.length < 1)
         {
            return;
         }
         var _loc2_:AchievementLevelUpData = this.var_842.pop();
         if(this.var_49.sessionDataManager.getBadgeImageWithInfo(_loc2_.badgeCode).placeHolder || this.var_49.sessionDataManager.getBadgeImageWithInfo(this.var_49.localization.getPreviousLevelBadgeId(_loc2_.badgeCode)).placeHolder)
         {
            if(this.var_1557 > 0)
            {
               this.var_842.push(_loc2_);
               this.var_843 = const_1088;
               --this.var_1557;
               return;
            }
            this.var_1557 = const_1587;
         }
         this.var_70 = _loc2_;
         this.show();
         this._window.center();
         this._window.visible = true;
         this._window.activate();
      }
      
      public function requestFacebookPostDialog(param1:String, param2:String) : void
      {
         if(this._window == null || this.var_70 == null || this.var_70.badgeCode != param1)
         {
            Logger.log("Invalid facebook post: " + param1 + ", " + (this.var_70 == null ? "current is null" : this.var_70.badgeCode));
            return;
         }
         var _loc3_:String = this.getFacebookText("notifications.text.achievement_facebook");
         var _loc4_:String = this.getFacebookText("notifications.text.achievement_facebook_title");
         HabboWebTools.facebookAchievementPost(this.var_70.badgeCode,_loc4_,_loc3_,param2);
         this.close();
      }
      
      private function getFacebookText(param1:String) : String
      {
         var _loc2_:String = this.var_49.sessionDataManager.userName;
         var _loc3_:String = this.var_49.sessionDataManager.realName;
         var _loc4_:String = this.var_49.localization.getAchievementNameForFacebook(this.var_70.badgeCode,_loc2_,_loc3_,this.var_70.level);
         var _loc5_:String = this.var_49.localization.getAchievementDescForFacebook(this.var_70.badgeCode,_loc2_,_loc3_,this.var_70.level);
         this.registerParameter(param1,"badge_name",this.var_49.localization.getBadgeName(this.var_70.badgeCode));
         this.registerParameter(param1,"badge_desc",this.var_49.localization.getBadgeDesc(this.var_70.badgeCode));
         this.registerParameter(param1,"badge_name_fb",_loc4_);
         this.registerParameter(param1,"badge_desc_fb",_loc5_);
         this.registerParameter(param1,"level",this.var_70.level.toString());
         this.registerParameter(param1,"name",_loc2_);
         this.registerParameter(param1,"realname",_loc3_);
         return this.var_49.localization.getKey(param1,param1);
      }
      
      private function registerParameter(param1:String, param2:String, param3:String) : void
      {
         this.var_49.localization.registerParameter(param1,param2,param3);
      }
      
      private function animateBadgeImage(param1:Boolean) : void
      {
         this.changeBadgeColorFilter(param1);
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("achievement_pic_bitmap"));
         if(_loc2_.bitmap == null)
         {
            _loc2_.bitmap = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         }
         if(this.var_844 == null)
         {
            this.var_844 = !!param1 ? this.var_49.sessionDataManager.getBadgeImage(this.var_49.localization.getPreviousLevelBadgeId(this.var_70.badgeCode)) : this.var_49.sessionDataManager.getBadgeImage(this.var_70.badgeCode);
            this.var_2690 = new Point((_loc2_.width - this.var_844.width) / 2,(_loc2_.height - this.var_844.height) / 2);
         }
         _loc2_.bitmap.fillRect(_loc2_.bitmap.rect,0);
         _loc2_.bitmap.applyFilter(this.var_844,this.var_844.rect,this.var_2690,this.var_1955);
         _loc2_.invalidate(_loc2_.rectangle);
      }
      
      private function changeBadgeColorFilter(param1:Boolean) : void
      {
         var _loc2_:int = Math.max(0,!param1 ? Number(this.var_558) : Number(this.var_1957 - this.var_558));
         var _loc3_:Number = _loc2_ / this.var_1957 * const_1590;
         this.var_557[3] = _loc3_;
         this.var_557[8] = _loc3_;
         this.var_557[13] = _loc3_;
         this.var_557[0] = 1 - _loc3_;
         this.var_557[6] = 1 - _loc3_;
         this.var_557[12] = 1 - _loc3_;
         this.var_1955.matrix = this.var_557;
      }
   }
}
