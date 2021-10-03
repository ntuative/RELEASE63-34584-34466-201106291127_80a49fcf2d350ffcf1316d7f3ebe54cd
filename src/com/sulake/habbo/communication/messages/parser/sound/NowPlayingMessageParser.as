package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1797:int;
      
      private var _currentPosition:int;
      
      private var var_1798:int;
      
      private var var_1800:int;
      
      private var var_1799:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1797;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1798;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1800;
      }
      
      public function get syncCount() : int
      {
         return this.var_1799;
      }
      
      public function flush() : Boolean
      {
         this.var_1797 = -1;
         this._currentPosition = -1;
         this.var_1798 = -1;
         this.var_1800 = -1;
         this.var_1799 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1797 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1798 = param1.readInteger();
         this.var_1800 = param1.readInteger();
         this.var_1799 = param1.readInteger();
         return true;
      }
   }
}
