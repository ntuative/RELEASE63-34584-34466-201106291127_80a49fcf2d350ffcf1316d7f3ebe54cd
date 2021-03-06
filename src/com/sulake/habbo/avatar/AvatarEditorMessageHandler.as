package com.sulake.habbo.avatar
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.habbo.avatar.enum.AvatarEditorInstanceId;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.avatar.WardrobeMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserRightsMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.avatar.GetWardrobeMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.avatar.SaveWardrobeOutfitMessageComposer;
   
   public class AvatarEditorMessageHandler
   {
       
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_27:HabboAvatarEditorManager;
      
      public function AvatarEditorMessageHandler(param1:HabboAvatarEditorManager, param2:IHabboCommunicationManager)
      {
         super();
         this.var_27 = param1;
         this._communication = param2;
         this._communication.addHabboConnectionMessageEvent(new WardrobeMessageEvent(this.onWardrobe));
         this._communication.addHabboConnectionMessageEvent(new UserRightsMessageEvent(this.onUserRights));
      }
      
      public function dispose() : void
      {
         this._communication = null;
         this.var_27 = null;
      }
      
      public function saveWardrobeOutfit(param1:int, param2:IOutfit) : void
      {
         if(this._communication == null)
         {
            return;
         }
         var _loc3_:* = new SaveWardrobeOutfitMessageComposer(param1,param2.figure,param2.gender);
         this._communication.getHabboMainConnection(null).send(_loc3_);
         _loc3_.dispose();
         _loc3_ = null;
      }
      
      public function getWardrobe() : void
      {
         if(this._communication == null)
         {
            return;
         }
         var _loc1_:* = new GetWardrobeMessageComposer();
         this._communication.getHabboMainConnection(null).send(_loc1_);
         _loc1_.dispose();
         _loc1_ = null;
      }
      
      private function onWardrobe(param1:WardrobeMessageEvent) : void
      {
         if(param1 == null || !this.var_27)
         {
            return;
         }
         var _loc2_:HabboAvatarEditor = this.var_27.getEditor(AvatarEditorInstanceId.const_226);
         if(_loc2_)
         {
            _loc2_.wardrobe.updateSlots(param1.state,param1.outfits);
         }
      }
      
      private function onUserRights(param1:IMessageEvent) : void
      {
         if(param1 == null || !this.var_27)
         {
            return;
         }
         var _loc2_:HabboAvatarEditor = this.var_27.getEditor(AvatarEditorInstanceId.const_226);
         if(_loc2_)
         {
            _loc2_.clubMemberLevel = this.var_27.sessionData.clubLevel;
            _loc2_.update();
         }
      }
   }
}
