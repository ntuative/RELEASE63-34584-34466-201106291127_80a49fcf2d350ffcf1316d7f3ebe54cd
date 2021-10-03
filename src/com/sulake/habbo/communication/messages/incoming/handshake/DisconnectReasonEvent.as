package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2113:int = 0;
      
      public static const const_1856:int = 1;
      
      public static const const_1776:int = 2;
      
      public static const const_2186:int = 3;
      
      public static const const_2299:int = 4;
      
      public static const const_2264:int = 5;
      
      public static const const_1965:int = 10;
      
      public static const const_2333:int = 11;
      
      public static const const_2252:int = 12;
      
      public static const const_2168:int = 13;
      
      public static const const_2154:int = 16;
      
      public static const const_2111:int = 17;
      
      public static const const_2180:int = 18;
      
      public static const const_2173:int = 19;
      
      public static const const_2209:int = 20;
      
      public static const const_2297:int = 22;
      
      public static const const_2320:int = 23;
      
      public static const const_2261:int = 24;
      
      public static const const_2112:int = 25;
      
      public static const const_2268:int = 26;
      
      public static const const_2309:int = 27;
      
      public static const const_2121:int = 28;
      
      public static const const_2161:int = 29;
      
      public static const const_2229:int = 100;
      
      public static const const_2206:int = 101;
      
      public static const const_2302:int = 102;
      
      public static const const_2189:int = 103;
      
      public static const const_2119:int = 104;
      
      public static const const_2236:int = 105;
      
      public static const const_2155:int = 106;
      
      public static const const_2279:int = 107;
      
      public static const const_2214:int = 108;
      
      public static const const_2226:int = 109;
      
      public static const const_2238:int = 110;
      
      public static const const_2176:int = 111;
      
      public static const const_2162:int = 112;
      
      public static const const_2278:int = 113;
      
      public static const const_2312:int = 114;
      
      public static const const_2330:int = 115;
      
      public static const const_2213:int = 116;
      
      public static const const_2301:int = 117;
      
      public static const const_2210:int = 118;
      
      public static const const_2289:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1856:
            case const_1965:
               return "banned";
            case const_1776:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
