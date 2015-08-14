package com.bypay.j8583.xunlian.mina.filter;

import org.apache.log4j.Logger;
import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolEncoder;
import org.apache.mina.filter.codec.ProtocolEncoderOutput;

import com.bypay.j8583.xunlian.tool.DataConverter;



public class MyEncoder implements ProtocolEncoder
{
	private static Logger logger = Logger.getLogger(MyEncoder.class);

	@Override
	public void dispose(IoSession arg0) throws Exception
	{

	}

	@Override
	public void encode(IoSession arg0, Object message, ProtocolEncoderOutput out) throws Exception
	{
		byte[] value = message == null ? new byte[1] : (byte[]) message;

		IoBuffer buf = IoBuffer.allocate(value.length).setAutoExpand(true);
		buf.put(value);
		buf.flip();
		System.out.println(new StringBuffer("发送报文[").append(DataConverter.getHexStr(value)).append("]"));
		logger.info(new StringBuffer("发送报文[").append(DataConverter.getHexStr(value)).append("]"));
		out.write(buf);

	}

}
