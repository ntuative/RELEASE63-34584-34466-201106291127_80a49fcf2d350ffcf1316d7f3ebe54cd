package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2617:int;
      
      private var var_2618:int;
      
      private var var_2619:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2617 = param1;
         this.var_2618 = param2;
         this.var_2619 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2617,this.var_2618,this.var_2619];
      }
      
      public function dispose() : void
      {
      }
   }
}
