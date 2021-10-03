package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.purse.PurseUpdateEvent;
   import com.sulake.habbo.catalog.viewer.Offer;
   import flash.display.BitmapData;
   
   public class ActivityPointDisplayCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      public function ActivityPointDisplayCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function dispose() : void
      {
         var _loc1_:HabboCatalog = HabboCatalog(page.viewer.catalog);
         _loc1_.events.removeEventListener(PurseUpdateEvent.const_1022,this.onPurseUpdate);
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         var _loc1_:HabboCatalog = HabboCatalog(page.viewer.catalog);
         _loc1_.events.addEventListener(PurseUpdateEvent.const_1022,this.onPurseUpdate);
         return this.updateAmount();
      }
      
      private function updateAmount() : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(disposed)
         {
            return false;
         }
         if(_window == null)
         {
            return false;
         }
         ErrorReportStorage.addDebugData("HGD-15926","1");
         var _loc1_:int = this.getActivityPointType();
         if(_loc1_ < 1)
         {
            _window.visible = false;
            return false;
         }
         ErrorReportStorage.addDebugData("HGD-15926","2 - " + (page != null));
         var _loc2_:HabboCatalog = HabboCatalog(page.viewer.catalog);
         ErrorReportStorage.addDebugData("HGD-15926","3 - " + (_loc2_ != null));
         ErrorReportStorage.addDebugData("HGD-15926","4 - " + _loc2_.disposed);
         var _loc3_:String = "catalog.purchase.youractivitypoints." + _loc1_;
         ErrorReportStorage.addDebugData("HGD-15926","5 - " + (_loc2_.getPurse() != null));
         _loc2_.localization.registerParameter(_loc3_,"activitypoints","" + _loc2_.getPurse().getActivityPointsForType(_loc1_));
         _window.findChildByName("activity_points_txt").caption = _loc2_.localization.getKey(_loc3_);
         ErrorReportStorage.addDebugData("HGD-15926","6");
         var _loc4_:BitmapDataAsset = _loc2_.assets.getAssetByName("icon_activity_point_" + _loc1_) as BitmapDataAsset;
         if(_loc4_)
         {
            ErrorReportStorage.addDebugData("HGD-15926","7.1");
            _loc5_ = BitmapData(_loc4_.content);
            ErrorReportStorage.addDebugData("HGD-15926","7.2");
            _loc6_ = IBitmapWrapperWindow(_window.findChildByName("activity_point_icon"));
            ErrorReportStorage.addDebugData("HGD-15926","7.3 - " + (_loc6_ != null));
            _loc6_.disposesBitmap = false;
            _loc6_.bitmap = _loc5_;
            _loc6_.width = _loc5_.width;
            _loc6_.height = _loc5_.height;
         }
         ErrorReportStorage.addDebugData("HGD-15926","8");
         _window.visible = true;
         return true;
      }
      
      private function onPurseUpdate(param1:PurseUpdateEvent) : void
      {
         this.updateAmount();
      }
      
      private function getActivityPointType() : int
      {
         var _loc1_:* = null;
         if(page == null || true)
         {
            return 0;
         }
         for each(_loc1_ in page.offers)
         {
            if(_loc1_.activityPointType > 0)
            {
               return _loc1_.activityPointType;
            }
         }
         return 0;
      }
   }
}
