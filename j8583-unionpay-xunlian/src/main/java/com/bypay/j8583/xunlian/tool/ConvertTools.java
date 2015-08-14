package com.bypay.j8583.xunlian.tool;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class ConvertTools
{
  public static byte[] hexStringToByte(String hexString)
  {
    if ((hexString == null) || (hexString.equals(""))) {
      return null;
    }
    hexString = hexString.toUpperCase();
    int length = hexString.length() / 2;
    char[] hexChars = hexString.toCharArray();
    byte[] d = new byte[length];
    for (int i = 0; i < length; i++) {
      int pos = i * 2;
      d[i] = ((byte)(charToByte(hexChars[pos]) << 4 | charToByte(hexChars[(pos + 1)])));
    }
    return d;
  }

  private static byte charToByte(char c)
  {
    byte b = (byte)"0123456789ABCDEF".indexOf(c);
    return b;
  }

  public static final String bytesToHexString(byte[] bArray)
  {
    StringBuffer sb = new StringBuffer(bArray.length * 2);

    for (int i = 0; i < bArray.length; i++) {
      String sTemp = Integer.toHexString(0xFF & bArray[i]);
      if (sTemp.length() < 2)
        sb.append(0);
      sb.append(sTemp.toUpperCase());
    }
    return sb.toString();
  }

  public static final Object bytesToObject(byte[] bytes)
    throws IOException, ClassNotFoundException
  {
    ByteArrayInputStream in = new ByteArrayInputStream(bytes);
    ObjectInputStream oi = new ObjectInputStream(in);
    Object o = oi.readObject();
    oi.close();
    return o;
  }

  public static final byte[] objectToBytes(Serializable s)
    throws IOException
  {
    ByteArrayOutputStream out = new ByteArrayOutputStream();
    ObjectOutputStream ot = new ObjectOutputStream(out);
    ot.writeObject(s);
    ot.flush();
    ot.close();
    return out.toByteArray();
  }

  public static final String objectToHexString(Serializable s) throws IOException
  {
    return bytesToHexString(objectToBytes(s));
  }

  public static final Object hexStringToObject(String hex) throws IOException, ClassNotFoundException
  {
    return bytesToObject(hexStringToByte(hex));
  }

  public static String bcd2Str(byte[] bytes)
  {
    StringBuffer temp = new StringBuffer(bytes.length * 2);

    for (int i = 0; i < bytes.length; i++) {
      temp.append((byte)((bytes[i] & 0xF0) >>> 4));
      temp.append((byte)(bytes[i] & 0xF));
    }
    return temp.toString().substring(0, 1).equalsIgnoreCase("0") ? temp
      .toString().substring(1) : temp.toString();
  }



  public static int bytes2int(byte[] resource) {
    int mask = 255;
    int temp = 0;
    int res = 0;
    byte[] b = new byte[4];
    System.arraycopy(resource, 0, b, 4 - resource.length, resource.length);
    for (int i = 0; i < 4; i++) {
      res <<= 8;
      temp = b[i] & mask;
      res |= temp;
    }
    return res;
  }

  public static byte[] int2bytes(int num) {
    byte[] b = new byte[4];

    for (int i = 0; i < 4; i++) {
      b[i] = ((byte)(num >>> 24 - i * 8));
    }
    return b;
  }
}