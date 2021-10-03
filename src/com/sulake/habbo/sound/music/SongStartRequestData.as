package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1945:int;
      
      private var var_2002:Number;
      
      private var var_2771:Number;
      
      private var var_2768:int;
      
      private var var_2770:Number;
      
      private var var_2769:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1945 = param1;
         this.var_2002 = param2;
         this.var_2771 = param3;
         this.var_2770 = param4;
         this.var_2769 = param5;
         this.var_2768 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1945;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2002 < 0)
         {
            return 0;
         }
         return this.var_2002 + (getTimer() - this.var_2768) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2771;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2770;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2769;
      }
   }
}
