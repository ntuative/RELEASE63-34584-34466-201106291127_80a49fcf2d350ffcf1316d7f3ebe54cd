package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_368:int = 1;
      
      public static const const_231:int = 2;
      
      public static const const_245:int = 3;
      
      public static const const_363:int = 4;
      
      public static const const_258:int = 5;
      
      public static const const_405:int = 1;
      
      public static const const_792:int = 2;
      
      public static const const_959:int = 3;
      
      public static const const_990:int = 4;
      
      public static const const_267:int = 5;
      
      public static const const_931:int = 6;
      
      public static const const_944:int = 7;
      
      public static const const_458:int = 8;
      
      public static const const_499:int = 9;
      
      public static const const_2197:int = 10;
      
      public static const const_812:int = 11;
      
      public static const const_572:int = 12;
       
      
      private var var_438:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_438 = new Array();
         this.var_438.push(new Tab(this._navigator,const_368,const_572,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_546));
         this.var_438.push(new Tab(this._navigator,const_231,const_405,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_546));
         this.var_438.push(new Tab(this._navigator,const_363,const_812,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1339));
         this.var_438.push(new Tab(this._navigator,const_245,const_267,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_546));
         this.var_438.push(new Tab(this._navigator,const_258,const_458,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1344));
         this.setSelectedTab(const_368);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_363;
      }
      
      public function get tabs() : Array
      {
         return this.var_438;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_438)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_438)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_438)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
