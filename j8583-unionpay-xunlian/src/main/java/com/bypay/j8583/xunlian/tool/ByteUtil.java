package com.bypay.j8583.xunlian.tool;

import java.io.ByteArrayOutputStream;

public class ByteUtil
{
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

  public static String convertByteToHexStr(byte value) {
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
}