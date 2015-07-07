package netty.example;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;

/**
 * EchoServer
 * @author 唐延波
 * @date 2015年7月7日
 */
public class EchoServer {

	private final int port;

	public EchoServer(int port) {
		this.port = port;
	}

	public void start() throws Exception {
		EventLoopGroup group = new NioEventLoopGroup();
		try {
			//create ServerBootstrap instance
			ServerBootstrap b = new ServerBootstrap();
			//Specifies NIO transport, local socket address
			//Adds handler to channel pipeline
			b.group(group).channel(NioServerSocketChannel.class).localAddress(port)
					.option(ChannelOption.SO_BACKLOG, 100)
					//log
					.handler(new LoggingHandler(LogLevel.INFO))
					.childHandler(new ChannelInitializer<Channel>() {
						@Override
						protected void initChannel(Channel ch) throws Exception {
							ch.pipeline().addLast(new EchoServerHandler());
						}
					});
			//Binds server, waits for server to close, and releases resources
			ChannelFuture f = b.bind().sync();
			System.out.println(EchoServer.class.getName() + "started and listen on " + f.channel().localAddress());
			f.channel().closeFuture().sync();
		} finally {
			group.shutdownGracefully().sync();
		}
	}
	
	public static void main(String[] args) throws Exception {
		new EchoServer(65535).start();
	}

}
