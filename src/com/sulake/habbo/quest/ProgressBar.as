package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class ProgressBar implements IDisposable
   {
      
      private static const const_1603:int = 3;
      
      private static const const_1602:int = 10;
       
      
      private var var_49:HabboQuestEngine;
      
      private var _window:IWindowContainer;
      
      private var var_850:int;
      
      private var var_1283:String;
      
      private var var_2723:Boolean;
      
      private var var_1282:int;
      
      private var var_1281:int;
      
      private var var_2724:int;
      
      private var var_1974:int;
      
      private var var_290:int;
      
      private var var_1562:Boolean;
      
      private var var_849:BitmapData;
      
      private var var_677:Array;
      
      private var var_1973:ColorMatrixFilter;
      
      public function ProgressBar(param1:HabboQuestEngine, param2:IWindowContainer, param3:int, param4:String, param5:Boolean, param6:Point)
      {
         this.var_677 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_1973 = new ColorMatrixFilter(this.var_677);
         super();
         this.var_49 = param1;
         this._window = param2;
         this.var_850 = param3;
         this.var_1283 = param4;
         this.var_2723 = param5;
         var _loc7_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc7_ == null)
         {
            _loc7_ = IWindowContainer(this.var_49.getXmlWindow("ProgressBar"));
            this._window.addChild(_loc7_);
            _loc7_.x = param6.x;
            _loc7_.y = param6.y;
            _loc7_.width = this.var_850 + const_1602;
         }
         if(param5)
         {
            new PendingImage(this.var_49,this._window.findChildByName("bar_l"),"ach_progressbar1");
            new PendingImage(this.var_49,this._window.findChildByName("bar_c"),"ach_progressbar2");
            new PendingImage(this.var_49,this._window.findChildByName("bar_r"),"ach_progressbar3");
         }
         new PendingImage(this.var_49,this._window.findChildByName("bar_a_c"),"ach_progressbar4");
         new PendingImage(this.var_49,this._window.findChildByName("bar_a_r"),"ach_progressbar5");
      }
      
      public function refresh(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = param3 != this.var_2724 || param2 != this.var_1281;
         this.var_1281 = param2;
         this.var_1282 = param1;
         this.var_1974 = this.var_290;
         this.var_2724 = param3;
         if(_loc4_)
         {
            this.var_290 = this.getProgressWidth(this.var_1282);
         }
         this.var_1562 = true;
         this.updateView();
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc2_ != null)
         {
            _loc2_.visible = param1;
         }
      }
      
      public function updateView() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(!this.var_1562)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_c"));
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_r"));
         if(_loc1_.bitmap == null || _loc2_.bitmap == null)
         {
            return;
         }
         if(this.var_2723)
         {
            _loc7_ = IBitmapWrapperWindow(this._window.findChildByName("bar_c"));
            _loc8_ = IBitmapWrapperWindow(this._window.findChildByName("bar_r"));
            if(_loc7_.bitmap == null || _loc8_.bitmap == null)
            {
               return;
            }
            _loc7_.width = this.var_850;
            _loc8_.x = this.var_850 + _loc1_.x;
         }
         if(this.var_849 == null)
         {
            this.var_849 = _loc1_.bitmap.clone();
         }
         var _loc3_:int = this.getProgressWidth(this.var_1282);
         if(this.var_290 < _loc3_)
         {
            _loc9_ = Math.min(Math.abs(this.var_290 - _loc3_),Math.abs(this.var_1974 - _loc3_));
            this.var_290 = Math.min(_loc3_,this.var_290 + Math.max(1,Math.round(Math.sqrt(_loc9_))));
         }
         var _loc4_:* = this.var_290 > 0;
         _loc1_.visible = _loc4_;
         _loc2_.visible = _loc4_;
         if(_loc4_)
         {
            _loc1_.width = this.var_849.width;
            if(this.var_290 < _loc3_)
            {
               this.changeProgressColorFilter();
               _loc1_.bitmap.applyFilter(this.var_849,this.var_849.rect,new Point(0,0),this.var_1973);
            }
            else
            {
               _loc1_.bitmap.copyPixels(this.var_849,this.var_849.rect,new Point(0,0),null,null,true);
            }
            _loc1_.width = this.var_290;
            _loc2_.x = this.var_290 + _loc1_.x;
         }
         this.var_1562 = this.var_290 < _loc3_;
         var _loc5_:ITextWindow = ITextWindow(this._window.findChildByName("progress_txt"));
         var _loc6_:int = !!this.var_1562 ? int(Math.round(this.var_290 / this.var_850 * this.var_1281)) : int(this.var_1282);
         this.var_49.localization.registerParameter(this.var_1283,"progress","" + _loc6_);
         this.var_49.localization.registerParameter(this.var_1283,"limit","" + this.var_1281);
         _loc5_.caption = this.var_49.localization.getKey(this.var_1283,this.var_1283);
         _loc5_.x = const_1603 + _loc1_.x + (this.var_850 - _loc5_.width) / 2;
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         this._window = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      private function getProgressWidth(param1:int) : int
      {
         return Math.max(0,Math.round(this.var_850 * param1 / this.var_1281));
      }
      
      private function changeProgressColorFilter() : void
      {
         var _loc1_:int = this.getProgressWidth(this.var_1282);
         var _loc2_:int = _loc1_ - this.var_1974;
         if(_loc2_ == 0)
         {
            return;
         }
         var _loc3_:Number = (_loc1_ - this.var_290) / _loc2_;
         this.var_677[3] = _loc3_;
         this.var_677[8] = _loc3_;
         this.var_677[0] = 1 - _loc3_;
         this.var_677[6] = 1 - _loc3_;
         this.var_677[12] = 1 - _loc3_;
         this.var_1973.matrix = this.var_677;
      }
   }
}
