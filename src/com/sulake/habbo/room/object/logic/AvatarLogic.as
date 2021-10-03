package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.room.events.RoomObjectFurnitureActionEvent;
   import com.sulake.habbo.room.events.RoomObjectMoveEvent;
   import com.sulake.habbo.room.messages.RoomObjectAvatarCarryObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarChatUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarDanceUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarEffectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFigureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFlatControlUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarGestureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPlayerValueUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPostureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSelectedMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSignUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSleepUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarTypingUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUseObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarWaveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class AvatarLogic extends MovingObjectLogic
   {
      
      private static const const_1046:Number = 1.5;
      
      private static const const_1043:int = 28;
      
      private static const const_1044:int = 29;
      
      private static const const_1045:int = 500;
      
      private static const const_1436:int = 999999999;
       
      
      private var _selected:Boolean = false;
      
      private var var_517:Vector3d = null;
      
      private var var_771:int = 0;
      
      private var var_1451:int = 0;
      
      private var var_1439:int = 0;
      
      private var var_961:int = 0;
      
      private var var_770:int = 0;
      
      private var var_1178:int = 0;
      
      private var var_1438:int = 0;
      
      private var var_1454:int = 0;
      
      private var var_960:int = 0;
      
      private var var_1757:Boolean = false;
      
      private var var_1453:int = 0;
      
      private var var_1758:int = 0;
      
      private var var_1452:int = 0;
      
      public function AvatarLogic()
      {
         super();
         this.var_1758 = getTimer() + this.getBlinkInterval();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectMouseEvent.const_159,RoomObjectMoveEvent.const_403,RoomObjectMouseEvent.const_196,RoomObjectMouseEvent.const_187,RoomObjectFurnitureActionEvent.const_284,RoomObjectFurnitureActionEvent.const_324];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc1_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_968,object.getId(),object.getType());
               eventDispatcher.dispatchEvent(_loc1_);
            }
         }
         super.dispose();
         this.var_517 = null;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         if(param1 == null || object == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(param1 is RoomObjectAvatarPostureUpdateMessage)
         {
            _loc3_ = param1 as RoomObjectAvatarPostureUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_294,_loc3_.postureType);
            _loc2_.setString(RoomObjectVariableEnum.const_838,_loc3_.parameter);
            return;
         }
         if(param1 is RoomObjectAvatarChatUpdateMessage)
         {
            _loc4_ = param1 as RoomObjectAvatarChatUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_197,1);
            this.var_1439 = getTimer() + _loc4_.numberOfWords * 1000;
            return;
         }
         if(param1 is RoomObjectAvatarTypingUpdateMessage)
         {
            _loc5_ = param1 as RoomObjectAvatarTypingUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_540,Number(_loc5_.isTyping));
            return;
         }
         if(param1 is RoomObjectAvatarUpdateMessage)
         {
            _loc6_ = param1 as RoomObjectAvatarUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_203,_loc6_.dirHead);
            return;
         }
         if(param1 is RoomObjectAvatarGestureUpdateMessage)
         {
            _loc7_ = param1 as RoomObjectAvatarGestureUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_156,_loc7_.gesture);
            this.var_1438 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarWaveUpdateMessage)
         {
            _loc8_ = param1 as RoomObjectAvatarWaveUpdateMessage;
            if(_loc8_.isWaving)
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_286,1);
               this.var_1178 = getTimer() + 0;
            }
            else
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_286,0);
               this.var_1178 = 0;
            }
            return;
         }
         if(param1 is RoomObjectAvatarDanceUpdateMessage)
         {
            _loc9_ = param1 as RoomObjectAvatarDanceUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_535,_loc9_.danceStyle);
            return;
         }
         if(param1 is RoomObjectAvatarSleepUpdateMessage)
         {
            _loc10_ = param1 as RoomObjectAvatarSleepUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_250,Number(_loc10_.isSleeping));
            return;
         }
         if(param1 is RoomObjectAvatarPlayerValueUpdateMessage)
         {
            _loc11_ = param1 as RoomObjectAvatarPlayerValueUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_456,_loc11_.value);
            this.var_1452 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarEffectUpdateMessage)
         {
            _loc12_ = param1 as RoomObjectAvatarEffectUpdateMessage;
            _loc13_ = _loc12_.effect;
            _loc14_ = _loc12_.delayMilliSeconds;
            this.updateEffect(_loc13_,_loc14_,_loc2_);
            return;
         }
         if(param1 is RoomObjectAvatarCarryObjectUpdateMessage)
         {
            _loc15_ = param1 as RoomObjectAvatarCarryObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_345,_loc15_.itemType);
            if(_loc15_.itemType < const_1436)
            {
               this.var_960 = getTimer() + 100000;
               this.var_1757 = true;
            }
            else
            {
               this.var_960 = getTimer() + 1500;
               this.var_1757 = false;
            }
            return;
         }
         if(param1 is RoomObjectAvatarUseObjectUpdateMessage)
         {
            _loc16_ = param1 as RoomObjectAvatarUseObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_298,_loc16_.itemType);
            return;
         }
         if(param1 is RoomObjectAvatarSignUpdateMessage)
         {
            _loc17_ = param1 as RoomObjectAvatarSignUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_455,_loc17_.signType);
            this.var_1454 = getTimer() + 5000;
            return;
         }
         if(param1 is RoomObjectAvatarFlatControlUpdateMessage)
         {
            _loc18_ = param1 as RoomObjectAvatarFlatControlUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_961,_loc18_.rawData);
            _loc2_.setNumber(RoomObjectVariableEnum.const_1730,Number(_loc18_.isAdmin));
            return;
         }
         if(param1 is RoomObjectAvatarFigureUpdateMessage)
         {
            _loc19_ = param1 as RoomObjectAvatarFigureUpdateMessage;
            _loc20_ = _loc2_.getString(RoomObjectVariableEnum.const_218);
            _loc21_ = _loc19_.figure;
            _loc22_ = _loc19_.gender;
            if(_loc20_ != null && _loc20_.indexOf(".bds-") != -1)
            {
               _loc21_ += _loc20_.substr(_loc20_.indexOf(".bds-"));
            }
            _loc2_.setString(RoomObjectVariableEnum.const_218,_loc21_);
            _loc2_.setString(RoomObjectVariableEnum.AVATAR_GENDER,_loc22_);
            return;
         }
         if(param1 is RoomObjectAvatarSelectedMessage)
         {
            _loc23_ = param1 as RoomObjectAvatarSelectedMessage;
            this._selected = _loc23_.selected;
            this.var_517 = null;
            return;
         }
      }
      
      private function updateEffect(param1:int, param2:int, param3:IRoomObjectModelController) : void
      {
         if(param1 == const_1043)
         {
            this.var_771 = getTimer() + const_1045;
            this.var_1451 = const_1044;
         }
         else if(param3.getNumber(RoomObjectVariableEnum.const_652) == const_1044)
         {
            this.var_771 = getTimer() + const_1045;
            this.var_1451 = param1;
            param1 = const_1043;
         }
         else
         {
            if(param2 != 0)
            {
               this.var_771 = getTimer() + param2;
               this.var_1451 = param1;
               return;
            }
            this.var_771 = 0;
         }
         param3.setNumber(RoomObjectVariableEnum.const_652,param1);
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(object == null || param1 == null)
         {
            return;
         }
         var _loc3_:* = null;
         switch(param1.type)
         {
            case MouseEvent.CLICK:
               _loc3_ = "null";
               break;
            case MouseEvent.ROLL_OVER:
               _loc3_ = "null";
               eventDispatcher.dispatchEvent(new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_284,object.getId(),object.getType()));
               break;
            case MouseEvent.ROLL_OUT:
               _loc3_ = "null";
               eventDispatcher.dispatchEvent(new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_324,object.getId(),object.getType()));
         }
         if(_loc3_ != null)
         {
            _loc4_ = object.getId();
            _loc5_ = object.getType();
            if(eventDispatcher != null)
            {
               _loc6_ = new RoomObjectMouseEvent(_loc3_,param1.eventId,_loc4_,_loc5_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
               eventDispatcher.dispatchEvent(_loc6_);
            }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.update(param1);
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc2_ = object.getLocation();
               if(this.var_517 == null || this.var_517.x != _loc2_.x || this.var_517.y != _loc2_.y || this.var_517.z != _loc2_.z)
               {
                  if(this.var_517 == null)
                  {
                     this.var_517 = new Vector3d();
                  }
                  this.var_517.assign(_loc2_);
                  _loc3_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_403,object.getId(),object.getType());
                  eventDispatcher.dispatchEvent(_loc3_);
               }
            }
         }
         if(object != null && object.getModelController() != null)
         {
            this.updateActions(param1,object.getModelController());
         }
      }
      
      private function updateActions(param1:int, param2:IRoomObjectModelController) : void
      {
         if(this.var_1439 > 0)
         {
            if(param1 > this.var_1439)
            {
               param2.setNumber(RoomObjectVariableEnum.const_197,0);
               this.var_1439 = 0;
               this.var_770 = 0;
               this.var_961 = 0;
            }
            else if(this.var_961 == 0 && this.var_770 == 0)
            {
               this.var_770 = param1 + this.getTalkingPauseInterval();
               this.var_961 = this.var_770 + this.getTalkingPauseLength();
            }
            else if(this.var_770 > 0 && param1 > this.var_770)
            {
               param2.setNumber(RoomObjectVariableEnum.const_197,0);
               this.var_770 = 0;
            }
            else if(this.var_961 > 0 && param1 > this.var_961)
            {
               param2.setNumber(RoomObjectVariableEnum.const_197,1);
               this.var_961 = 0;
            }
         }
         if(this.var_1178 > 0 && param1 > this.var_1178)
         {
            param2.setNumber(RoomObjectVariableEnum.const_286,0);
            this.var_1178 = 0;
         }
         if(this.var_1438 > 0 && param1 > this.var_1438)
         {
            param2.setNumber(RoomObjectVariableEnum.const_156,0);
            this.var_1438 = 0;
         }
         if(this.var_1454 > 0 && param1 > this.var_1454)
         {
            param2.setNumber(RoomObjectVariableEnum.const_455,0);
            this.var_1454 = 0;
         }
         if(this.var_960 > 0)
         {
            if(param1 > this.var_960)
            {
               param2.setNumber(RoomObjectVariableEnum.const_345,0);
               this.var_960 = 0;
            }
            else if((this.var_960 - param1) % 10000 < 1000 && this.var_1757)
            {
               param2.setNumber(RoomObjectVariableEnum.const_298,1);
            }
            else
            {
               param2.setNumber(RoomObjectVariableEnum.const_298,0);
            }
         }
         if(param1 > this.var_1758)
         {
            param2.setNumber(RoomObjectVariableEnum.const_934,1);
            this.var_1758 = param1 + this.getBlinkInterval();
            this.var_1453 = param1 + this.getBlinkLength();
         }
         if(this.var_1453 > 0 && param1 > this.var_1453)
         {
            param2.setNumber(RoomObjectVariableEnum.const_934,0);
            this.var_1453 = 0;
         }
         if(this.var_771 > 0 && param1 > this.var_771)
         {
            param2.setNumber(RoomObjectVariableEnum.const_652,this.var_1451);
            this.var_771 = 0;
         }
         if(this.var_1452 > 0 && param1 > this.var_1452)
         {
            param2.setNumber(RoomObjectVariableEnum.const_456,0);
            this.var_1452 = 0;
         }
      }
      
      private function getTalkingPauseInterval() : int
      {
         return 100 + Math.random() * 200;
      }
      
      private function getTalkingPauseLength() : int
      {
         return 75 + Math.random() * 75;
      }
      
      private function getBlinkInterval() : int
      {
         return 4500 + Math.random() * 1000;
      }
      
      private function getBlinkLength() : int
      {
         return 50 + Math.random() * 200;
      }
      
      private function targetIsWarping(param1:IVector3d) : Boolean
      {
         var _loc2_:IVector3d = object.getLocation();
         if(param1 == null)
         {
            return false;
         }
         if(_loc2_.x == 0 && _loc2_.y == 0)
         {
            return false;
         }
         if(Math.abs(_loc2_.x - param1.x) > const_1046 || Math.abs(_loc2_.y - param1.y) > const_1046)
         {
            return true;
         }
         return false;
      }
   }
}
