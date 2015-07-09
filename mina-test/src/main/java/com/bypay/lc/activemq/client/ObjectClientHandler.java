package com.bypay.lc.activemq.client;

import java.util.concurrent.ConcurrentHashMap;

import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.lc.activemq.JMSUtil;
import com.bypay.mina.bean.TransInfo;


public class ObjectClientHandler extends IoHandlerAdapter {
	
	//public static Map<Long,Result> resultMap = new Hashtable<Long,Result>();	
	
	//线程安全map
	public static ConcurrentHashMap<Long,Result> resultMap = new ConcurrentHashMap<Long,Result>();
	
	//public static HashMap<Long,Result> resultMap = new HashMap<Long,Result>();
	
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
		Thread.sleep(10);
		TransInfo info = (TransInfo) message;	
		JMSUtil.sendMessage(info);		
		/*System.out.println("客户端接收消息成功");		
		System.out.println("id:"+info.getId());	
		System.out.println("msg:"+info.getMsg());	*/
	}
	

	public void addResult(Long key,Result result){
		resultMap.put(key, result);	
	}
	
}
