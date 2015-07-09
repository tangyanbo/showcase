package com.bypay.lc.asyn.client;

import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.service.IoConnector;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.serialization.ObjectSerializationCodecFactory;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.transport.socket.nio.NioSocketConnector;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 连接Factory.
 * 
 * @author 唐延波
 * @date 2014-8-26
 */
public class ConnectFutureFactory {
	
	private static Logger log = LoggerFactory.getLogger(ConnectFutureFactory.class);

	/**
	 * 连接池类 同步控制
	 */
	public static List<Connection> connectionPool = new ArrayList<Connection>(
			10);

	/**
	 * 访问计数器
	 */
	private static AtomicInteger counter = new AtomicInteger(0);

	/**
	 * 连接池默认初始化连接数量
	 */
	private final static int DEFAULT_POOL_SIZE = 5;

	// 初始化连接池
	static {
		try {
			// 设置连接参数
			IoConnector connector = new NioSocketConnector();
			connector.setConnectTimeoutMillis(30000);
			connector.getFilterChain().addLast("logger", new LoggingFilter());

			// 设置解码器为对象解码器
			connector.getFilterChain().addLast("codec",
					new ProtocolCodecFilter(new ObjectSerializationCodecFactory()));
			ObjectClientHandler clientHandler = new ObjectClientHandler();

			connector.setHandler(clientHandler);

			
			for (int i = 0; i < DEFAULT_POOL_SIZE; i++) {
				// 连接服务端
				ConnectFuture connection = connector.connect(new InetSocketAddress(
						"localhost", 18886));
				
				
				// 等待建立连接
				connection.awaitUninterruptibly(4000, TimeUnit.MICROSECONDS);
				connection.awaitUninterruptibly();
				IoSession session = connection.getSession();
				ConcurrentHashMap<Long, Result> resultMap = new ConcurrentHashMap<Long, Result>(100,0.75f,16);
				session.setAttribute("resultMap", resultMap);
				Connection conn = new Connection();
				conn.setClientHandler(clientHandler);
				conn.setConnection(connection);
				connectionPool.add(conn);
			}
		} catch (Exception e) {
			log.error(e.getMessage(),e);
		}
	}

	/**
	 * 获取连接
	 * 
	 * @author 唐延波
	 * @date 2015-1-15
	 * @param result
	 * @return
	 */
	public static ConnectFuture getConnection(Result result) {		
		int index = (int)(result.getInfo().getId() % connectionPool.size());
		Connection connection = connectionPool.get(index);
		return connection.getConnection();
	}
}
