package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2340:int = 0;
      
      protected static const const_677:int = 1;
      
      protected static const const_2061:int = 2;
      
      protected static const const_2060:int = 3;
      
      protected static const const_121:int = 4;
      
      protected static const const_678:int = 8;
      
      protected static const const_272:int = 18;
      
      protected static const const_2059:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1845:Boolean = false;
      
      protected var var_47:BitmapDataAsset;
      
      protected var var_98:IBitmapWrapperWindow;
      
      private var var_1311:uint;
      
      protected var var_217:Timer;
      
      protected var _frame:int = 0;
      
      private var var_695:Point;
      
      protected var var_938:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1311 = const_677 | const_678;
         this.var_695 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1845;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_47 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_47;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_98 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_98;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1311 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1311;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_938 = param1;
         if(this.var_938 && this.var_1845)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1845 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_98 && !this.var_98.disposed)
         {
            if(!this.var_98.bitmap)
            {
               this.var_98.bitmap = new BitmapData(this.var_98.width,this.var_98.height,true,0);
            }
            else
            {
               this.var_98.bitmap.fillRect(this.var_98.bitmap.rect,0);
            }
            if(this.var_47 && !this.var_47.disposed)
            {
               this.var_695.x = this.var_695.y = 0;
               _loc1_ = this.var_47.content as BitmapData;
               switch(this.var_1311 & const_2060)
               {
                  case const_677:
                     this.var_695.x = this.var_98.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_2061:
                     this.var_695.x = this.var_98.bitmap.width - _loc1_.width;
               }
               switch(this.var_1311 & const_2059)
               {
                  case const_678:
                     this.var_695.y = this.var_98.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_272:
                     this.var_695.y = this.var_98.bitmap.height - _loc1_.height;
               }
               this.var_98.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_695);
               this.var_98.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_217)
            {
               this.var_217 = new Timer(param2,0);
               this.var_217.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_217.start();
               this.onTimerEvent(null);
            }
            this.var_217.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_217)
            {
               this.var_217.reset();
               this.var_217.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_217 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
