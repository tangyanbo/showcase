package com.bypay.mina.handler;

import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;

/**
 * ClientHandler
 * 
 * @author 唐延波
 * @date 2015-1-20
 * 
 */
public class ClientTimerHandler extends IoHandlerAdapter {

	@Override
	public void sessionCreated(IoSession session) throws Exception {
		// session 创建时调用
		session.write("test23444444444442342342342342342423423" +
				"423423423423423423423423424324323423423423423423" +
				"4234sfdfgdgdfdssdfsdffsfsdfsdf" +
				"sdfsdfsfsdfsdfsdfsdfsdfsdfsdfdsgggggggggggggggggggggggg" +
				"ggggggggggggggggggggggggggggggggggggggggggg" +
				"ggggggggggggggggggggggggggggggggggggg" +
				"gggggggggggggggggggggggggggggggggggg" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj" +
				"kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk" +
				"ggggggggggggggggggggggggggggggggggggggggggg" +
				"ggggggggggggggggggggggggggggggggggggg" +
				"gggggggggggggggggggggggggggggggggggg" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj" +
				"ggggggggggggggggggggggggggggggggggggggggggg" +
				"ggggggggggggggggggggggggggggggggggggg" +
				"gggggggggggggggggggggggggggggggggggg" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj" +
				"kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk" +
				"ggggggggggggggggggggggggggggggggggggggggggg" +
				"ggggggggggggggggggggggggggggggggggggg" +
				"gggggggggggggggggggggggggggggggggggg" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj" +
				"ggggggggggggggggggggggggggggggggggggggggggg" +
				"ggggggggggggggggggggggggggggggggggggg" +
				"gggggggggggggggggggggggggggggggggggg" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj" +
				"kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk" +
				"ggggggggggggggggggggggggggggggggggggggggggg" +
				"ggggggggggggggggggggggggggggggggggggg" +
				"gggggggggggggggggggggggggggggggggggg" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh" +
				"jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj" +
				"kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk" +
				"kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk" +
				"8888888888888888888888888888888888888");
	}

	@Override
	public void messageReceived(IoSession session, Object message)
			throws Exception {
		// 异步接收消息
		String str = message.toString();
		System.out.println("接收服务端消息：" + str);
	}

	@Override
	public void exceptionCaught(IoSession session, Throwable cause)
			throws Exception {
		// 出现异常
		cause.printStackTrace();
		session.close(true);
	}

	@Override
	public void sessionIdle(IoSession session, IdleStatus status)
			throws Exception {
		// 心跳
		System.out.println("客户端ide:");
	}
}
