package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_896:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2844:int;
      
      private var var_2843:int;
      
      private var _color:uint;
      
      private var var_1251:int;
      
      private var var_2842:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_896);
         this.var_2844 = param1;
         this.var_2843 = param2;
         this._color = param3;
         this.var_1251 = param4;
         this.var_2842 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2844;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2843;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1251;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2842;
      }
   }
}
