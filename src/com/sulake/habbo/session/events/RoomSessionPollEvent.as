package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_145:String = "RSPE_POLL_OFFER";
      
      public static const const_68:String = "RSPE_POLL_ERROR";
      
      public static const const_165:String = "RSPE_POLL_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_2122:String;
      
      private var var_1568:int = 0;
      
      private var var_2000:String = "";
      
      private var var_2001:String = "";
      
      private var var_1569:Array = null;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         this._id = param3;
         super(param1,param2);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_2122;
      }
      
      public function set summary(param1:String) : void
      {
         this.var_2122 = param1;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1568;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1568 = param1;
      }
      
      public function get startMessage() : String
      {
         return this.var_2000;
      }
      
      public function set startMessage(param1:String) : void
      {
         this.var_2000 = param1;
      }
      
      public function get endMessage() : String
      {
         return this.var_2001;
      }
      
      public function set endMessage(param1:String) : void
      {
         this.var_2001 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1569;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1569 = param1;
      }
   }
}
