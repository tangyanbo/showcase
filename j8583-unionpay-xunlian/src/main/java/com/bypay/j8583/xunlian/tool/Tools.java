package com.bypay.j8583.xunlian.tool;


import java.io.File;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Tools
{
  public static String leftFillZero(int num, int len)
  {
    NumberFormat nf = NumberFormat.getInstance();

    nf.setGroupingUsed(false);

    nf.setMaximumIntegerDigits(len);

    nf.setMinimumIntegerDigits(len);

    return nf.format(num);
  }

  public static String leftFillZero(long num, int len)
  {
    NumberFormat nf = NumberFormat.getInstance();

    nf.setGroupingUsed(false);

    nf.setMaximumIntegerDigits(len);

    nf.setMinimumIntegerDigits(len);

    return nf.format(num);
  }

  public static int bcd2int(byte[] bt)
  {
    int num = 0;
    byte[] nbt = new byte[bt.length * 2];
    for (int i = 0; i < bt.length; i++) {
      int h = (bt[i] & 0xFF) >> 4;
      if (h > 9) {
        h += 55;
      }
      else {
        h += 48;
      }
      nbt[(i * 2)] = ((byte)h);
      int l = bt[i] & 0xF;
      if (l > 9) {
        l += 55;
      }
      else {
        l += 48;
      }
      nbt[(i * 2 + 1)] = ((byte)l);
      num++;
    }
    String hexStr = new String(nbt);
    return Integer.valueOf(hexStr, 16).intValue();
  }

  public static boolean matchDigital(String val) {
    Pattern pattern = Pattern.compile("\\d+");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchVersion(String val) {
    Pattern pattern = Pattern.compile("[0-9]{1,2}[.][0-9]{1,2}[.][0-9]{1,2}");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchOrgCode(String val) {
    Pattern pattern = Pattern.compile("[a-fA-Z0-9]{8,11}");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchPosCode(String val) {
    Pattern pattern = Pattern.compile("[a-fA-Z0-9]{8}");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchDigitalAndF(String val)
  {
    Pattern pattern = Pattern.compile("[A-F0-9]+");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchData(String val) {
    Pattern pattern = Pattern.compile("(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchRole(String val) {
    Pattern pattern = Pattern.compile("(0|1|2|3|5)");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchSuperAuth(String val) {
    Pattern pattern = Pattern.compile("(0|1)");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchMasterKey(String val) {
    Pattern pattern = Pattern.compile("([A-F0-9]{16}|[A-F0-9]{32})");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }

  public static boolean matchNum(String val) {
    Pattern pattern = Pattern.compile("[0-9]{3}");
    Matcher matcher = pattern.matcher(val);
    return matcher.matches();
  }




  public static String getStringDate()
  {
    Date currentTime = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");

    String dateString = formatter.format(currentTime);
    return dateString;
  }

  public static String getStringTime()
  {
    Date currentTime = new Date();

    SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
    String dateString = formatter.format(currentTime);
    return dateString;
  }

  public static boolean delete(File dir)
  {
    if (dir.isDirectory())
    {
      File[] listFiles = dir.listFiles();
      for (int i = 0; (i < listFiles.length) && (delete(listFiles[i])); i++);
    }

    return dir.delete();
  }




  public static String addLeftSpace(String value, int length)
  {
    if (value == null) {
      value = "";
    }
    if (value.length() > length) {
      return value.substring(value.length() - length, value.length());
    }
    char[] c = new char[length];
    System.arraycopy(value.toCharArray(), 0, c, 
      0 + length - value.length(), value.length());
    for (int i = 0; i < length - value.length(); i++) {
      c[i] = ' ';
    }
    return new String(c);
  }

  public static String addRightSpace(String value, int length)
  {
    if (value == null) {
      value = "";
    }
    if (value.length() > length) {
      return value.substring(0, length - 1);
    }
    char[] c = new char[length];
    System.arraycopy(value.toCharArray(), 0, c, 0, value.length());
    for (int i = value.length(); i < c.length; i++) {
      c[i] = ' ';
    }
    return new String(c);
  }

  public static String addRightZero(String value, int length) {
    if (value == null) {
      value = "";
    }
    if (value.length() > length) {
      return value.substring(0, length - 1);
    }
    char[] c = new char[length];
    System.arraycopy(value.toCharArray(), 0, c, 0, value.length());
    for (int i = value.length(); i < c.length; i++) {
      c[i] = '0';
    }
    return new String(c);
  }

  public static String addLeftZero(String s, int length)
  {
    int old = s.length();
    if (length > old) {
      char[] c = new char[length];
      char[] x = s.toCharArray();
      if (x.length > length) {
        throw new IllegalArgumentException(
          "Numeric value is larger than intended length: " + s + 
          " LEN " + length);
      }
      int lim = c.length - x.length;
      for (int i = 0; i < lim; i++) {
        c[i] = '0';
      }
      System.arraycopy(x, 0, c, lim, x.length);
      return new String(c);
    }
    return s.substring(0, length);
  }

  public static String getRandomDigital(int n)
  {
    int[] array = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    Random rand = new Random();
    for (int i = 10; i > 1; i--) {
      int index = rand.nextInt(i);
      int tmp = array[index];
      array[index] = array[(i - 1)];
      array[(i - 1)] = tmp;
    }
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < n; i++) {
      sb.append(array[i]);
    }
    return sb.toString();
  }

  public static int compare(Object obj1, Object obj2)
  {
    int result = 0;
    if ((obj1 == null) || (obj2 == null)) return result;
    return Integer.valueOf(obj1.toString().split(" ")[0]).intValue() - Integer.valueOf(obj2.toString().split(" ")[0]).intValue();
  }
  
}