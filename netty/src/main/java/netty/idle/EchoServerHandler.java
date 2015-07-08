package netty.idle;

import io.netty.channel.ChannelHandlerAdapter;
import io.netty.channel.ChannelHandlerContext;

/**
 * EchoServerHandler
 * @author 唐延波
 * @date 2015年7月7日
 */
public class EchoServerHandler extends ChannelHandlerAdapter {

	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception{
		System.out.println("Server received: " + msg);
		ctx.write(msg);		
	}

	@Override
	public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
		//必须调用flush才能真正写消息		
		ctx.flush();
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		cause.printStackTrace();
		ctx.close();
	}

}
