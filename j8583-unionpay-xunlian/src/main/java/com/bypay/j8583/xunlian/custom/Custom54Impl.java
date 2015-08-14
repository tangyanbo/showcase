package com.bypay.j8583.xunlian.custom;

import com.bypay.j8583.xunlian.CustomBinaryField;
import com.bypay.j8583.xunlian.domain.Custom54;

public class Custom54Impl implements CustomBinaryField<Custom54>
{

	@Override
	public Custom54 decodeField(String value)
	{
		// 1002156C000000624712
		Custom54 custom54 = new Custom54();
		custom54.setAccountType(value.substring(0, 2));
		custom54.setBalanceType(value.substring(2, 4));
		custom54.setCurrencyCode(value.substring(4, 7));
		custom54.setBalanceSymbol(value.substring(7, 8));
		custom54.setBalance(value.substring(8, 20));
		return custom54;

	}

	@Override
	public String encodeField(Custom54 custom54)
	{
		return null;
	}

	@Override
	public Custom54 decodeBinaryField(byte[] value, int offset, int length)
	{
		String body = new String(value);
		return decodeField(body);
	}

	@Override
	public byte[] encodeBinaryField(Custom54 value)
	{
		return null;
	}

	public static void main(String[] args)
	{
		
	Custom54 custom54=	new Custom54Impl().decodeField("1002156C000000624712");
	System.out.println(custom54.getBalance());
		
	}
}
