package com.bypay.lc.syn.client;

import org.apache.log4j.Logger;
import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.session.IoSession;

import com.bypay.mina.bean.TransInfo;

/**
 * 客户端<br>
 * 这是一个长连接同步通信的例子<br>
 * 此处是客户端代码，服务端处理和普通处理方式相同<br>
 * @author 唐延波
 * @date 2015-1-13
 * 
 */
public class MinaClient {
	
	protected static final Logger log = Logger.getLogger(MinaClient.class);

	public static void main(String[] args) throws InterruptedException {
		MinaClient minaClient = new MinaClient();
		TransInfo info = new TransInfo();
		info.setId(100);
		info.setMsg("test");
		long start1 = System.currentTimeMillis();
		TransInfo send1 = minaClient.send(info);
		minaClient.send(info);
		minaClient.send(info);
		long end1 = System.currentTimeMillis();
		System.out.println("耗时1:"+ (end1-start1)+"ms");
		long start2 = System.currentTimeMillis();
		TransInfo send2 = minaClient.send(info);
		long end2 = System.currentTimeMillis();
		System.out.println("耗时2:"+ (end2-start2)+"ms");
		System.out.println(send1.getId());
		System.out.println(send1.getMsg());
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
		//获取tcp连接
		Connection connection = ConnectFutureFactory.getConnection(result);
		ConnectFuture connectFuture = connection.getConnection();
		IoSession session = connectFuture.getSession();
		session.setAttribute("result", result);
		//发送信息
		session.write(info);
		//同步阻塞获取响应
		TransInfo synGetInfo = result.synGetInfo();
		//此处并不是真正关闭连接，而是将连接放回连接池
		ConnectFutureFactory.close(connection,result);
		return synGetInfo;
	}

}
