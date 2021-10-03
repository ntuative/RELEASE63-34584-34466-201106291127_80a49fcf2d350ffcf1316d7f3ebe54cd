package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1383:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1031:int;
      
      private var var_845:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var _figure:String;
      
      private var var_1544:int;
      
      private var var_2007:String;
      
      private var var_1962:String;
      
      private var var_1964:String;
      
      private var var_1132:Vector.<FriendNotification>;
      
      private var var_2977:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1964 = param3;
         this.var_2007 = param4;
         this.var_1031 = param5;
         this.var_845 = param6;
         this._allowFollow = param7;
         this._figure = param8;
         this.var_1544 = param9;
         this.var_1962 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1031;
      }
      
      public function get online() : Boolean
      {
         return this.var_845;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1544;
      }
      
      public function get motto() : String
      {
         return this.var_2007;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1962;
      }
      
      public function get realName() : String
      {
         return this.var_1964;
      }
      
      public function get logEventId() : int
      {
         return this.var_2977;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1132)
         {
            this.var_1132 = new Vector.<FriendNotification>();
         }
         return this.var_1132;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1031 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_845 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1544 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2007 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1962 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1964 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2977 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1383;
      }
   }
}
