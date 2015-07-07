package netty.object;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.codec.serialization.ClassResolvers;
import io.netty.handler.codec.serialization.ObjectDecoder;
import io.netty.handler.codec.serialization.ObjectEncoder;

public class ObjectServer {

	private final int port;

	public ObjectServer(int port) {
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
					.childHandler(new ChannelInitializer<Channel>() {
						@Override
						protected void initChannel(Channel ch) throws Exception {
							//添加POJO对象解码器 禁止缓存类加载器
		                    ch.pipeline().addLast(new ObjectDecoder(1024,
		                    		ClassResolvers.cacheDisabled(this.getClass().getClassLoader())));
		                    //设置发送消息编码器
		                    ch.pipeline().addLast(new ObjectEncoder());
							ch.pipeline().addLast(new ObjectServerHandler());
						}
					});
			//Binds server, waits for server to close, and releases resources
			ChannelFuture f = b.bind().sync();
			System.out.println(ObjectServer.class.getName() + "started and listen on " + f.channel().localAddress());
			f.channel().closeFuture().sync();
		} finally {
			group.shutdownGracefully().sync();
		}
	}
	
	public static void main(String[] args) throws Exception {
		new ObjectServer(65535).start();
	}

}
