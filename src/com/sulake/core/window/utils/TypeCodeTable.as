package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_976;
         param1["badge"] = const_767;
         param1["bitmap"] = const_461;
         param1["border"] = const_741;
         param1["border_notify"] = const_1888;
         param1["bubble"] = const_1009;
         param1["bubble_pointer_up"] = const_1237;
         param1["bubble_pointer_right"] = const_1278;
         param1["bubble_pointer_down"] = const_1373;
         param1["bubble_pointer_left"] = const_1321;
         param1["button"] = const_646;
         param1["button_thick"] = const_949;
         param1["button_icon"] = const_1777;
         param1["button_group_left"] = const_926;
         param1["button_group_center"] = const_889;
         param1["button_group_right"] = const_1004;
         param1["canvas"] = const_848;
         param1["checkbox"] = const_974;
         param1["closebutton"] = const_1324;
         param1["container"] = const_394;
         param1["container_button"] = const_772;
         param1["display_object_wrapper"] = const_821;
         param1["dropmenu"] = const_627;
         param1["dropmenu_item"] = const_532;
         param1["frame"] = const_401;
         param1["frame_notify"] = const_1821;
         param1["header"] = const_870;
         param1["html"] = const_1204;
         param1["icon"] = const_1319;
         param1["itemgrid"] = const_1221;
         param1["itemgrid_horizontal"] = const_495;
         param1["itemgrid_vertical"] = const_731;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_421;
         param1["itemlist_vertical"] = const_415;
         param1["label"] = const_979;
         param1["maximizebox"] = const_1973;
         param1["menu"] = const_1946;
         param1["menu_item"] = const_1907;
         param1["submenu"] = const_1380;
         param1["minimizebox"] = const_2023;
         param1["notify"] = const_1944;
         param1["null"] = const_778;
         param1["password"] = const_828;
         param1["radiobutton"] = const_898;
         param1["region"] = const_334;
         param1["restorebox"] = const_2032;
         param1["scaler"] = const_565;
         param1["scaler_horizontal"] = const_1977;
         param1["scaler_vertical"] = const_1870;
         param1["scrollbar_horizontal"] = const_596;
         param1["scrollbar_vertical"] = const_796;
         param1["scrollbar_slider_button_up"] = const_1358;
         param1["scrollbar_slider_button_down"] = const_1186;
         param1["scrollbar_slider_button_left"] = const_1366;
         param1["scrollbar_slider_button_right"] = const_1275;
         param1["scrollbar_slider_bar_horizontal"] = const_1356;
         param1["scrollbar_slider_bar_vertical"] = const_1295;
         param1["scrollbar_slider_track_horizontal"] = const_1262;
         param1["scrollbar_slider_track_vertical"] = const_1268;
         param1["scrollable_itemlist"] = const_1795;
         param1["scrollable_itemlist_vertical"] = const_503;
         param1["scrollable_itemlist_horizontal"] = const_1342;
         param1["selector"] = const_998;
         param1["selector_list"] = const_736;
         param1["submenu"] = const_1380;
         param1["tab_button"] = const_892;
         param1["tab_container_button"] = const_1287;
         param1["tab_context"] = const_404;
         param1["tab_content"] = const_1335;
         param1["tab_selector"] = const_994;
         param1["text"] = const_895;
         param1["input"] = const_847;
         param1["toolbar"] = const_1987;
         param1["tooltip"] = const_398;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
