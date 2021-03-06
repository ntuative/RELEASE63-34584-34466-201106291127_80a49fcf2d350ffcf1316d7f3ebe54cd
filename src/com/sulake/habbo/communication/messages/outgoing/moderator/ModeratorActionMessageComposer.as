package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class ModeratorActionMessageComposer implements IMessageComposer, IDisposable
   {
      
      public static const const_2319:int = 0;
      
      public static const const_1862:int = 1;
      
      public static const const_1966:int = 0;
      
      public static const const_1948:int = 1;
      
      public static const const_2116:int = 2;
      
      public static const const_1881:int = 3;
      
      public static const const_1742:int = 4;
       
      
      private var var_34:Array;
      
      public function ModeratorActionMessageComposer(param1:int, param2:int, param3:String, param4:String, param5:String, param6:int = 0)
      {
         this.var_34 = new Array();
         super();
         this.var_34.push(param1);
         this.var_34.push(param2);
         this.var_34.push(param3);
         this.var_34.push(param4);
         this.var_34.push(param5);
         this.var_34.push(param6);
         this.var_34.push(false);
         this.var_34.push(false);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_34;
      }
      
      public function dispose() : void
      {
         this.var_34 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
