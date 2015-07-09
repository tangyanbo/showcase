package com.bypay.mina.server;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.charset.Charset;

import org.apache.mina.core.service.IoAcceptor;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.textline.TextLineCodecFactory;
import org.apache.mina.filter.logging.LoggingFilter;
import org.apache.mina.transport.socket.nio.NioSocketAcceptor;

import com.bypay.mina.handler.TimeServerHandler;

public class TCPServer {
	
	private static final int PORT = 9123;

	public static void main(String[] args) throws IOException {
		// 接收者
		IoAcceptor acceptor = new NioSocketAcceptor();

		// 日志配置
		acceptor.getFilterChain().addLast("logger", new LoggingFilter());

		// 设置编码器
		acceptor.getFilterChain().addLast(
				"codec",
				new ProtocolCodecFilter(new TextLineCodecFactory(Charset
						.forName("UTF-8"))));

		acceptor.setHandler(new TimeServerHandler());
		
		//设置读缓冲
		acceptor.getSessionConfig().setReadBufferSize(2048);
		//设置心跳时间
		acceptor.getSessionConfig().setIdleTime(IdleStatus.BOTH_IDLE, 10);
		
		//绑定端口,启动服务，并开始处理远程客户端请求
		acceptor.bind( new InetSocketAddress(PORT) );
	}

}
