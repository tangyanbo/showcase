package com.bypay.lc.asyn.client;

import java.util.concurrent.ConcurrentHashMap;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.session.IoSession;

import com.bypay.mina.bean.TransInfo;

/**
 * 客户端<br>
 * 这是一个长连接异步通信的例子<br>
 * 此处是客户端代码，服务端处理和普通处理方式相同
 * @author 唐延波
 * @date 2015-1-13
 * 
 */
public class MinaClient {

	public static void main(String[] args) throws InterruptedException {
		new MinaClient();

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
		Result result = new Result();
		result.setInfo(info);
		//获取socket连接
		ConnectFuture connectFuture = ConnectFutureFactory
				.getConnection(result);
		IoSession session = connectFuture.getSession();
		//将result放入ConcurrentHashMap
		ConcurrentHashMap<Long, Result> resultMap = (ConcurrentHashMap<Long, Result>)session.getAttribute("resultMap");
		resultMap.put(info.getId(), result);
		//发送消息
		session.write(info);
		//同步阻塞获取结果
		return result.synGetInfo();
	}

}
