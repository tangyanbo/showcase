package com.bypay.j8583.xunlian.custom;

import com.bypay.j8583.xunlian.CustomBinaryField;
import com.bypay.j8583.xunlian.domain.Custom60;



public class Custom60Impl implements CustomBinaryField<Custom60>
{

	@Override
	public Custom60 decodeField(String value)
	{
		Custom60 custom60 = new Custom60();
		int size=Integer.parseInt(value.substring(0, 4));
		String body = value.substring(4,size+4);
		custom60.setMessageType(body.substring(0, 2));
		custom60.setBatchNo(body.substring(2,8));
		custom60.setNetWorkManag(body.substring(8, 11));
		return custom60;
	}

	@Override
	public String encodeField(Custom60 custom60)
	{
		
		StringBuilder sb = new StringBuilder();
		sb.append(custom60.getMessageType());
		sb.append(custom60.getBatchNo());
		sb.append(custom60.getNetWorkManag());
		return sb.toString();
		
	}

	@Override
	public Custom60 decodeBinaryField(byte[] value, int offset, int length)
	{
		String body = new String(value);
		return decodeField(body);
	}

	@Override
	public byte[] encodeBinaryField(Custom60 value)
	{
		return encodeField(value).getBytes();
	}
	
	public static void main(String[] args)
	{
		
		
/*		Custom60 custom60 = new Custom60();
		custom60.setBatchNo("000002");
		custom60.setMessageType("01");
		custom60.setNetWorkManag("004");
		
		Custom60Impl custom60Impl = new Custom60Impl();
		System.out.println(custom60Impl.encodeField(custom60));*/
		
		Custom60Impl custom60Impl = new Custom60Impl();
	Custom60 custom60 =	custom60Impl.decodeField("0011000000010040");
	System.out.println(custom60.getBatchNo());
	System.out.println(custom60.getMessageType());
	System.out.println(custom60.getNetWorkManag());
		
		
		
	}
}
