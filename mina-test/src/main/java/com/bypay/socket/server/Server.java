package com.bypay.socket.server;

import java.net.ServerSocket;
import java.net.Socket;

/**
 * 消息Server 遇到问题 <br>
 * 1.如果用readLine,则发送消息是需要换行结束，否则读取的时候会阻塞<br>
 * 2. 如何发送多行消息<br>
 * 联系人列表报文 01:x1,x2,x3
 * 
 * @author 唐延波
 * @date 2014-10-28
 */
public class Server {

	private static final Server server = new Server();

	private static ServerSocket ss;

	public static void start() {
		server._start();
	}

	private void _start() {
		try {
			ss = new ServerSocket(8800);
			//System.out.println("服务端启动");
			dealBusiness();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void dealBusiness() {
		while (true) {
			try {
				Socket s = null;

				s = ss.accept();

				ReceiveProcessor.doReceive(s);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static void main(String[] args) {
		Server.start();
	}
}
