package com.bypay.lc.activemq.client;

import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;
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
public class ConnectFutureFactory {

	/**
	 * 连接池类
	 * 同步控制
	 */
	private static List<Connection> connectionPool = new ArrayList<Connection>(10);

	/**
	 * 访问计数器
	 */
	private static AtomicInteger counter = new AtomicInteger(0);
	
	/**
	 * 连接池默认初始化连接数量
	 */
	private final static int DEFAULT_POOL_SIZE = 10;

	// 初始化连接池
	static {
		for (int i = 0; i < DEFAULT_POOL_SIZE; i++) {
			ConnectFuture cf = initConnection();
			Connection conn = new Connection();
			conn.setConnection(cf);
			connectionPool.add(conn);
		}
	}

	/**
	 * 初始化连接
	 * @author 唐延波
	 * @date 2015-1-15
	 * @param clientHandler
	 * @return
	 */
	private static ConnectFuture initConnection() {
		// 设置连接参数
		IoConnector connector = new NioSocketConnector();
		connector.setConnectTimeoutMillis(30000);
		connector.getFilterChain().addLast("logger", new LoggingFilter());

		// 设置解码器为对象解码器
		connector.getFilterChain().addLast("codec",
				new ProtocolCodecFilter(new ObjectSerializationCodecFactory()));
		ObjectClientHandler clientHandler = new ObjectClientHandler();

		connector.setHandler(clientHandler);
		

		// 连接服务端
		ConnectFuture connection = connector.connect(new InetSocketAddress(
				"localhost", 18886));

		// 等待建立连接
		connection.awaitUninterruptibly(4000, TimeUnit.MICROSECONDS);
		connection.awaitUninterruptibly();
		return connection;
	}

	/**
	 * 获取连接
	 * @author 唐延波
	 * @date 2015-1-15
	 * @param result
	 * @return
	 */
	public static ConnectFuture getConnection() {
		counter.incrementAndGet();
		int count = counter.get();
		if(count>1000000){
			counter.set(0);
		}
		int index = counter.get() % connectionPool.size();
		Connection connection = connectionPool.get(index);
		return connection.getConnection();
	}
}
