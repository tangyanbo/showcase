package com.bypay.j8583.xunlian.mina;

import org.apache.log4j.Logger;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;

import com.bypay.j8583.xunlian.tool.DataConverter;

public class ClientHandler extends IoHandlerAdapter
{
	private static Logger logger = Logger.getLogger(ClientHandler.class);

	public ClientHandler()
	{
		logger.info("ClientHandler create");
	}

	@Override
	public void messageReceived(IoSession session, Object message) throws Exception
	{
		logger.info("ClientHandler-messageReceived-------sasas");
		
	   byte[] msg = (byte[]) message;
	   
	   logger.info(DataConverter.getHexStr(msg));
	   session.setAttribute("res", msg);

		synchronized (session)
		{
			session.notify();
		}


	}

	@Override
	public void sessionClosed(IoSession session) throws Exception
	{
		logger.info("ClientHandler-sessionClosed");
	}

	@Override
	public void messageSent(IoSession session, Object message) throws Exception
	{

		logger.info("ClientHandler-messageSent");

		/*
		 * IoBuffer buffer = IoBuffer.allocate(1024);
		 * buffer.put((byte[])message); buffer.flip(); if (!(buffer.position()
		 * == buffer.limit())) { session.write(buffer); }
		 */

	}

	@Override
	public void sessionOpened(IoSession session) throws Exception
	{
		logger.info("ClientHandler-sessionOpened");
	}

	@Override
	public void sessionCreated(IoSession session) throws Exception
	{
		//SocketSessionConfig cfg = (SocketSessionConfig) session.getConfig();
		/*
		 * cfg.setReceiveBufferSize(2 * 1024 * 1024); cfg.setReadBufferSize(2 *
		 * 1024 * 1024); cfg.setKeepAlive(true); cfg.setSoLinger(0);
		 * //这个是根本解决问题的设置
		 */
		//cfg.setReuseAddress(true);
		logger.info("ClientHandler-sessionCreated");
	}

	@Override
	public void sessionIdle(IoSession session, IdleStatus status) throws Exception
	{
		logger.info("ClientHandler-sessionIdle");
	}

	@Override
	public void exceptionCaught(IoSession session, Throwable cause) throws Exception
	{
		logger.info(cause.getMessage());
		cause.printStackTrace();
		logger.info("ClientHandler-exceptionCaught");
	}

}
