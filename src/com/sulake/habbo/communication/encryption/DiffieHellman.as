package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_963:BigInteger;
      
      private var var_2835:BigInteger;
      
      private var var_2176:BigInteger;
      
      private var var_2987:BigInteger;
      
      private var var_1677:BigInteger;
      
      private var var_2175:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1677 = param1;
         this.var_2175 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1677.toString() + ",generator: " + this.var_2175.toString() + ",secret: " + param1);
         this.var_963 = new BigInteger();
         this.var_963.fromRadix(param1,param2);
         this.var_2835 = this.var_2175.modPow(this.var_963,this.var_1677);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2176 = new BigInteger();
         this.var_2176.fromRadix(param1,param2);
         this.var_2987 = this.var_2176.modPow(this.var_963,this.var_1677);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2835.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2987.toRadix(param1);
      }
   }
}
