package com.bypay.j8583.xunlian.mina;

import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.executor.ExecutorFilter;
import org.apache.mina.filter.firewall.ConnectionThrottleFilter;
import org.apache.mina.filter.keepalive.KeepAliveFilter;
import org.apache.mina.filter.keepalive.KeepAliveRequestTimeoutHandler;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.filter.statistic.ProfilerTimerFilter;
import org.apache.mina.filter.util.ReferenceCountingFilter;
import org.apache.mina.transport.socket.SocketSessionConfig;
import org.apache.mina.transport.socket.nio.NioSocketConnector;

import com.bypay.j8583.xunlian.mina.filter.KeepAliveMessageFactoryImpl;
import com.bypay.j8583.xunlian.mina.filter.MyProtocolCodecFactory;

/**
 * mina客户端
 * 
 * @author qjj
 * 
 */

public class MinaClient
{
	private static NioSocketConnector connector = null;
	private static List<ConnectFuture> connectList = null;

	public static synchronized List<ConnectFuture> createClient(List<InetSocketAddress> addressList)
	{
		if (connector == null)
		{
			ConnectionThrottleFilter connectionThrottleFilter = new ConnectionThrottleFilter();
			connectionThrottleFilter.setAllowedInterval(1);
			connector = new NioSocketConnector(Runtime.getRuntime().availableProcessors() + 1);
			connectList = new ArrayList<ConnectFuture>();
			connector.getFilterChain().addLast("logger", new LoggingFilter());
			connector.getFilterChain().addLast("connectionThrottle", connectionThrottleFilter);
			connector.getFilterChain().addLast("profiler", new ProfilerTimerFilter());
			connector.getFilterChain().addLast("referenceCounting",
					new ReferenceCountingFilter(new ProfilerTimerFilter()));

			connector.getFilterChain().addLast("codec", new ProtocolCodecFilter(new MyProtocolCodecFactory()));
			KeepAliveFilter aliveFilter = new KeepAliveFilter(new KeepAliveMessageFactoryImpl(), KeepAliveRequestTimeoutHandler.DEAF_SPEAKER);
			aliveFilter.setRequestInterval(75);
			connector.getFilterChain().addLast("keepAlive", aliveFilter);
			connector.getFilterChain().addLast("threadPool", new ExecutorFilter(Executors.newCachedThreadPool()));
			SocketSessionConfig cfg = (SocketSessionConfig) connector.getSessionConfig();
			cfg.setKeepAlive(true);  
			//cfg.setReuseAddress(true);
			//cfg.setIdleTime(IdleStatus.WRITER_IDLE, 75);
			connector.setHandler(new ClientHandler());

			for (InetSocketAddress inetSocketAddress : addressList)
			{
				ConnectFuture cf = connector.connect(inetSocketAddress);
				connectList.add(cf);
			}
			return connectList;
		}
		return connectList;
	}
	  public static void dispose() {
		    connectList = null;
		    if (connector != null)
		      connector.dispose();
		  }
	  public static void close() {
		    if (connector != null)
		      connector = null;
		  }


}
