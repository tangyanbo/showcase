package com.bypay.lc.activemq.client;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.session.IoSession;

import com.bypay.lc.activemq.JMSUtil;
import com.bypay.mina.bean.TransInfo;

/**
 * 客户端
 * 
 * @author 唐延波
 * @date 2015-1-13
 * 
 */
public class MinaClient {

	public static void main(String[] args) throws InterruptedException {
		MinaClient c = new MinaClient();
		TransInfo info = new TransInfo();
		info.setId(1);
		c.send(info);

	}

	/**
	 * 发送消息并接收返回值
	 * 
	 * @author 唐延波
	 * @date 2015-1-13
	 * @param info
	 * @return
	 * @throws InterruptedException
	 */
	public TransInfo send(TransInfo info) throws InterruptedException {
		
		ConnectFuture connectFuture = ConnectFutureFactory
				.getConnection();
		
		IoSession session = connectFuture.getSession();
		
		if(session == null){
			System.out.println("session为空");
		}
		
		session.write(info);		
		TransInfo receive = JMSUtil.receive(info);
		return receive;
	}

}
