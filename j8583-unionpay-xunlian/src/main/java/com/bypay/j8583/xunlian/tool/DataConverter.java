package com.bypay.j8583.xunlian.tool;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;

/**
 * 数据类型转换
 * 
 * @author 唐延波
 * @date 2015年8月13日
 */
public class DataConverter {

	public static String xor(String s1, String s2) {
		StringBuilder sb = new StringBuilder();
		byte[] buf1 = s1.getBytes();
		byte[] buf2 = s2.getBytes();
		for (int i = 0; i < s1.length(); i++) {
			sb.append(buf1[i] ^ buf2[i]);
		}
		return sb.toString();
	}

	public static String getRandom(int len) {
		StringBuffer temp = new StringBuffer("");
		char[] tempChar = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		Random random = new Random();
		int count = 0;
		while (len > count) {
			int i = random.nextInt(tempChar.length);
			if ((i >= 0) && (i < tempChar.length)) {
				temp.append(tempChar[i]);
				count++;
			}
		}
		return temp.toString();
	}

	/**
	 * 字符串转bcd码
	 * @author 唐延波
	 * @date 2015年8月13日
	 * @param s
	 * @return
	 */
	public static byte[] str2bcdOne(String s) {
		//如果不是2的倍数,则补0
		if (s.length() % 2 != 0) {
			s = s + "0";
		}
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		//获得字符数组
		char[] cs = s.toCharArray();
		int high = 0;
		int low = 0;
		for (int i = 0; i < cs.length; i += 2) {
			if ((cs[i] >= '0') && (cs[i] <= '9'))
				//得到高位的十进制表示
				high = cs[i] - '0';
			else {
				//溢出
				high = cs[i] - '0' - 7;
			}

			if ((cs[(i + 1)] >= '0') && (cs[(i + 1)] <= '9'))
				//得到低位的十进制表示
				low = cs[(i + 1)] - '0';
			else {
				low = cs[(i + 1)] - '0' - 7;
			}
			baos.write(high << 4 | low);
		}
		return baos.toByteArray();
	}

	public static byte[] str2bcdTwo(String s) {
		if (s.length() % 2 != 0) {
			s = "0" + s;
		}
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		char[] cs = s.toCharArray();
		int high = 0;
		int low = 0;
		for (int i = 0; i < cs.length; i += 2) {
			if ((cs[i] >= '0') && (cs[i] <= '9'))
				high = cs[i] - '0';
			else {
				high = cs[i] - '0' - 7;
			}

			if ((cs[(i + 1)] >= '0') && (cs[(i + 1)] <= '9'))
				low = cs[(i + 1)] - '0';
			else {
				low = cs[(i + 1)] - '0' - 7;
			}
			baos.write(high << 4 | low);
		}
		return baos.toByteArray();
	}

	/**
	 * 自定义新的转BCD的方法
	 * 
	 * @param asc
	 * @return
	 */
	public static byte[] str2Bcd(String asc) {
		if (asc.length() % 2 != 0) {
			asc = "0" + asc;
		}
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		char[] ch = asc.toCharArray();
		for (int i = 0; i < ch.length; i += 2) {
			int height = ch[i] - 48;
			// System.out.println(height+"---height");
			int low = ch[i + 1] - 48;
			out.write(height << 4 | low);

		}
		return out.toByteArray();

	}

