package com.bypay.lc.syn.client;

import java.net.InetSocketAddress;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.log4j.Logger;
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
	
	protected static final Logger log = Logger.getLogger(ConnectFutureFactory.class);

	/**
	 * 空闲连接池
	 */
	private static BlockingQueue<Connection> idlePool = new LinkedBlockingQueue<Connection>();
	
	/**
	 * 使用中的连接池
	 */
	public static BlockingQueue<Connection> activePool = new LinkedBlockingQueue<Connection>();

	/**
	 * 访问计数器
	 */
	private static AtomicInteger counter = new AtomicInteger(0);

	/**
	 * 连接池默认初始化连接数量
	 */
	private final static int DEFAULT_POOL_SIZE = 400;
	
	private static IoConnector connector;
	
	private static ObjectClientHandler clientHandler;

	// 初始化连接池
	static {
		// 设置连接参数
		connector = new NioSocketConnector();
		connector.setConnectTimeoutMillis(30000);
		connector.getFilterChain().addLast("logger", new LoggingFilter());

		// 设置解码器为对象解码器
		connector.getFilterChain().addLast("codec",
				new ProtocolCodecFilter(new ObjectSerializationCodecFactory()));
		clientHandler = new ObjectClientHandler();

		connector.setHandler(clientHandler);
		createNewConnection(DEFAULT_POOL_SIZE);		
	}
	
	
	public static void createNewConnection(int size) {
		for (int i = 0; i < size; i++) {
			// 连接服务端
			ConnectFuture connection = connector.connect(new InetSocketAddress(
					"192.168.1.226", 18886));
			// 等待建立连接
			connection.awaitUninterruptibly(4000, TimeUnit.MICROSECONDS);
			connection.awaitUninterruptibly();
			Connection conn = new Connection();
			conn.setClientHandler(clientHandler);
			conn.setConnection(connection);
			try {
				idlePool.put(conn);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 获取连接
	 * 
	 * @author 唐延波
	 * @date 2015-1-15
	 * @param result
	 * @return
	 * @throws InterruptedException 
	 */
	public static Connection getConnection(Result result) throws InterruptedException {
		int count = counter.incrementAndGet();
		if (count > 1000000) {
			counter.set(0);
		}
		Connection connection = getConn();
		return connection;
	}
	
	public static Connection getConn() throws InterruptedException{
		long time1 = System.currentTimeMillis();
		Connection connection = null;
		connection = idlePool.take();			
		activePool.add(connection);
		long time2 = System.currentTimeMillis();
		//log.info("获取连接耗时:"+(time2-time1));
		return connection;
	}
	
	
	public static void close(Connection connection,Result result) throws InterruptedException{
		long time1 = System.currentTimeMillis();
		activePool.remove(connection);		
		idlePool.put(connection);			
		long time2 = System.currentTimeMillis();
		//log.info("关闭连接耗时:"+(time2-time1));
	}
	
	public static void main(String[] args) throws InterruptedException {
		BlockingQueue<Connection> pool = new LinkedBlockingQueue<Connection>();
		pool.put(new Connection());
		pool.poll();
		System.out.println(pool.size());
		Connection poll = pool.poll();
		System.out.println(poll);
	}
}
