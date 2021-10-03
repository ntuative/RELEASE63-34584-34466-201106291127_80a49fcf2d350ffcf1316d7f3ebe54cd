package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.ui.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _type:int;
      
      private var var_1892:int;
      
      private var var_1013:int = 1;
      
      private var var_1513:int;
      
      private var var_525:Boolean = false;
      
      private var _isSelected:Boolean = false;
      
      private var var_1893:Boolean = false;
      
      private var var_747:BitmapData;
      
      private var var_2589:Date;
      
      public function Effect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get duration() : int
      {
         return this.var_1892;
      }
      
      public function get effectsInInventory() : int
      {
         return this.var_1013;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_525;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_1893;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get icon() : BitmapData
      {
         return this.var_747;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_747;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(this.var_525)
         {
            _loc1_ = this.var_1513 - (new Date().valueOf() - this.var_2589.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return this.var_1513;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1892 = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         this.var_1513 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_1893 = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_747 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         this.var_1013 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !this.var_525)
         {
            this.var_2589 = new Date();
         }
         this.var_525 = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --this.var_1013;
         if(this.var_1013 < 0)
         {
            this.var_1013 = 0;
         }
         this.var_1513 = this.var_1892;
         this.var_525 = false;
         this.var_1893 = false;
      }
   }
}
