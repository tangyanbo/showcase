package com.bypay.j8583.xunlian;

import java.util.Map;

/**
 * 抽象类是接口Message的基本的实现
 * 
 * @see Message
 * 
 * @author qjj
 * 
 */
public abstract class AbstractMessage implements Message
{
	/**
	 * head信息
	 */
	protected String isoHeader="600100000000";
	/**
	 * 位图
	 */
	protected String bitmap;
	protected String macValue;
	public String getMacValue()
	{
		return macValue;
	}

	public void setMacValue(String macValue)
	{
		this.macValue = macValue;
	}

	/**
	 * tpdu
	 */
	protected String tpdu="6000030000";
	
	protected String messageType;

	public String getMessageType()
	{
		return messageType;
	}

	public void setMessageType(String messageType)
	{
		this.messageType = messageType;
	}

	public String getTpdu()
	{
		return tpdu;
	}

	public void setTpdu(String tpdu)
	{
		this.tpdu = tpdu;
	}

	/**
	 * 报文的长度
	 */
	protected int length;
	/**
	 * 放置报文域的地方
	 */
	protected Map<Integer, Field> fields;

	/**
	 * 这个实现放在具体的类中比如ISO64Message 可能要实现128位的位图的message
	 */
	@Override
	public abstract byte[] packeage();

	@Override
	public String getIsoHeader()
	{
		return isoHeader;
	}

	@Override
	public void setIsoHeader(String isoHeader)
	{
		this.isoHeader = isoHeader;
	}

	@Override
	public String getBitmap()
	{
		return bitmap;
	}

	@Override
	public void setBitmap(String bitmap)
	{
		this.bitmap = bitmap;
	}

	@Override
	public Map<Integer, Field> getFields()
	{
		return fields;
	}

	@Override
	public void setFields(Map<Integer, Field> fields)
	{
		this.fields = fields;
	}

	@Override
	public void setField(Field field)
	{
		fields.put(field.getNum(), field);
	}

	@Override
	public Field getField(int num)
	{
		return fields.get(num);
	}
}
