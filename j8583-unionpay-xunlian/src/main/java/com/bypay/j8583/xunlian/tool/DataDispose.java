package com.bypay.j8583.xunlian.tool;

import java.util.ArrayList;
import java.util.List;

public class DataDispose
{
	 public static List<Integer> getBitMapPost(byte[] b)
	  {
	    List list = new ArrayList();
	    int num = 0;
	    for (int i = 0; i < b.length; i++) {
	      for (int j = 7; j >= 0; j--) {
	        num++;
	        int shiftleft = b[i] >> j & 0x1;
	        if (shiftleft == 1) {
	          list.add(Integer.valueOf(num));
	        }
	      }
	    }
	    return list;
	  }
	 
	 public static void main(String[] args)
	{
		 
		 System.out.println();
		 byte[] bb= ByteUtil.hexStringToByteArray("603800810ad08010");
		 
		 
		List<Integer> map= getBitMapPost(bb);
		System.out.println(map);
		 
		 
		// getBitMapPost(ByteUtil.convertHexStrToBinaryStr("603800810ad08010"));
		
		 
		 
	}

}
