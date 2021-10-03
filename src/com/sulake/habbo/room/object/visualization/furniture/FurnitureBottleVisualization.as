package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1109:int = 20;
      
      private static const const_712:int = 9;
      
      private static const const_1631:int = -1;
       
      
      private var var_349:Array;
      
      private var var_760:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_349 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_760)
            {
               this.var_760 = true;
               this.var_349 = new Array();
               this.var_349.push(const_1631);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_760)
            {
               this.var_760 = false;
               this.var_349 = new Array();
               this.var_349.push(const_1109);
               this.var_349.push(const_712 + param1);
               this.var_349.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
