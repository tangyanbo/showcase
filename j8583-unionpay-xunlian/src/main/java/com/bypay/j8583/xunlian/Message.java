package com.bypay.j8583.xunlian;

import java.util.Map;

/**
 * @author qjj
 * 
 *         封装报文的接口
 * @see AbstractMessage {@link AbstractMessage}
 * @see ISO64Message
 * 
 */
public interface Message
{
	/**
	 * 生成iso8583mac block
	 * 
	 * @return
	 */
	public byte[] packeage();
	/**
	 * 生成iso8583报文
	 * @return
	 */
	public byte[] body(byte[] macBlock);

	/**
	 * 在报文中填充map域
	 * 
	 * @param fields
	 */
	public void setFields(Map<Integer, Field> fields);

	/**
	 * 在报文中拿到map域
	 * 
	 * @return
	 */
	public Map<Integer, Field> getFields();

	/**
	 * iso8583的head信息
	 * 
	 * @param isoHeader
	 */
	public void setIsoHeader(String isoHeader);

	/**
	 * 目前isoHeader的信息没有使用
	 * 
	 * @return
	 */
	public String getIsoHeader();

	/**
	 * 查询位图
	 * 
	 * @return
	 */
	public String getBitmap();

	/**
	 * 设置位图
	 * 
	 * @param bitmap
	 */
	public void setBitmap(String bitmap);

	/**
	 * 设置单个域
	 * 
	 * @param field
	 */
	public void setField(Field field);

	/**
	 * 拿到单个域,根据域的id
	 * 
	 * @param num
	 * @return
	 */
	public Field getField(int num);

}
