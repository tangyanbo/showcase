package com.bypay.j8583.xunlian;
/**
 * 所用自定义域实现
 * @author qjj
 *
 * @param <T>
 */
public interface CustomField<T>
{
	public T decodeField(String value);
	public String encodeField(T value);
}
