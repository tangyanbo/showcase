package com.bypay.socket.client;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.Socket;

public class Client{
	
	public void send() {
		try {
			Socket socket = new Socket("192.168.1.226", 8800);
			print("test",socket);
			read(socket);
			socket.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void read(Socket socket) throws IOException{
		InputStream inputStream = socket.getInputStream();
		byte[] b = new byte[1024];
		inputStream.read(b);
		String s = new String(b);
		//System.out.println("客户端接收到的消息：" + s);		
	}

	public void print(String s,Socket socket) {
		try {
			PrintWriter pw = new PrintWriter(socket.getOutputStream(), true);
			pw.println(s);
			pw.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	public static void main(String[] args) {
		new Client().send();
	}
}
