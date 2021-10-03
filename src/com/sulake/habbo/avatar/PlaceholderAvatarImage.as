package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_917:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1154)
         {
            _structure = null;
            _assets = null;
            var_276 = null;
            var_315 = null;
            _figure = null;
            var_610 = null;
            var_360 = null;
            if(!var_1428 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_790 = null;
            var_1154 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_917[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_917[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_431:
               switch(_loc3_)
               {
                  case AvatarAction.const_888:
                  case AvatarAction.const_506:
                  case AvatarAction.const_402:
                  case AvatarAction.const_993:
                  case AvatarAction.const_445:
                  case AvatarAction.const_771:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_330:
            case AvatarAction.const_140:
            case AvatarAction.const_274:
            case AvatarAction.const_746:
            case AvatarAction.const_935:
            case AvatarAction.const_883:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