	public static String bcd2Str(byte[] b) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < b.length; i++) {
			int h = (b[i] & 0xFF) >> 4 > 9 ? ((b[i] & 0xFF) >> 4) + 55 : ((b[i] & 0xFF) >> 4) + 48;
			sb.append((char) h);
			int l = (b[i] & 0xF) > 9 ? (b[i] & 0xF) + 55 : (b[i] & 0xF) + 48;
			sb.append((char) l);
		}
		return sb.toString();
	}

	public static String printHexStr(byte[] b) {
		StringBuffer sbuffer = new StringBuffer("");
		for (int i = 0; i < b.length; i++) {
			String hex = Integer.toHexString(b[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			sbuffer.append("[" + hex + "]");
		}
		sbuffer.append("\n");
		return sbuffer.toString();
	}

	public static String getHexStr(byte[] b) {
		StringBuffer sbuffer = new StringBuffer("");
		for (int i = 0; i < b.length; i++) {
			String hex = Integer.toHexString(b[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			sbuffer.append(hex);
		}
		return sbuffer.toString();
	}

	public static String getLog(byte[] b) {
		StringBuffer sbuffer = new StringBuffer("\r\n");
		for (int i = 0; i < b.length; i++) {
			if ((i != 0) && (i % 16 == 0))
				sbuffer.append("\r\n");
			if ((i % 8 == 0) && (i % 16 != 0))
				sbuffer.append("\t");
			String hex = Integer.toHexString(b[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			sbuffer.append("[" + hex + "]");
		}
		sbuffer.append("\r\n");
		return sbuffer.toString();
	}

	public static String getMacBufferStr(byte[] b) {
		StringBuffer sbuffer = new StringBuffer("");
		for (int i = 0; i < b.length; i++) {
			String hex = Integer.toHexString(b[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			sbuffer.append(hex);
		}
		return sbuffer.toString();
	}

	public static String printLog(String log) {
		log = log.replace("]=[", "] [");

		return log;
	}

	public static byte[] str2ASCII(String str) {
		byte[] b = (byte[]) null;
		try {
			b = str.getBytes("GBK");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return b;
	}

	public static String ascii2Str(byte[] data) {
		return new String(data, Charset.forName("GBK"));
	}

	public static byte[] str2hex(String str) {
		char[] digital = "0123456789ABCDEF".toCharArray();
		StringBuffer sb = new StringBuffer("");
		byte[] bs = str.getBytes();

		for (int i = 0; i < bs.length; i++) {
			int bit = (bs[i] & 0xF0) >> 4;
			sb.append(digital[bit]);
			bit = bs[i] & 0xF;
			sb.append(digital[bit]);
		}
		return sb.toString().getBytes();
	}

	public static String fillStr(String string, char filler, int totalLength, boolean atEnd) {
		int currentLength = string.getBytes(Charset.forName("GBK")).length;
		int delta = totalLength - currentLength;

		for (int i = 0; i < delta; i++) {
			if (atEnd)
				string = string + filler;
			else {
				string = filler + string;
			}
		}
		return string;
	}

	public static String fillStrOfZero(String string, int totalLength) {
		int currentLength = string.getBytes(Charset.forName("GBK")).length;
		int delta = totalLength - currentLength;
		for (int i = 0; i < delta; i++) {
			string = '0' + string;
		}
		return string;
	}

	public static String fill(String source, String fillStr, Integer destLen, String fillPos) {
		if ((fillStr == null) || ("".equals(fillStr))) {
			fillStr = " ";
		}
		StringBuffer dest = new StringBuffer(source);
		for (int i = source.getBytes(Charset.forName("GBK")).length; i < destLen
				.intValue(); i += fillStr.getBytes(Charset.forName("GBK")).length) {
			if ("L".equals(fillPos))
				dest.insert(0, fillStr);
			else {
				dest.append(fillStr);
			}
		}
		return dest.substring(0, destLen.intValue()).toString();
	}

	public static byte[] joinBytes(byte[] a1, byte[] a2) {
		byte[] result = new byte[a1.length + a2.length];
		System.arraycopy(a1, 0, result, 0, a1.length);
		System.arraycopy(a2, 0, result, a1.length, a2.length);
		return result;
	}

	public static byte[] packBigMap(List<Integer> domainNo, byte[] bitMap) {
		for (int i = 0; i < domainNo.size(); i++) {
			//byte数组的位置
			int bitMapNum = ((Integer) domainNo.get(i)).intValue() / 8;
			
			//余位
			int bitMapBit = ((Integer) domainNo.get(i)).intValue() % 8;
			if ((bitMapBit == 0) && (bitMapNum != 0)) {
				bitMapNum--;
			}
			if (bitMapBit == 0)
				bitMap[bitMapNum] = ((byte) (bitMap[bitMapNum] & 0xFF | 0x1));
			else {
				bitMap[bitMapNum] = ((byte) (bitMap[bitMapNum] & 0xFF | 128 >>> bitMapBit - 1));
			}
		}
		return bitMap;
	}

	public static byte[] packBigMap(Set<Integer> domainNo, byte[] bitMap) {
		//TODO
		for (Iterator<Integer> it = domainNo.iterator(); it.hasNext();) {
			Integer temp = it.next();
			//byte数组的位置
			int bitMapNum = temp.intValue() / 8;

			//余位
			int bitMapBit = temp.intValue() % 8;
			if ((bitMapBit == 0) && (bitMapNum != 0)) {
				bitMapNum--;
			}
			//
			//byte b = (byte)(bitMap[bitMapNum] & 0xFF);
			
			
			//
			if (bitMapBit == 0){
				//余数为0则在byte的最低位0000 0001
				//& 0xFF没有什么作用，只是转换为16进制
				bitMap[bitMapNum] = ((byte) (bitMap[bitMapNum] & 0xFF | 0x1));
			}				
			else {
				//余数不为0,则从高位算起,第bitMapbit位置1,即右移bitMapBit - 1位
				bitMap[bitMapNum] = ((byte) ((bitMap[bitMapNum] & 0xFF) | (128 >>> bitMapBit - 1)));
				String byteToBinary = byteToBinary(bitMap[bitMapNum]);
				System.out.println(byteToBinary);
			}

		}

		return bitMap;
	}

	public static boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if ((ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS)
				|| (ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS)
				|| (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A)
				|| (ub == Character.UnicodeBlock.GENERAL_PUNCTUATION)
				|| (ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION)
				|| (ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS)) {
			return true;
		}
		return false;
	}

	public static boolean isExitChinese(String content) {
		char[] chars = content.toCharArray();
		for (int i = 0; i < chars.length; i++) {
			Character.UnicodeBlock ub = Character.UnicodeBlock.of(chars[i]);
			if ((ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS)
					|| (ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS)
					|| (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A)
					|| (ub == Character.UnicodeBlock.GENERAL_PUNCTUATION)
					|| (ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION)
					|| (ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS)) {
				return true;
			}
		}
		return false;
	}

	public static int getDataLen(String str) {
		int length = str.length();
		char[] ch = str.toCharArray();
		for (int i = 0; i < ch.length; i++) {
			char c = ch[i];
			if (isChinese(c)) {
				length++;
			}
		}
		return length;
	}

	/**
	 * 字节数组转二进制字符串
	 * @author 唐延波
	 * @date 2015年8月13日
	 * @param bytes
	 * @return
	 */
	public static String byteToBinary(byte[] bytes) {
		StringBuilder sb = new StringBuilder(bytes.length * Byte.SIZE);
		for (int i = 0; i < Byte.SIZE * bytes.length; i++)
			sb.append((bytes[i / Byte.SIZE] << i % Byte.SIZE & 0x80) == 0 ? '0' : '1');
		return sb.toString();
	}
	
	/**
	 * 字节转二进制字符串
	 * @author 唐延波
	 * @date 2015年8月14日
	 * @return
	 */
	public static String byteToBinary(byte b) {
		byte[] bytes = new byte[1];
		bytes[0] = b;
		return byteToBinary(bytes);
	}
	
	/**
	 * 字符转字节
	 * @author 唐延波
	 * @date 2015年8月13日
	 * @param ch
	 * @return
	 */
	public static byte[] charToByte(char ch){  
	    int temp=(int)ch;  
	    byte[] b=new byte[2];  
	    for (int i=b.length-1;i>-1;i--){  
	      b[i] = new Integer(temp&0xff).byteValue();      //将最高位保存在最低位  
	      temp = temp >> 8;       //向右移8位  
	    }  
	    return b;  
	  }
	
	
	public static byte[] hexStringToByteArray(String digits)
	  {
	    ByteArrayOutputStream baos = new ByteArrayOutputStream();
	    for (int i = 0; i < digits.length(); i += 2) {
	      char c1 = digits.charAt(i);
	      if (i + 1 >= digits.length()) {
	        throw new IllegalArgumentException("hexUtil.odd");
	      }
	      char c2 = digits.charAt(i + 1);
	      byte b = 0;
	      if ((c1 >= '0') && (c1 <= '9'))
	        b = (byte)(b + (c1 - '0') * 16);
	      else if ((c1 >= 'a') && (c1 <= 'f'))
	        b = (byte)(b + (c1 - 'a' + 10) * 16);
	      else if ((c1 >= 'A') && (c1 <= 'F'))
	        b = (byte)(b + (c1 - 'A' + 10) * 16);
	      else
	        throw new IllegalArgumentException("hexUtil.bad");
	      if ((c2 >= '0') && (c2 <= '9'))
	        b = (byte)(b + (c2 - '0'));
	      else if ((c2 >= 'a') && (c2 <= 'f'))
	        b = (byte)(b + (c2 - 'a' + 10));
	      else if ((c2 >= 'A') && (c2 <= 'F'))
	        b = (byte)(b + (c2 - 'A' + 10));
	      else
	        throw new IllegalArgumentException("hexUtil.bad");
	      baos.write(b);
	    }
	    return baos.toByteArray();
	  }

	  public static StringBuffer convertHexStrToBinaryStr(String bitmap)
	  {
	    StringBuffer binaryStrBuff = new StringBuffer();
	    String division = "";
	    String bitmapBinary = "";
	    for (int i = 0; i < bitmap.length(); i += 4) {
	      division = bitmap.substring(i, i + 4);
	      int dec = Integer.valueOf(division, 16).intValue();
	      bitmapBinary = Integer.toBinaryString(dec);
	      bitmapBinary = Tools.leftFillZero(Long.parseLong(bitmapBinary), 16);
	      binaryStrBuff.append(bitmapBinary);
	    }
	    return binaryStrBuff;
	  }

	  public static StringBuffer convertBinaryStrToHexStr(StringBuffer binaryStrBuff)
	  {
	    StringBuffer hexStrBuff = new StringBuffer("");
	    String division = "";
	    String bitmap = "";
	    for (int i = 0; i < binaryStrBuff.length(); i += 4) {
	      division = binaryStrBuff.substring(i, i + 4);
	      int dec = Integer.valueOf(division, 2).intValue();
	      bitmap = Integer.toHexString(dec);
	      hexStrBuff.append(bitmap);
	    }
	    return hexStrBuff;
	  }

	  public static String convertByteArrayToHexStr(byte[] bytes)
	  {
	    StringBuffer sb = new StringBuffer(bytes.length * 2);
	    for (int i = 0; i < bytes.length; i++) {
	      sb.append(convertDigitToHexChar(bytes[i] >> 4));
	      sb.append(convertDigitToHexChar(bytes[i] & 0xF));
	    }
	    return sb.toString();
	  }

	  public static String convertByteArrayToHexStr2(byte[] bytes)
	  {
	    StringBuffer sb = new StringBuffer();
	    for (int i = 0; i < bytes.length; i++) {
	      sb.append(convertDigitToHexChar(bytes[i] >> 4));
	      sb.append(convertDigitToHexChar(bytes[i] & 0xF));
	      sb.append(",");
	    }
	    return sb.toString().substring(0, sb.length() - 1);
	  }

	  private static char convertDigitToHexChar(int value)
	  {
	    value &= 15;
	    if (value >= 10) {
	      return (char)(value - 10 + 65);
	    }
	    return (char)(value + 48);
	  }

	  public static String byteToHexStr(byte value) {
	    StringBuffer sb = new StringBuffer();
	    sb.append(convertDigitToHexChar(value >> 4));
	    sb.append(convertDigitToHexChar(value & 0xF));
	    return sb.toString();
	  }

	  public static byte[] intToByteArray(int value)
	  {
	    byte[] b = new byte[4];
	    for (int i = 0; i < 4; i++) {
	      int offset = (b.length - 1 - i) * 8;
	      b[i] = ((byte)(value >> offset & 0xFF));
	    }
	    return b;
	  }
	  
	  /**
	   * int 转二进制字符串
	   * @author 唐延波
	   * @date 2015年8月13日
	   * @param value
	   * @return
	   */
	  public static String intToBinary(int value){
		  byte[] intToByteArray = intToByteArray(value);
		  return byteToBinary(intToByteArray);
	  }

	  public static byte[] toUnsignedByteArray(byte[] source)
	  {
	    int model = 256;
	    if ((source == null) || (source.length == 0)) {
	      return new byte[0];
	    }
	    byte[] dest = new byte[source.length];
	    for (int i = 0; i < source.length; i++) {
	      int tmp = (source[i] + model) % model & 0xFF;
	      dest[i] = ((byte)tmp);
	    }
	    return dest;
	  }

	  public static int byteArrayToInt(byte[] b)
	  {
	    if (b.length > 4) {
	      throw new RuntimeException("more than 4 byte");
	    }
	    int value = 0;
	    for (int i = 0; i < b.length; i++) {
	      int shift = (b.length - 1 - i) * 8;
	      value += ((b[i] & 0xFF) << shift);
	    }
	    return value;
	  }

	  public static byte[] copyFromFirst(byte[] rSource, int copyLen) throws Exception {
	    byte[] aResult = new byte[copyLen];
	    System.arraycopy(rSource, 0, aResult, 0, copyLen);
	    return aResult;
	  }

	  public static byte[] copyToLast(byte[] rSource, int copyLen) throws Exception {
	    byte[] aResult = new byte[copyLen];
	    System.arraycopy(rSource, rSource.length - copyLen, aResult, 0, copyLen);
	    return aResult;
	  }

	  public static byte[] copyToLast(byte[] rSource, byte[] rDest) {
	    System.arraycopy(rSource, 0, rDest, rDest.length - rSource.length, rSource.length);
	    return rDest;
	  }

	  public static byte[] copy(byte[] rSource, int startPos, int len) throws Exception
	  {
	    byte[] aResult = new byte[len];
	    System.arraycopy(rSource, startPos, aResult, 0, len);
	    return aResult;
	  }

	  public static byte[] copy(byte[] rSource, int startPos, int len, byte[] rDest) {
	    System.arraycopy(rSource, startPos, rDest, 0, len);
	    return rDest;
	  }

	  public static byte[] copy(byte[] rSource) {
	    byte[] aResult = new byte[rSource.length];
	    System.arraycopy(rSource, 0, aResult, 0, aResult.length);
	    return aResult;
	  }

	  public static int[] copy(int[] rSource) {
	    int[] aResult = new int[rSource.length];
	    System.arraycopy(rSource, 0, aResult, 0, aResult.length);
	    return aResult;
	  }

	  public static boolean equals(byte[] a1, byte[] a2) {
	    if ((a1 == null) || (a2 == null)) {
	      return a1 == a2;
	    }
	    int nLength = a1.length;
	    if (nLength != a2.length) {
	      return false;
	    }
	    for (int i = 0; i < nLength; i++) {
	      if ((a1[i] ^ a2[i]) != 0) {
	        return false;
	      }
	    }
	    return true;
	  }

	  public static boolean equals(int[] a1, int[] a2) {
	    if ((a1 == null) || (a2 == null)) {
	      return a1 == a2;
	    }
	    int nLength = a1.length;
	    if (nLength != a2.length) {
	      return false;
	    }
	    for (int i = 0; i < nLength; i++) {
	      if (a1[i] != a2[i]) {
	        return false;
	      }
	    }
	    return true;
	  }

	  public static byte[] join(byte[] a1, byte[] a2) {
	    byte[] result = new byte[a1.length + a2.length];
	    System.arraycopy(a1, 0, result, 0, a1.length);
	    System.arraycopy(a2, 0, result, a1.length, a2.length);
	    return result;
	  }

	  public static int[] join(int[] a1, int[] a2) {
	    int[] result = new int[a1.length + a2.length];
	    System.arraycopy(a1, 0, result, 0, a1.length);
	    System.arraycopy(a2, 0, result, a1.length, a2.length);
	    return result;
	  }

	public static void main(String[] args) throws UnsupportedEncodingException {
		byte a = 0x20;
		String byteToBinary = byteToBinary(a);
		byte b = (byte) (a & 0xFF);
		String bb = byteToBinary(b);
		System.out.println(byteToBinary);
		System.out.println(bb);
		int i = 128;
		String intToBinary = intToBinary(i);
		System.out.println(intToBinary);
	}
}