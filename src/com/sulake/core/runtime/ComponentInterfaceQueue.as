package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1715:IID;
      
      private var var_1154:Boolean;
      
      private var var_1158:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1715 = param1;
         this.var_1158 = new Array();
         this.var_1154 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1715;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1154;
      }
      
      public function get receivers() : Array
      {
         return this.var_1158;
      }
      
      public function dispose() : void
      {
         if(!this.var_1154)
         {
            this.var_1154 = true;
            this.var_1715 = null;
            while(this.var_1158.length > 0)
            {
               this.var_1158.pop();
            }
            this.var_1158 = null;
         }
      }
   }
}
