package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1109:int = 20;
      
      private static const const_712:int = 10;
      
      private static const const_1630:int = 31;
      
      private static const const_1631:int = 32;
      
      private static const const_711:int = 30;
       
      
      private var var_349:Array;
      
      private var var_760:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_349 = new Array();
         super();
         super.setAnimation(const_711);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_760)
            {
               this.var_760 = true;
               this.var_349 = new Array();
               this.var_349.push(const_1630);
               this.var_349.push(const_1631);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_712)
         {
            if(this.var_760)
            {
               this.var_760 = false;
               this.var_349 = new Array();
               if(direction == 2)
               {
                  this.var_349.push(const_1109 + 5 - param1);
                  this.var_349.push(const_712 + 5 - param1);
               }
               else
               {
                  this.var_349.push(const_1109 + param1);
                  this.var_349.push(const_712 + param1);
               }
               this.var_349.push(const_711);
               return;
            }
            super.setAnimation(const_711);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_349.length > 0)
            {
               super.setAnimation(this.var_349.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
