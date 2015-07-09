package com.bypay.mina.server.handle;

import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;

import com.bypay.mina.bean.TransInfo;

public class ObjectHandler extends IoHandlerAdapter {
	

	@Override
	public void sessionCreated(IoSession session) {
		//session创建时回调
		System.out.println("Session Created!");
	}

	@Override
	public void sessionClosed(IoSession session) throws Exception {	
		//session关闭时回调
		System.out.println("Session Closed!");
	}

	@Override
	public void sessionOpened(IoSession session) throws Exception {
		//session打开时回调
		System.out.println("Session Opened!");
	}

	@Override
	public void sessionIdle(IoSession session, IdleStatus status) {
		//心跳
		System.out.println("sessionIdle");
	}

	@Override
	public void exceptionCaught(IoSession session, Throwable cause) {
		//异常时回调
		cause.printStackTrace();
		//关闭session
		session.close(true);
	}

	@Override
	public void messageReceived(IoSession session, Object message)
			throws Exception {
		//接收消息
		TransInfo info = (TransInfo) message;		
		//System.out.println("接收返回消息成功");		
		//System.out.println("id:"+info.getId());	
		//System.out.println("msg:"+info.getMsg());
		//Thread.sleep(100);
		session.write(info);
		//session.close(true);
	}
}
