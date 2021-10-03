package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2844:int;
      
      private var var_2843:int;
      
      private var var_2912:String;
      
      private var var_2911:int;
      
      private var var_2910:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2844 = param1;
         this.var_2843 = param2;
         this.var_2912 = param3;
         this.var_2911 = param4;
         this.var_2910 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2844,this.var_2843,this.var_2912,this.var_2911,int(this.var_2910)];
      }
      
      public function dispose() : void
      {
      }
   }
}
