package com.bypay.j8583.xunlian.mina;

import java.lang.management.ManagementFactory;
import java.net.InetSocketAddress;
import java.util.List;
import java.util.concurrent.Executors;

import javax.management.MBeanServer;
import javax.management.ObjectName;

import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.executor.ExecutorFilter;
import org.apache.mina.filter.firewall.ConnectionThrottleFilter;
import org.apache.mina.filter.logging.LogLevel;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.filter.statistic.ProfilerTimerFilter;
import org.apache.mina.filter.util.ReferenceCountingFilter;
import org.apache.mina.transport.socket.nio.NioSocketAcceptor;

import com.bypay.j8583.xunlian.mina.filter.MyProtocolCodecFactory;
import com.bypay.j8583.xunlian.mina.listener.MinaIoServiceListener;


public class MinaServer
{
	private static final int PORT = 8901;
	private static NioSocketAcceptor acceptor = null;

	private ServerHandler serverHandler;

	private MinaIoServiceListener minaIoServiceListener;

	private MinaClient minaClient;

	public synchronized void createServer(List<InetSocketAddress> addressList)
	{
		if (acceptor == null)
		{
			LoggingFilter logger = new LoggingFilter();
			logger.setExceptionCaughtLogLevel(LogLevel.DEBUG);
			logger.setMessageReceivedLogLevel(LogLevel.DEBUG);
			logger.setMessageSentLogLevel(LogLevel.DEBUG);
			logger.setSessionClosedLogLevel(LogLevel.DEBUG);
			logger.setSessionCreatedLogLevel(LogLevel.DEBUG);
			logger.setSessionIdleLogLevel(LogLevel.DEBUG);
			logger.setSessionOpenedLogLevel(LogLevel.DEBUG);
			ConnectionThrottleFilter connectionThrottleFilter = new ConnectionThrottleFilter();
			connectionThrottleFilter.setAllowedInterval(1);
			acceptor = new NioSocketAcceptor(Runtime.getRuntime().availableProcessors() + 1);
			acceptor.getFilterChain().addLast("logger", logger);
			acceptor.getFilterChain().addLast("connectionThrottle", connectionThrottleFilter);
			acceptor.getFilterChain().addLast("profiler", new ProfilerTimerFilter());
			acceptor.getFilterChain().addLast("referenceCounting",
					new ReferenceCountingFilter(new ProfilerTimerFilter()));
			acceptor.getFilterChain().addLast("codec", new ProtocolCodecFilter(new MyProtocolCodecFactory()));
			acceptor.getFilterChain().addLast("threadPool", new ExecutorFilter(Executors.newCachedThreadPool()));
			acceptor.addListener(minaIoServiceListener);
			acceptor.getSessionConfig().setIdleTime(IdleStatus.BOTH_IDLE, 5000);
			acceptor.getSessionConfig().setBothIdleTime(5000);
			// 设置的是主服务监听的端口可以重用
			//acceptor.setReuseAddress(true);
			// 设置每一个非主监听连接的端口可以重用
			acceptor.getSessionConfig().setKeepAlive(true);
			//acceptor.getSessionConfig().setReuseAddress(true);
			// 设置输入缓冲区的大小
			acceptor.getSessionConfig().setReceiveBufferSize(1024);
			// 设置输出缓冲区的大小
			acceptor.getSessionConfig().setSendBufferSize(10240);
			// 设置为非延迟发送，为true则不组装成大包发送，收到东西马上发出
			acceptor.getSessionConfig().setTcpNoDelay(true);
			// 设置主服务监听端口的监听队列的最大值为100，如果当前已经有100个连接，再新的连接来将被服务器拒绝
			acceptor.setBacklog(100);
			// 加入处理器（Handler）到Acceptor
			acceptor.setHandler(serverHandler);
			try
			{
				MBeanServer mBeanServer = ManagementFactory.getPlatformMBeanServer();
				//IoServiceMBean acceptorMBean = new IoServiceMBean(acceptor);
				ObjectName acceptorName = new ObjectName(acceptor.getClass().getPackage().getName()
						+ ":type=acceptor,name=" + acceptor.getClass().getSimpleName());
			//	mBeanServer.registerMBean(acceptorMBean, acceptorName);

				acceptor.bind(addressList);
			} catch (Exception e)
			{
				e.printStackTrace();
			}

		}
	}

	public static void unbind()
	{
		if (acceptor != null)
			acceptor.unbind();
	}

	public static void close()
	{
		if (acceptor != null)
		{
			acceptor.dispose();
			acceptor = null;
		}
	}

}
