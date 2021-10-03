package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1914:String = "WE_DESTROY";
      
      public static const const_361:String = "WE_DESTROYED";
      
      public static const const_1921:String = "WE_OPEN";
      
      public static const const_2025:String = "WE_OPENED";
      
      public static const const_1877:String = "WE_CLOSE";
      
      public static const const_1726:String = "WE_CLOSED";
      
      public static const const_1786:String = "WE_FOCUS";
      
      public static const const_351:String = "WE_FOCUSED";
      
      public static const const_2019:String = "WE_UNFOCUS";
      
      public static const const_1746:String = "WE_UNFOCUSED";
      
      public static const const_1745:String = "WE_ACTIVATE";
      
      public static const const_645:String = "WE_ACTIVATED";
      
      public static const const_1904:String = "WE_DEACTIVATE";
      
      public static const const_518:String = "WE_DEACTIVATED";
      
      public static const const_348:String = "WE_SELECT";
      
      public static const const_47:String = "WE_SELECTED";
      
      public static const const_500:String = "WE_UNSELECT";
      
      public static const const_642:String = "WE_UNSELECTED";
      
      public static const const_1898:String = "WE_LOCK";
      
      public static const const_1913:String = "WE_LOCKED";
      
      public static const const_1846:String = "WE_UNLOCK";
      
      public static const const_1756:String = "WE_UNLOCKED";
      
      public static const const_733:String = "WE_ENABLE";
      
      public static const const_290:String = "WE_ENABLED";
      
      public static const const_856:String = "WE_DISABLE";
      
      public static const const_280:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_429:String = "WE_RELOCATED";
      
      public static const const_1304:String = "WE_RESIZE";
      
      public static const const_39:String = "WE_RESIZED";
      
      public static const const_1931:String = "WE_MINIMIZE";
      
      public static const const_1954:String = "WE_MINIMIZED";
      
      public static const const_1960:String = "WE_MAXIMIZE";
      
      public static const const_1974:String = "WE_MAXIMIZED";
      
      public static const const_1947:String = "WE_RESTORE";
      
      public static const const_2003:String = "WE_RESTORED";
      
      public static const const_527:String = "WE_CHILD_ADDED";
      
      public static const const_428:String = "WE_CHILD_REMOVED";
      
      public static const const_206:String = "WE_CHILD_RELOCATED";
      
      public static const const_169:String = "WE_CHILD_RESIZED";
      
      public static const const_349:String = "WE_CHILD_ACTIVATED";
      
      public static const const_619:String = "WE_PARENT_ADDED";
      
      public static const const_1981:String = "WE_PARENT_REMOVED";
      
      public static const const_1951:String = "WE_PARENT_RELOCATED";
      
      public static const const_662:String = "WE_PARENT_RESIZED";
      
      public static const const_1174:String = "WE_PARENT_ACTIVATED";
      
      public static const const_167:String = "WE_OK";
      
      public static const const_667:String = "WE_CANCEL";
      
      public static const const_112:String = "WE_CHANGE";
      
      public static const const_584:String = "WE_SCROLL";
      
      public static const const_111:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_756:IWindow;
      
      protected var var_1151:Boolean;
      
      protected var var_513:Boolean;
      
      protected var var_169:Boolean;
      
      protected var var_755:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_756 = param3;
         _loc5_.var_513 = param4;
         _loc5_.var_169 = false;
         _loc5_.var_755 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_756;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_513;
      }
      
      public function recycle() : void
      {
         if(this.var_169)
         {
            throw new Error("Event already recycled!");
         }
         this.var_756 = null;
         this._window = null;
         this.var_169 = true;
         this.var_1151 = false;
         this.var_755.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1151;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1151 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1151;
      }
      
      public function stopPropagation() : void
      {
         this.var_1151 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1151 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_513 + " window: " + this._window + " }";
      }
   }
}
