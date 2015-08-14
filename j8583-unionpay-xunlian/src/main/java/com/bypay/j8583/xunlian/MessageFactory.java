package com.bypay.j8583.xunlian;
/**
 * 解报文的接口
 * @author qjj
 *
 * @param <T>
 */
public interface MessageFactory<T extends Message>{
	public T createMessage();
	public T createMessage(byte[] data);
	public FieldCreater getFieldFactory();
	public void setFieldFactory(FieldCreater fieldFactory);

}
