package com.bypay.mina.client;

import java.net.InetSocketAddress;
import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.serialization.ObjectSerializationCodecFactory;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.transport.socket.nio.NioSocketConnector;

import com.bypay.mina.handler.MyClientHandler;

/**
 * Mina客户端
 * @author 唐延波
 * @date 2015-1-20
 *
 */
public class MinaClient {
	
	private static int CONNECT_TIMEOUT = 1000;

	private static String HOSTNAME = "localhost";

	private static int PORT = 18886;

	/**
	 * @author 唐延波
	 * @throws InterruptedException
	 * @date 2014-11-4
	 */
	public static void main(String[] args) throws InterruptedException {
		NioSocketConnector connector = new NioSocketConnector();
		connector.setConnectTimeoutMillis(CONNECT_TIMEOUT);
		//设置读缓冲,传输的内容必须小于此缓冲
		connector.getSessionConfig().setReadBufferSize(2048*2048);
		//设置编码解码器
		connector.getFilterChain().addLast("codec",
				new ProtocolCodecFilter(new ObjectSerializationCodecFactory()));
		//设置日志过滤器
		connector.getFilterChain().addLast("logger", new LoggingFilter());
		//设置Handler
		connector.setHandler(new MyClientHandler());

		//获取连接，该方法为异步执行
		ConnectFuture future = connector.connect(new InetSocketAddress(
				HOSTNAME, PORT));
		//等待连接建立
		future.awaitUninterruptibly();
		//获取session
		IoSession session = future.getSession();

		//等待session关闭
		session.getCloseFuture().awaitUninterruptibly();
		//释放connector
		connector.dispose();

	}
}
