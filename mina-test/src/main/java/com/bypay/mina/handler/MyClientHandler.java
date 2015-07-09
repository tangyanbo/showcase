package com.bypay.mina.handler;

import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;

import com.bypay.mina.bean.TransInfo;

/**
 * ClientHandler
 * @author 唐延波
 * @date 2015-1-20
 *
 */
public class MyClientHandler extends IoHandlerAdapter {

	@Override
	public void sessionCreated(IoSession session) throws Exception {
		//session 创建时调用
		TransInfo info = new TransInfo();
		session.write(info);
	}

	@Override
	public void messageReceived(IoSession session, Object message)
			throws Exception {
		//异步接收消息
		TransInfo info = (TransInfo) message;
		session.close(true);
	}

	@Override
	public void exceptionCaught(IoSession session, Throwable cause)
			throws Exception {
		//出现异常
		cause.printStackTrace();
		session.close(true);
	}

	@Override
	public void sessionIdle(IoSession session, IdleStatus status)
			throws Exception {
		//心跳
		System.out.println("客户端ide:");
	}
}
