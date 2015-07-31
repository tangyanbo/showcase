package com.zhenwudi.autogeneration.core;

/**
 * @author chenjia
 */
public class StringUtil {
	public static String getCamelCaseString(String inputString,
			boolean firstCharacterUppercase) {
		StringBuilder sb = new StringBuilder();

		boolean nextUpperCase = false;
		for (int i = 0; i < inputString.length(); i++) {
			char c = inputString.charAt(i);

			switch (c) {
			case '_':
			case '-':
			case '@':
			case '$':
			case '#':
			case ' ':
				if (sb.length() > 0) {
					nextUpperCase = true;
				}
				break;

			default:
				if (nextUpperCase) {
					sb.append(Character.toUpperCase(c));
					nextUpperCase = false;
				} else {
					sb.append(Character.toLowerCase(c));
				}
				break;
			}
		}

		if (firstCharacterUppercase) {
			sb.setCharAt(0, Character.toUpperCase(sb.charAt(0)));
		}

		return sb.toString();
	}

	/**
	 * add by yekai
	 * 
	 * @todo 替换换行、回车、tab符号;\r 换行、\t tab符合、\n 回车
	 * @param source
	 * @param target
	 * @return
	 */
	public static String clearMistyChars(String source, String target) {
		String ss = source.replaceAll("\r", target).replaceAll("\t", target)
				.replaceAll("\n", target);

		return ss;
	}

	/**
	 * add by yekai
	 * 
	 * @todo 判断字符串是空或者空白
	 * @param str
	 * @return
	 */
	public static boolean isNotNullAndBlank(Object str) {
		return !isNullOrBlank(str);
	}

	
	public static boolean isNullOrBlank(Object str) {
		if (null == str || str.toString().trim().equals("")) {
			return true;
		} else {
			return false;
		}
	}

}
