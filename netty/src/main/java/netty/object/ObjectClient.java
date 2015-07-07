package netty.object;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.codec.serialization.ClassResolvers;
import io.netty.handler.codec.serialization.ObjectDecoder;
import io.netty.handler.codec.serialization.ObjectEncoder;
import java.net.InetSocketAddress;

/**
 * ObjectClient
 * @author 唐延波
 * @date 2015年7月7日
 */
public class ObjectClient {

	private final String host;
	private final int port;

	public ObjectClient(String host, int port) {
		this.host = host;
		this.port = port;
	}

	public void start() throws Exception {
		EventLoopGroup group = new NioEventLoopGroup();
		try {
			Bootstrap b = new Bootstrap();
			b.group(group).channel(NioSocketChannel.class).remoteAddress(new InetSocketAddress(host, port))
					.handler(new ChannelInitializer<SocketChannel>() {
						@Override
						protected void initChannel(SocketChannel ch) throws Exception {
							//添加POJO对象解码器 禁止缓存类加载器
		                    ch.pipeline().addLast(new ObjectDecoder(1024,
		                    		ClassResolvers.cacheDisabled(this.getClass().getClassLoader())));
		                    //设置发送消息编码器
		                    ch.pipeline().addLast(new ObjectEncoder());
							ch.pipeline().addLast(new ObjectClientHandler());
						}
					});
			ChannelFuture f = b.connect().sync();
			f.channel().closeFuture().sync();
		} finally {
			group.shutdownGracefully().sync();
		}
	}

	public static void main(String[] args) throws Exception {
		new ObjectClient("localhost", 65535).start();
	}
}
