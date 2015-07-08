package netty.echo;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.util.CharsetUtil;

/**
 * EchoClientHandler
 * @author 唐延波
 * @date 2015年7月7日
 */
public class EchoClientHandler extends SimpleChannelInboundHandler<ByteBuf> {
	
	@Override
	public void channelActive(ChannelHandlerContext ctx) throws Exception {
		ctx.write(Unpooled.copiedBuffer("Netty rocks!",CharsetUtil.UTF_8));
		ctx.flush();
	}

	@Override
	protected void messageReceived(ChannelHandlerContext ctx, ByteBuf msg) throws Exception {
		ByteBuf readBytes = msg.readBytes(msg.readableBytes());
		System.out.println("Client received: " + new String(readBytes.array()));
		ctx.close();
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		cause.printStackTrace();
		ctx.close();
	}
}
