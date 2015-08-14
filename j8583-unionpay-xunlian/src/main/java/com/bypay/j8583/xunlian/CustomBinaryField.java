package com.bypay.j8583.xunlian;

public interface CustomBinaryField<T> extends CustomField<T>
{
	  public T decodeBinaryField(byte[] value, int offset, int length);

	   	public byte[] encodeBinaryField(T value);
}
