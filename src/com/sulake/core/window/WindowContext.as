package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_675:uint = 0;
      
      public static const const_1838:uint = 1;
      
      public static const const_2198:int = 0;
      
      public static const const_2295:int = 1;
      
      public static const const_2202:int = 2;
      
      public static const const_2225:int = 3;
      
      public static const const_1995:int = 4;
      
      public static const const_462:int = 5;
      
      public static var var_426:IEventQueue;
      
      private static var var_682:IEventProcessor;
      
      private static var var_1999:uint = const_675;
      
      private static var stage:Stage;
      
      private static var var_175:IWindowRenderer;
       
      
      private var var_2766:EventProcessorState;
      
      private var var_2764:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_148:DisplayObjectContainer;
      
      protected var var_3096:Boolean = true;
      
      protected var var_1425:Error;
      
      protected var var_2258:int = -1;
      
      protected var var_1426:IInternalWindowServices;
      
      protected var var_1707:IWindowParser;
      
      protected var var_3054:IWindowFactory;
      
      protected var var_96:IDesktopWindow;
      
      protected var var_1706:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_606:Boolean = false;
      
      private var var_2765:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_175 = param2;
         this._localization = param4;
         this.var_148 = param5;
         this.var_1426 = new ServiceManager(this,param5);
         this.var_3054 = param3;
         this.var_1707 = new WindowParser(this);
         this.var_2764 = param7;
         if(!stage)
         {
            if(this.var_148 is Stage)
            {
               stage = this.var_148 as Stage;
            }
            else if(this.var_148.stage)
            {
               stage = this.var_148.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_96 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_96.limits.maxWidth = param6.width;
         this.var_96.limits.maxHeight = param6.height;
         this.var_148.addChild(this.var_96.getDisplayObject());
         this.var_148.doubleClickEnabled = true;
         this.var_148.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2766 = new EventProcessorState(var_175,this.var_96,this.var_96,null,this.var_2764);
         inputMode = const_675;
         this.var_1706 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1999;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_426)
         {
            if(var_426 is IDisposable)
            {
               IDisposable(var_426).dispose();
            }
         }
         if(var_682)
         {
            if(var_682 is IDisposable)
            {
               IDisposable(var_682).dispose();
            }
         }
         switch(value)
         {
            case const_675:
               var_426 = new MouseEventQueue(stage);
               var_682 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1838:
               var_426 = new TabletEventQueue(stage);
               var_682 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_675;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_148.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_148.removeChild(IGraphicContextHost(this.var_96).getGraphicContext(true) as DisplayObject);
            this.var_96.destroy();
            this.var_96 = null;
            this.var_1706.destroy();
            this.var_1706 = null;
            if(this.var_1426 is IDisposable)
            {
               IDisposable(this.var_1426).dispose();
            }
            this.var_1426 = null;
            this.var_1707.dispose();
            this.var_1707 = null;
            var_175 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1425;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2258;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1425 = param2;
         this.var_2258 = param1;
         if(this.var_3096)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1425 = null;
         this.var_2258 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1426;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1707;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_3054;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_96;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_96.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1995,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1706;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_96,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_96)
         {
            this.var_96 = null;
         }
         if(param1.state != WindowState.const_493)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_175.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_606 = true;
         if(this.var_1425)
         {
            throw this.var_1425;
         }
         var_682.process(this.var_2766,var_426);
         this.var_606 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2765 = true;
         var_175.update(param1);
         this.var_2765 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_96 != null && !this.var_96.disposed)
         {
            if(this.var_148 is Stage)
            {
               this.var_96.limits.maxWidth = Stage(this.var_148).stageWidth;
               this.var_96.limits.maxHeight = Stage(this.var_148).stageHeight;
               this.var_96.width = Stage(this.var_148).stageWidth;
               this.var_96.height = Stage(this.var_148).stageHeight;
            }
            else
            {
               this.var_96.limits.maxWidth = this.var_148.width;
               this.var_96.limits.maxHeight = this.var_148.height;
               this.var_96.width = this.var_148.width;
               this.var_96.height = this.var_148.height;
            }
         }
      }
   }
}
