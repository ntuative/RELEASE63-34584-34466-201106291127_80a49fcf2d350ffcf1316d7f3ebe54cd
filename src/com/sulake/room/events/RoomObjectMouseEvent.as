package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_159:String = "ROE_MOUSE_CLICK";
      
      public static const const_196:String = "ROE_MOUSE_ENTER";
      
      public static const const_641:String = "ROE_MOUSE_MOVE";
      
      public static const const_187:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2234:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_525:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1886:String = "";
      
      private var var_2408:Boolean;
      
      private var var_2407:Boolean;
      
      private var var_2410:Boolean;
      
      private var var_2414:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1886 = param2;
         this.var_2408 = param5;
         this.var_2407 = param6;
         this.var_2410 = param7;
         this.var_2414 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1886;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2408;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2407;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2410;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2414;
      }
   }
}
