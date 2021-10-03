package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2850:Boolean;
      
      private var var_2849:int;
      
      private var var_1790:Array;
      
      private var var_780:Array;
      
      private var var_781:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2850;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2849;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1790;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_780;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_781;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1790 = [];
         this.var_780 = [];
         this.var_781 = [];
         this.var_2850 = param1.readBoolean();
         this.var_2849 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1790.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_780.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_781.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
