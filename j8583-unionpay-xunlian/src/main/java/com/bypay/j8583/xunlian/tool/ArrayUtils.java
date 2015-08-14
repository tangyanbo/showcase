package com.bypay.j8583.xunlian.tool;

public class ArrayUtils
{
  public static byte[] byteArrayCopy(byte[] source, int start, int len)
  {
    byte[] temp = new byte[len];
    for (int i = 0; i < len; i++) {
      if (start + i < source.length)
        temp[i] = source[(start + i)];
    }
    return temp;
  }
}