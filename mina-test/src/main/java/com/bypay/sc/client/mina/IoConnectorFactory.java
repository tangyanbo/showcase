package com.bypay.sc.client.mina;

import java.net.InetSocketAddress;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.service.IoConnector;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.serialization.ObjectSerializationCodecFactory;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.transport.socket.nio.NioSocketConnector;

/**
 * 连接Factory.
 * 
 * @author 唐延波
 * @date 2014-8-26
 */
public class IoConnectorFactory {
	
	private static IoConnector connector;
	
	private static ObjectClientHandler clientHandler;
	
	static{		
		connector = new NioSocketConnector();
		connector.setConnectTimeoutMillis(30000);
		connector.getFilterChain().addLast("logger", new LoggingFilter());

		// 设置解码器为对象解码器
		connector.getFilterChain().addLast("codec",
				new ProtocolCodecFilter(new ObjectSerializationCodecFactory()));
		clientHandler = new ObjectClientHandler();
		connector.setHandler(clientHandler);
	}

	/**
	 * 初始化连接
	 * 
	 * @author 唐延波
	 * @date 2015-1-15
	 * @param clientHandler
	 * @return
	 */
	public static IoConnector getIoConnector() {
		return connector;
	}

	public static ObjectClientHandler getClientHandler() {
		return clientHandler;
	}
	
	

}
