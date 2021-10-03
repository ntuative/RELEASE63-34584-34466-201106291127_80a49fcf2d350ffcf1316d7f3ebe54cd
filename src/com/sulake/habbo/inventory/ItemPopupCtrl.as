package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1307:int = 1;
      
      public static const const_521:int = 2;
      
      private static const const_1071:int = 5;
      
      private static const const_1537:int = 250;
      
      private static const const_1538:int = 100;
      
      private static const const_1539:int = 180;
      
      private static const const_1540:int = 200;
       
      
      private var var_390:Timer;
      
      private var var_391:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_93:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1895:int = 2;
      
      private var var_811:BitmapData;
      
      private var var_1016:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_390 = new Timer(const_1537,1);
         this.var_391 = new Timer(const_1538,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_93 = param1;
         this.var_93.visible = false;
         this._assets = param2;
         this.var_390.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_391.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_1016 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_811 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_390 != null)
         {
            this.var_390.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_390.stop();
            this.var_390 = null;
         }
         if(this.var_391 != null)
         {
            this.var_391.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_391.stop();
            this.var_391 = null;
         }
         this._assets = null;
         this.var_93 = null;
         this._parent = null;
         this.var_811 = null;
         this.var_1016 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_93 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_93);
         }
         this._parent = param1;
         this.var_1895 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_93.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_93.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1539,param3.width),Math.min(const_1540,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_93.width - _loc6_.width) / 2;
            this.var_93.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_391.reset();
         this.var_390.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_93.visible = true;
         this._parent.addChild(this.var_93);
         this.refreshArrow(this.var_1895);
         switch(this.var_1895)
         {
            case const_1307:
               this.var_93.x = -1 * this.var_93.width - const_1071;
               break;
            case const_521:
               this.var_93.x = this._parent.width + const_1071;
         }
         this.var_93.y = (this._parent.height - this.var_93.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_93.visible = false;
         this.var_391.reset();
         this.var_390.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_93);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_391.reset();
         this.var_390.reset();
         this.var_390.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_391.reset();
         this.var_390.reset();
         this.var_391.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_93 == null || this.var_93.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_93.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1307:
               _loc2_.bitmap = this.var_1016.clone();
               _loc2_.width = this.var_1016.width;
               _loc2_.height = this.var_1016.height;
               _loc2_.y = (this.var_93.height - this.var_1016.height) / 2;
               _loc2_.x = this.var_93.width - 1;
               break;
            case const_521:
               _loc2_.bitmap = this.var_811.clone();
               _loc2_.width = this.var_811.width;
               _loc2_.height = this.var_811.height;
               _loc2_.y = (this.var_93.height - this.var_811.height) / 2;
               _loc2_.x = -1 * this.var_811.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
