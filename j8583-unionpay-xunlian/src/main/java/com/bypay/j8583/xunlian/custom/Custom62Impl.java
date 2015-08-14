package com.bypay.j8583.xunlian.custom;

import com.bypay.j8583.xunlian.CustomBinaryField;
import com.bypay.j8583.xunlian.domain.Custom62;



public class Custom62Impl implements CustomBinaryField<Custom62>
{

	@Override
	public Custom62 decodeField(String value)
	{
		//62=0060941DA9DD2954AD9FC6F13C3573F6EC2F616386E7C1267652F8779F9400000000000000006595147AA4649169DD45ED29D96CBFEA170AE0A0DA42DABB

		Custom62 custom62 = new Custom62();
	/*	int size=Integer.parseInt(value.substring(0, 4));
		String body = value.substring(4, 4+size*2);*/
		custom62.setPinKey(value.substring(0, 32));
		custom62.setPinCheckValue(value.substring(32, 40));
		custom62.setMacKey(value.substring(40, 56));
		custom62.setMacCheckValue(value.substring(72,80));
		return custom62;
	}

	@Override
	public String encodeField(Custom62 custom62)
	{
		return null;
	}

	@Override
	public Custom62 decodeBinaryField(byte[] value, int offset, int length)
	{
		String body = new String(value);
		return decodeField(body);
	}

	@Override
	public byte[] encodeBinaryField(Custom62 value)
	{
		return null;
	}
	
	public static void main(String[] args)
	{
		
		Custom62Impl custom62Impl = new Custom62Impl();
	Custom62 custom62=	custom62Impl.decodeField("00605C59A1EC2B337055615CA1D3060FB9075816178841CD47CDC74F65910000000000000000EEF935FC216B3930AAFEBAE81BA6E547BCB2938B0390C40E");
		System.out.println(custom62.getPinKey());
		System.out.println(custom62.getPinCheckValue());
		System.out.println(custom62.getMacKey());
		System.out.println(custom62.getMacCheckValue());
		System.out.println(custom62.getTrackKey());
		System.out.println(custom62.getTrackCheckValue());
	}
}
