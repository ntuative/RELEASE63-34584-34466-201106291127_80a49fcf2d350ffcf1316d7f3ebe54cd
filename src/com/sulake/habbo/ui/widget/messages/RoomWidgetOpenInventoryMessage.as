package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_747:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1755:String = "inventory_effects";
      
      public static const const_1300:String = "inventory_badges";
      
      public static const const_1957:String = "inventory_clothes";
      
      public static const const_1754:String = "inventory_furniture";
       
      
      private var var_2939:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_747);
         this.var_2939 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2939;
      }
   }
}
