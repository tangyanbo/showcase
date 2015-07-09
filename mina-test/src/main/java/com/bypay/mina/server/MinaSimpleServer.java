package com.bypay.mina.server;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.charset.Charset;
import org.apache.mina.core.service.IoAcceptor;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.textline.TextLineCodecFactory;
import org.apache.mina.transport.socket.nio.NioSocketAcceptor;
import com.bypay.mina.handler.TimeServerHandler;

/**
 * 最简单的Mina Server
 * @author 唐延波
 * @date 2015-2-22
 *
 */
public class MinaSimpleServer {

	private static final int PORT = 9123;
	
	private static final String HOST = "localhost";

	public static void main(String[] args) throws IOException {
		// 接收者
		IoAcceptor acceptor = new NioSocketAcceptor();
		//设置读缓冲,传输的内容必须小于此缓冲
		acceptor.getSessionConfig().setReadBufferSize(2048);
		// 设置编码器
		acceptor.getFilterChain().addLast(
				"codec",
				new ProtocolCodecFilter(new TextLineCodecFactory(Charset
						.forName("UTF-8"))));

		//设置Handler
		acceptor.setHandler(new TimeServerHandler());

		// 绑定端口,启动服务，并开始处理远程客户端请求
		acceptor.bind(new InetSocketAddress(HOST,PORT));
		System.out.println("服务端启动成功");
	}

}
