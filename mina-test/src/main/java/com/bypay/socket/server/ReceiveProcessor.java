package com.bypay.socket.server;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * 消息接收处理
 * 
 * @author 唐延波
 * @date 2014-10-28
 */
public class ReceiveProcessor implements Runnable {

	private Socket socket;

	public ReceiveProcessor(Socket socket) {
		this.socket = socket;
	}

	public static void doReceive(Socket s) throws Exception {
		ReceiveProcessor pro = new ReceiveProcessor(s);
		ExecutorService pool = Executors.newFixedThreadPool(1);
		pool.execute(pro);
	}

	public void run() {
		try {

			InputStream inputStream = socket.getInputStream();
			byte[] b = new byte[1024];
			while (true) {
				inputStream.read(b);
				String s = new String(b);
				//System.out.println("服务端接收到的消息：" + s);
				// 解析出消息接收者和消息内容

				OutputStream os = socket.getOutputStream();
				PrintWriter pw = new PrintWriter(os, true);
				pw.println("server");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
