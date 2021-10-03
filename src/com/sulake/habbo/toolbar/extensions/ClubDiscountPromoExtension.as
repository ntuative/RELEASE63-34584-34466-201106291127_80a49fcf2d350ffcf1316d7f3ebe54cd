package com.sulake.habbo.toolbar.extensions
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetHabboClubExtendOfferMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryHabboClubEvent;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.toolbar.ExtensionFixedSlotsEnum;
   import com.sulake.habbo.toolbar.HabboToolbar;
   import com.sulake.habbo.toolbar.IExtensionView;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ClubDiscountPromoExtension
   {
      
      private static const const_1116:String = "club_promo";
      
      private static const const_1441:int = 13;
      
      private static const const_1047:int = 14;
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var _events:IEventDispatcher;
      
      private var _config:IHabboConfigurationManager;
      
      private var _localization:ICoreLocalizationManager;
      
      private var var_12:IHabboInventory;
      
      private var _catalog:IHabboCatalog;
      
      private var _connection:IConnection;
      
      private var var_617:IExtensionView;
      
      private var _view:IWindowContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_94:IBitmapWrapperWindow;
      
      private var var_706:Timer;
      
      private var var_1595:int = 0;
      
      private var var_2035:int;
      
      private var var_871:Timer;
      
      private var var_872:BitmapData;
      
      public function ClubDiscountPromoExtension(param1:HabboToolbar, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IEventDispatcher, param5:IHabboConfigurationManager, param6:ICoreLocalizationManager, param7:IHabboInventory, param8:IHabboCatalog, param9:IConnection)
      {
         super();
         this._windowManager = param2;
         this._assets = param3;
         this._events = param4;
         this._config = param5;
         this._localization = param6;
         this.var_12 = param7;
         this._catalog = param8;
         this._connection = param9;
         this.var_617 = param1.extensionView;
         if(this.var_12)
         {
            this.var_12.events.addEventListener(HabboInventoryHabboClubEvent.HABBO_CLUB_CHANGED,this.onClubChanged);
         }
      }
      
      private function createWindow(param1:IAssetLibrary, param2:IHabboWindowManager) : IWindowContainer
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc4_:XmlAsset = param1.getAssetByName("club_discount_promotion_xml") as XmlAsset;
         if(_loc4_)
         {
            _loc3_ = param2.buildFromXML(_loc4_.content as XML,1) as IWindowContainer;
            if(_loc3_)
            {
               this.var_94 = _loc3_.findChildByName("flashing_animation") as IBitmapWrapperWindow;
               if(this.var_94)
               {
                  _loc6_ = this._assets.getAssetByName("extend_hilite_png") as IAsset;
                  if(_loc6_)
                  {
                     this.var_872 = _loc6_.content as BitmapData;
                     if(this.var_872)
                     {
                        this.var_94.bitmap = this.var_872.clone();
                     }
                  }
                  this.var_94.visible = false;
               }
               _loc5_ = _loc3_.findChildByName("text_region") as IRegionWindow;
               if(_loc5_)
               {
                  _loc5_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onTextRegionClicked);
               }
               this.assignState();
            }
         }
         return _loc3_;
      }
      
      private function destroyWindow() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.animate(false);
            this.clearAnimation();
            this.var_94 = null;
            if(this.var_12)
            {
               this.var_12.events.removeEventListener(HabboInventoryHabboClubEvent.HABBO_CLUB_CHANGED,this.onClubChanged);
               this.var_12 = null;
            }
            this._catalog = null;
            this._localization = null;
            this._config = null;
            this._assets = null;
            this._events = null;
            this._disposed = true;
         }
      }
      
      private function onTextRegionClicked(param1:WindowMouseEvent) : void
      {
         if(this._connection)
         {
            this._connection.send(new EventLogMessageComposer("DiscountPromo","discount","client.club.extend.discount.clicked"));
            this._connection.send(new GetHabboClubExtendOfferMessageComposer());
         }
      }
      
      private function assignState() : void
      {
         switch(this.var_12.clubLevel)
         {
            case HabboClubLevelEnum.const_51:
               this.setText(this._localization.getKey("discount.bar.no.club.promo"));
               this.setClubIcon(const_1047);
               break;
            case HabboClubLevelEnum.const_34:
               this.setText(this._localization.getKey("discount.bar.hc.expiring"));
               this.setClubIcon(const_1441);
               break;
            case HabboClubLevelEnum.const_41:
               this.setText(this._localization.getKey("discount.bar.vip.expiring","Save 5 cr by extending your VIP subscription now!"));
               this.setClubIcon(const_1047);
         }
         this.animate(true);
      }
      
      private function onClubChanged(param1:HabboInventoryHabboClubEvent) : void
      {
         if(this.var_12.clubIsExpiring)
         {
            if(!this._view)
            {
               this._view = this.createWindow(this._assets,this._windowManager);
               this.assignState();
               this.var_617.attachExtension(const_1116,this._view,ExtensionFixedSlotsEnum.const_1731);
            }
         }
         else
         {
            this.var_617.detachExtension(const_1116);
            this.destroyWindow();
         }
      }
      
      private function setText(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("promo_text") as ITextWindow;
            _loc3_ = this._view.findChildByName("promo_text_shadow") as ITextWindow;
            if(_loc2_)
            {
               _loc2_.text = param1;
            }
            if(_loc3_)
            {
               _loc3_.text = param1;
            }
         }
      }
      
      private function animate(param1:Boolean) : void
      {
         if(param1)
         {
            Logger.log("Animate window");
            if(this.var_871)
            {
               this.var_871.stop();
            }
            this.var_871 = new Timer(15000);
            this.var_871.addEventListener(TimerEvent.TIMER,this.onTriggerTimer);
            this.var_871.start();
         }
         else
         {
            if(this.var_871)
            {
               this.var_871.stop();
            }
            this.clearAnimation();
         }
      }
      
      private function clearAnimation() : void
      {
         if(this.var_94)
         {
            this.var_94.visible = false;
            this.var_94.bitmap = null;
            this._view.invalidate();
            if(this.var_706)
            {
               this.var_706.stop();
               this.var_706 = null;
            }
         }
      }
      
      private function onTriggerTimer(param1:TimerEvent) : void
      {
         if(this.var_94)
         {
            this.var_94.visible = true;
            this.resetAnimationVariables();
            this.startAnimationTimer();
         }
      }
      
      private function resetAnimationVariables() : void
      {
         this.var_94.x = 3;
         this.var_94.y = 3;
         this.var_94.bitmap = this.var_872.clone();
         this.var_94.height = this._view.height - 6;
         this.var_94.width = this.var_94.bitmap.width;
         this.var_94.invalidate();
         this.var_2035 = this._view.width - 7 - this.var_94.bitmap.width;
         this.var_1595 = 0;
      }
      
      private function startAnimationTimer() : void
      {
         this.var_706 = new Timer(25,26);
         this.var_706.addEventListener(TimerEvent.TIMER,this.onAnimationTimer);
         this.var_706.addEventListener(TimerEvent.TIMER_COMPLETE,this.onAnimationTimerComplete);
         this.var_706.start();
      }
      
      private function onAnimationTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         this.var_94.x = 3 + this.var_1595 / 20 * this.var_2035;
         if(this.var_94.x > this.var_2035)
         {
            _loc2_ = this._view.width - 4 - this.var_94.x;
            _loc3_ = new BitmapData(_loc2_,this.var_872.height);
            _loc3_.copyPixels(this.var_872,new Rectangle(0,0,_loc2_,this.var_872.height),new Point(0,0));
            this.var_94.bitmap = _loc3_;
            this.var_94.width = _loc2_;
         }
         this.var_94.invalidate();
         ++this.var_1595;
      }
      
      private function onAnimationTimerComplete(param1:TimerEvent) : void
      {
         this.clearAnimation();
      }
      
      private function setClubIcon(param1:int) : void
      {
         var _loc2_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("club_icon") as IIconWindow;
            if(_loc2_)
            {
               _loc2_.style = param1;
               _loc2_.invalidate();
            }
         }
      }
   }
}
