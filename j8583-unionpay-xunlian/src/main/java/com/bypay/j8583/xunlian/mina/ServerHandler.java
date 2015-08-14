package com.bypay.j8583.xunlian.mina;

import java.net.InetSocketAddress;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.log4j.Logger;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;

import com.bypay.j8583.xunlian.tool.DataConverter;




public class ServerHandler extends IoHandlerAdapter
{

	private static final Logger logger = Logger.getLogger(ServerHandler.class);
	ExecutorService service = Executors.newCachedThreadPool();

	public ServerHandler()
	{
		logger.info("serverhandler初始化");
		//ApplicationContextProvider.getInstance();
	}

	@Override
	public void messageReceived(IoSession session, Object message) throws Exception
	{
		InetSocketAddress addres = (InetSocketAddress) session.getRemoteAddress();
		String ip = addres.getAddress().getHostAddress();
		int port = addres.getPort();
		int localport = ((InetSocketAddress) (session.getLocalAddress())).getPort();
		logger.info("ip地址--" + ip);
		logger.info("端口---" + port);
		logger.info("本地端口" + localport);
		byte[] buffer = (byte[]) message;
		logger.info("服务器返回接收信息1" + DataConverter.getHexStr(buffer));
		// buffer.setAutoExpand(true);
		logger.info("session信息" + session);
		//logger.info("map对象" + Application.map);
		if ("0000".equals(new String(buffer)))
		{
			logger.info("多渠道心跳包返回");
			//session.write(buffer);
		} else
		{
			if ("9.234.3.105".equals(ip) || "9.234.39.40".equals(ip))
			{
				logger.info("服务器返回接收信息" + DataConverter.getHexStr(buffer));
				// session.write(IoBuffer.wrap("0000".getBytes()));
				//buffer.clear();
			} else
			{
			//	logger.info("map对象" + Application.map);

				if (50226 == localport)
				{
					logger.info("进入50224");
				//	Application.map.get(50224).write(buffer);

				}
				if (50227 == localport)
				{
					logger.info("进入50225");

				//	Application.map.get(50225).write(buffer);

				}

			}

		}
		//buffer.clear();

	}

	@Override
	public void sessionClosed(IoSession session) throws Exception
	{

		logger.info("sessionClosed调用");

	}

	@Override
	public void sessionCreated(IoSession session) throws Exception
	{
		/*
		 * SocketSessionConfig cfg = (SocketSessionConfig) session.getConfig();
		 * cfg.setReceiveBufferSize(2 * 1024 * 1024); cfg.setReadBufferSize(2 *
		 * 1024 * 1024); cfg.setKeepAlive(true); cfg.setSoLinger(0);
		 * //这个是根本解决问题的设置 cfg.setReuseAddress(true);
		 */
		logger.info("serverhandler-sessionCreate");
	}

	@Override
	public void messageSent(IoSession session, Object message) throws Exception
	{

		logger.info("serverhandler-sessionSent");
		// session.close(true);
		/*
		 * IoBuffer buffer = IoBuffer.allocate(1024);
		 * buffer.put("11111111".getBytes()); buffer.flip();
		 * session.write(buffer);
		 */
	}

	@Override
	public void sessionOpened(IoSession session) throws Exception
	{
		logger.info("serverhandler-sessionOpened");
	}

	@Override
	public void sessionIdle(IoSession session, IdleStatus status) throws Exception
	{
		logger.info("serverhandler-sessionIdle");
		// session.close(true);
	}

	@Override
	public void exceptionCaught(IoSession session, Throwable cause) throws Exception
	{
		cause.printStackTrace();
		logger.info("serverhandler-exceptionCaught");
	}

}
