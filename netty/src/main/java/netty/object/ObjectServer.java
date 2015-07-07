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

/**
 * ObjectServer
 * @author 唐延波
 * @date 2015年7月7日
 */
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
		                    //添加对象解码器 负责对序列化POJO对象进行解码 设置对象序列化最大长度为1M 防止内存溢出
		                    //设置线程安全的WeakReferenceMap对类加载器进行缓存 支持多线程并发访问  防止内存溢出 
		                    ch.pipeline().addLast(new ObjectDecoder(1024*1024,ClassResolvers.weakCachingConcurrentResolver(this.getClass().getClassLoader())));
		                    //添加对象编码器 在服务器对外发送消息的时候自动将实现序列化的POJO对象编码
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
