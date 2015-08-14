package com.bypay.j8583.xunlian.tool;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil
{
  public static boolean checkNumAndWord(String s)
  {
    Pattern num_word_pattern = Pattern.compile("^[A-Za-z0-9]+$");
    return num_word_pattern.matcher(s).matches();
  }

  public static boolean checkNum(String s)
  {
    Pattern num_pattern = Pattern.compile("^[0-9]+$");
    return num_pattern.matcher(s).matches();
  }

  public static boolean checkNum(String s, int num)
  {
    Pattern num_pattern = Pattern.compile("^[0-9]{" + num + "}$");
    return num_pattern.matcher(s).matches();
  }

  public static boolean isEmpty(String value)
  {
    return (value == null) || (value.trim().length() == 0);
  }

  public static String replaceMiddBlank(String s)
  {
    return s.replaceAll("\\s", " ");
  }

  public static String replaceOther(String str)
  {
    Pattern p = Pattern.compile("[^A-Z0-9,.]");
    Matcher m = p.matcher(str);
    str = m.replaceAll("");
    return str;
  }

  public static String processStr(String str) {
    str = replaceMiddBlank(str);
    str = replaceOther(str);
    return str;
  }

  public static boolean validString(String s) {
    return s.matches(".*[^A-Z0-9,.].*");
  }
  public static boolean isExitChinese(String content)
  {
      char chars[] = content.toCharArray();
      for(int i = 0; i < chars.length; i++)
      {
          Character.UnicodeBlock ub = Character.UnicodeBlock.of(chars[i]);
          if(ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || ub == Character.UnicodeBlock.GENERAL_PUNCTUATION || ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS)
              return true;
      }

      return false;
  }
}