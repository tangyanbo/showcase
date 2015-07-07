package netty.object;

import io.netty.channel.ChannelHandlerAdapter;
import io.netty.channel.ChannelHandlerContext;

public class ObjectClientHandler extends ChannelHandlerAdapter {
	
	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
		
		ctx.write(msg);
		
	}
	
	@Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
		User user = new User();
		ctx.writeAndFlush(user);
    }
}
