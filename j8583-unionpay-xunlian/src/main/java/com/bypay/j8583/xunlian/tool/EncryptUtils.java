package com.bypay.j8583.xunlian.tool;

import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class EncryptUtils
{
  public static final String ALGORITHM_DES = "DES";
  private static final byte[] bt8 = new byte[8];
  private static final IvParameterSpec iv = new IvParameterSpec(bt8);

  private static Key toKey(byte[] key)
    throws Exception
  {
    DESKeySpec dks = new DESKeySpec(key);
    SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
    SecretKey secretKey = keyFactory.generateSecret(dks);

    return secretKey;
  }

  public static String decrypt1(String data, String key)
    throws Exception
  {
    return bcd2Str(decrypt1(str2Bcd(data), str2Bcd(key)));
  }

  public static byte[] decrypt1(byte[] data, byte[] key)
    throws Exception
  {
    Key k = toKey(key);
    Cipher cipher = Cipher.getInstance("DES/CBC/NoPadding");
    cipher.init(2, k, iv);
    return cipher.doFinal(data);
  }

  public static String encrypt1(String data, String key)
    throws Exception
  {
    if ((data == null) || ("".equals(data))) return "";
    return bcd2Str(encrypt1(str2Bcd(data), str2Bcd(key)));
  }

  public static byte[] encrypt1(byte[] data, byte[] key)
    throws Exception
  {
    Key k = toKey(key);
    Cipher cipher = Cipher.getInstance("DES/CBC/NoPadding");
    cipher.init(1, k, iv);
    return cipher.doFinal(data);
  }

  public static String decrypt2(String data, String key)
    throws Exception
  {
    return bcd2Str(decrypt2(str2Bcd(data), str2Bcd(key)));
  }

  public static byte[] decrypt2(byte[] data, byte[] key)
    throws Exception
  {
    byte[] leftData = ArrayUtils.byteArrayCopy(data, 0, 8);
    byte[] rightData = ArrayUtils.byteArrayCopy(data, 8, 8);
    byte[] leftKey = ArrayUtils.byteArrayCopy(key, 0, 8);
    byte[] rightKey = ArrayUtils.byteArrayCopy(key, 8, 8);
    byte[] temp = new byte[16];
    byte[] decrypt1 = decrypt1(encrypt1(decrypt1(leftData, leftKey), rightKey), leftKey);
    byte[] decrypt2 = decrypt1(encrypt1(decrypt1(rightData, leftKey), rightKey), leftKey);
    for (int i = 0; i < 8; i++) {
      temp[i] = decrypt1[i];
      temp[(8 + i)] = decrypt2[i];
    }
    return temp;
  }

  public static String encrypt2(String data, String key)
    throws Exception
  {
    return bcd2Str(encrypt2(str2Bcd(data), str2Bcd(key)));
  }

  public static byte[] encrypt2(byte[] data, byte[] key)
    throws Exception
  {
    byte[] leftData = ArrayUtils.byteArrayCopy(data, 0, 8);
    byte[] rightData = ArrayUtils.byteArrayCopy(data, 8, 8);
    byte[] leftKey = ArrayUtils.byteArrayCopy(key, 0, 8);
    byte[] rightKey = ArrayUtils.byteArrayCopy(key, 8, 8);
    byte[] temp = new byte[16];
    byte[] encrypt1 = encrypt1(decrypt1(encrypt1(leftData, leftKey), rightKey), leftKey);
    byte[] encrypt2 = encrypt1(decrypt1(encrypt1(rightData, leftKey), rightKey), leftKey);
    for (int i = 0; i < 8; i++) {
      temp[i] = encrypt1[i];
      temp[(8 + i)] = encrypt2[i];
    }
    return temp;
  }

  public static String decrypt3(String data, String key)
    throws Exception
  {
    return bcd2Str(decrypt3(str2Bcd(data), str2Bcd(key)));
  }

  public static byte[] decrypt3(byte[] data, byte[] key)
    throws Exception
  {
    byte[] lData = ArrayUtils.byteArrayCopy(data, 0, 8);
    byte[] mData = ArrayUtils.byteArrayCopy(data, 8, 8);
    byte[] rData = ArrayUtils.byteArrayCopy(data, 16, 8);
    byte[] lKey = ArrayUtils.byteArrayCopy(key, 0, 8);
    byte[] mKey = ArrayUtils.byteArrayCopy(key, 8, 8);
    byte[] rKey = ArrayUtils.byteArrayCopy(key, 16, 8);
    byte[] temp = new byte[data.length];
    byte[] decrypt1 = decrypt1(encrypt1(decrypt1(lData, lKey), mKey), rKey);
    byte[] decrypt2 = decrypt1(encrypt1(decrypt1(mData, lKey), mKey), rKey);
    byte[] decrypt3 = decrypt1(encrypt1(decrypt1(rData, lKey), mKey), rKey);

    for (int i = 0; i < 8; i++) {
      temp[i] = decrypt1[i];
      if(data.length==16)
          temp[(8 + i)] = decrypt2[i];  
  
      if(data.length==24)
      temp[(16 + i)] = decrypt3[i];
    }
    return temp;
  }

  public static String encrypt3(String data, String key)
    throws Exception
  {
    return bcd2Str(encrypt3(str2Bcd(data), str2Bcd(key)));
  }

  public static byte[] encrypt3(byte[] data, byte[] key)
    throws Exception
  {
    byte[] lData = ArrayUtils.byteArrayCopy(data, 0, 8);
    byte[] mData = ArrayUtils.byteArrayCopy(data, 8, 8);
    byte[] rData = ArrayUtils.byteArrayCopy(data, 16, 8);
    byte[] lKey = ArrayUtils.byteArrayCopy(key, 0, 8);
    byte[] mKey = ArrayUtils.byteArrayCopy(key, 8, 8);
    byte[] rKey = ArrayUtils.byteArrayCopy(key, 16, 8);
    byte[] temp = new byte[24];
    byte[] encrypt1 = encrypt1(decrypt1(encrypt1(lData, lKey), mKey), rKey);
    byte[] encrypt2 = encrypt1(decrypt1(encrypt1(mData, lKey), mKey), rKey);
    byte[] encrypt3 = encrypt1(decrypt1(encrypt1(rData, lKey), mKey), rKey);
    for (int i = 0; i < 8; i++) {
      temp[i] = encrypt1[i];
      temp[(8 + i)] = encrypt2[i];
      temp[(16 + i)] = encrypt3[i];
    }
    return temp;
  }

  public static byte[] decryptBASE64(String key)
    throws Exception
  {
    return new BASE64Decoder().decodeBuffer(key);
  }

  public static String encryptBASE64(byte[] key)
    throws Exception
  {
    return new BASE64Encoder().encodeBuffer(key);
  }

  public static byte[] str2Bcd(String str)
  {
    if (str.length() % 2 != 0) {
      str = "0" + str;
    }
    byte[] bytes = new byte[str.length() / 2];
    for (int i = 0; i < bytes.length; i++) {
      bytes[i] = (byte)Integer.parseInt(str.substring(2 * i, 2 * i + 2), 16);
    }
    return bytes;
  }

  public static String bcd2Str(byte[] in) {
    StringBuilder sb = new StringBuilder(in.length);

    for (int i = 0; i < in.length; i++) {
      String sTemp = Integer.toHexString(0xFF & in[i]);
      if (sTemp.length() < 2) sb.append(0);
      sb.append(sTemp.toUpperCase());
    }
    return sb.toString();
  }

  public static String buQi(String str, int len, char c) {
    char[] chars = new char[len];
    for (int i = 0; i < len; i++) {
      chars[i] = (i < str.length() ? str.charAt(i) : c);
    }
    return new String(chars);
  }

  public static byte[] buQi(byte[] in, int len, byte c) {
    byte[] temp = new byte[len];
    for (int i = 0; i < len; i++) {
      if (i < in.length)
        temp[i] = in[i];
      else {
        temp[i] = c;
      }
    }
    return temp;
  }
  
  public static void main(String[] args) throws Exception
{
	
	 // String s="383E9BD922C1ABF9";
	  String s="44611334bdeeb7df".toUpperCase();
	  System.out.println(s);
	 byte[] bb= decrypt3(ByteUtil.hexStringToByteArray(s), ByteUtil.hexStringToByteArray("1111111111111111"));
System.out.println(ByteUtil.convertByteArrayToHexStr(bb));
    byte[] bb1=encrypt3(ByteUtil.hexStringToByteArray("06369369FFFFFFFF"),  ByteUtil.hexStringToByteArray("1111111111111111"));
    System.out.println(ByteUtil.convertByteArrayToHexStr(bb1));
}
  
}