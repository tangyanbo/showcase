package com.bypay.lc.asyn.client;

import java.util.concurrent.ConcurrentHashMap;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.mina.bean.TransInfo;


public class ObjectClientHandler extends IoHandlerAdapter {	
		
	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Override
	public void sessionCreated(IoSession session) {
		log.info("sessionCreated: session 创建成功!");
	}

	@Override
	public void sessionClosed(IoSession session) throws Exception {
		log.info("sessionClosed: 一个连接关闭!");
		session.close(true);
	}

	@Override
	public void sessionOpened(IoSession session) throws Exception {
		log.info("sessionOpened: session 开启成功!");
	}

	@Override
	public void sessionIdle(IoSession session, IdleStatus status) {
		System.out.println("sessionIdle: sessionIdle");
	}

	@Override
	public void exceptionCaught(IoSession session, Throwable cause) {
		log.info("exceptionCaught:");
		cause.printStackTrace();
		session.close(true);
	}

	@Override
	public void messageReceived(IoSession session, Object message)
			throws Exception {
		TransInfo info = (TransInfo) message;	
		//根据唯一序列号从resultMap中获取result
		ConcurrentHashMap<Long, Result> resultMap = (ConcurrentHashMap<Long, Result>)session.getAttribute("resultMap");
		//移除result
		Result result = resultMap.remove(info.getId());		
		//唤醒阻塞线程
		result.synSetInfo(info);
	}
	
}
