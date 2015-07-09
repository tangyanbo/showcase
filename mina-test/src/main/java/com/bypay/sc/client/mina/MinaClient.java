package com.bypay.sc.client.mina;

import java.net.InetSocketAddress;
import java.util.concurrent.TimeUnit;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.service.IoConnector;
import org.apache.mina.core.session.IoSession;

import com.bypay.mina.bean.TransInfo;

/**
 * 客户端
 * 
 * @author 唐延波
 * @date 2015-1-13
 * 
 */
public class MinaClient {

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
		
		// 设置连接参数
		IoConnector connector = IoConnectorFactory.getIoConnector();
		
		// 连接服务端
		ConnectFuture connection = connector.connect(new InetSocketAddress(
				"192.168.1.226", 18886));
		

		// 等待建立连接
		connection.awaitUninterruptibly(4000, TimeUnit.MICROSECONDS);
		connection.awaitUninterruptibly();

		IoSession session = connection.getSession();
		
		if (session == null) {
			System.out.println("session为空");
		}
		
		int port = ((InetSocketAddress)session.getLocalAddress()).getPort();

		//System.out.println("port:"+port);

		session.write(info);
		
		session.getCloseFuture().awaitUninterruptibly();
		return ObjectClientHandler.resultMap.get(info.getId());
		//connector.dispose(true);
		

	}

	public static void main(String[] args) throws InterruptedException {
		TransInfo info = new TransInfo();
		info.setId(1);
		TransInfo send = new MinaClient().send(info);

		System.out.println(send);
	}

}
