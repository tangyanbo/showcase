package com.bypay.j8583.xunlian.mina.filter;

import org.apache.log4j.Logger;
import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.keepalive.KeepAliveMessageFactory;

public class KeepAliveMessageFactoryImpl implements KeepAliveMessageFactory
{
	Logger logger = Logger.getLogger(KeepAliveMessageFactoryImpl.class);

	@Override
	public boolean isRequest(IoSession session, Object message)
	{
		return true;
	}

	@Override
	public boolean isResponse(IoSession session, Object message)
	{
		return false;
	}

	@Override
	public Object getRequest(IoSession session)
	{
		IoBuffer buffer = IoBuffer.wrap("0000".getBytes());
		logger.info(session+"session信息");
		logger.info("发送心跳包----");
		session.write(buffer);
		return null;
	}

	@Override
	public Object getResponse(IoSession session, Object request)
	{
		return null;
	}

}
