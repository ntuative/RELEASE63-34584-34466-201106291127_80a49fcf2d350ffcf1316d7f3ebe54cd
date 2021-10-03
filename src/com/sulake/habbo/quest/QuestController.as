package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_49:HabboQuestEngine;
      
      private var var_526:QuestsList;
      
      private var var_449:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_374:QuestTracker;
      
      private var var_632:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_49 = param1;
         this.var_374 = new QuestTracker(this.var_49);
         this.var_526 = new QuestsList(this.var_49);
         this.var_449 = new QuestDetails(this.var_49);
         this._questCompleted = new QuestCompleted(this.var_49);
         this.var_632 = new NextQuestTimer(this.var_49);
      }
      
      public function onToolbarClick() : void
      {
         this.var_526.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_526.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_374.onQuest(param1);
         this.var_449.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_632.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_374.onQuestCompleted(param1);
         this.var_449.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_374.onQuestCancelled();
         this.var_449.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_632.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_374.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_526.onRoomExit();
         this.var_374.onRoomExit();
         this.var_449.onRoomExit();
         this.var_632.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_374.update(param1);
         this.var_632.update(param1);
         this.var_526.update(param1);
         this.var_449.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_49 = null;
         if(this.var_526)
         {
            this.var_526.dispose();
            this.var_526 = null;
         }
         if(this.var_374)
         {
            this.var_374.dispose();
            this.var_374 = null;
         }
         if(this.var_449)
         {
            this.var_449.dispose();
            this.var_449 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_632)
         {
            this.var_632.dispose();
            this.var_632 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_49 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_526;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_449;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_374;
      }
   }
}
