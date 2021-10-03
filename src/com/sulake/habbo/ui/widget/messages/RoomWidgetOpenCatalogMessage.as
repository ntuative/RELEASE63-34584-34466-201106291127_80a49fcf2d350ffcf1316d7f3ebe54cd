package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_779:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1279:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2274:String = "RWOCM_PIXELS";
      
      public static const const_2227:String = "RWOCM_CREDITS";
      
      public static const const_2170:String = "RWOCM_SHELLS";
       
      
      private var var_2734:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_779);
         this.var_2734 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2734;
      }
   }
}
