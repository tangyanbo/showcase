package com.bypay.sc.client.mina;

import org.apache.mina.core.future.ConnectFuture;

/**
 * 经过封装的连接
 * 对应与一个socket 连接
 * @author 唐延波
 * @date 2015-1-15
 *
 */
public class Connection {

	/**
	 * mina 连接
	 */
	private ConnectFuture connection;
	
	/**
	 * 消息接收处理对象
	 */
	private ObjectClientHandler clientHandler;

	public ConnectFuture getConnection() {
		return connection;
	}

	public void setConnection(ConnectFuture connection) {
		this.connection = connection;
	}

	public ObjectClientHandler getClientHandler() {
		return clientHandler;
	}

	public void setClientHandler(ObjectClientHandler clientHandler) {
		this.clientHandler = clientHandler;
	}
	
	
}
