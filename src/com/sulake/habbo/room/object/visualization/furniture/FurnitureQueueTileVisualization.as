package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1631:int = 3;
      
      private static const const_1659:int = 2;
      
      private static const const_1658:int = 1;
      
      private static const const_1660:int = 15;
       
      
      private var var_349:Array;
      
      private var var_1348:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_349 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1659)
         {
            this.var_349 = new Array();
            this.var_349.push(const_1658);
            this.var_1348 = const_1660;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1348 > 0)
         {
            --this.var_1348;
         }
         if(this.var_1348 == 0)
         {
            if(this.var_349.length > 0)
            {
               super.setAnimation(this.var_349.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
