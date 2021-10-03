package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_180;
         param1["bound_to_parent_rect"] = const_104;
         param1["child_window"] = const_1288;
         param1["embedded_controller"] = const_1311;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_29;
         param1["internal_event_handling"] = const_913;
         param1["mouse_dragging_target"] = const_289;
         param1["mouse_dragging_trigger"] = const_448;
         param1["mouse_scaling_target"] = const_370;
         param1["mouse_scaling_trigger"] = const_509;
         param1["horizontal_mouse_scaling_trigger"] = const_296;
         param1["vertical_mouse_scaling_trigger"] = const_251;
         param1["observe_parent_input_events"] = const_1274;
         param1["optimize_region_to_layout_size"] = const_512;
         param1["parent_window"] = const_1374;
         param1["relative_horizontal_scale_center"] = const_213;
         param1["relative_horizontal_scale_fixed"] = const_152;
         param1["relative_horizontal_scale_move"] = const_435;
         param1["relative_horizontal_scale_strech"] = const_416;
         param1["relative_scale_center"] = const_1357;
         param1["relative_scale_fixed"] = const_953;
         param1["relative_scale_move"] = const_1334;
         param1["relative_scale_strech"] = const_1381;
         param1["relative_vertical_scale_center"] = const_222;
         param1["relative_vertical_scale_fixed"] = const_158;
         param1["relative_vertical_scale_move"] = const_264;
         param1["relative_vertical_scale_strech"] = const_369;
         param1["on_resize_align_left"] = const_823;
         param1["on_resize_align_right"] = const_601;
         param1["on_resize_align_center"] = const_607;
         param1["on_resize_align_top"] = const_827;
         param1["on_resize_align_bottom"] = const_501;
         param1["on_resize_align_middle"] = const_531;
         param1["on_accommodate_align_left"] = const_1260;
         param1["on_accommodate_align_right"] = const_591;
         param1["on_accommodate_align_center"] = const_884;
         param1["on_accommodate_align_top"] = const_1177;
         param1["on_accommodate_align_bottom"] = const_510;
         param1["on_accommodate_align_middle"] = const_854;
         param1["route_input_events_to_parent"] = const_544;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1389;
         param1["scalable_with_mouse"] = const_1214;
         param1["reflect_horizontal_resize_to_parent"] = const_650;
         param1["reflect_vertical_resize_to_parent"] = const_625;
         param1["reflect_resize_to_parent"] = const_344;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1293;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
