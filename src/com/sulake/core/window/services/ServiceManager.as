package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3083:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_666:IWindowContext;
      
      private var var_1338:IMouseDraggingService;
      
      private var var_1340:IMouseScalingService;
      
      private var var_1342:IMouseListenerService;
      
      private var var_1341:IFocusManagerService;
      
      private var var_1339:IToolTipAgentService;
      
      private var var_1337:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3083 = 0;
         this._root = param2;
         this.var_666 = param1;
         this.var_1338 = new WindowMouseDragger(param2);
         this.var_1340 = new WindowMouseScaler(param2);
         this.var_1342 = new WindowMouseListener(param2);
         this.var_1341 = new FocusManager(param2);
         this.var_1339 = new WindowToolTipAgent(param2);
         this.var_1337 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1338 != null)
         {
            this.var_1338.dispose();
            this.var_1338 = null;
         }
         if(this.var_1340 != null)
         {
            this.var_1340.dispose();
            this.var_1340 = null;
         }
         if(this.var_1342 != null)
         {
            this.var_1342.dispose();
            this.var_1342 = null;
         }
         if(this.var_1341 != null)
         {
            this.var_1341.dispose();
            this.var_1341 = null;
         }
         if(this.var_1339 != null)
         {
            this.var_1339.dispose();
            this.var_1339 = null;
         }
         if(this.var_1337 != null)
         {
            this.var_1337.dispose();
            this.var_1337 = null;
         }
         this._root = null;
         this.var_666 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1338;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1340;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1342;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1341;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1339;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1337;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
