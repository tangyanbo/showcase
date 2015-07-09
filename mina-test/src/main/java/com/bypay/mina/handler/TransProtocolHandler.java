package com.bypay.mina.handler;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;

import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;

public class TransProtocolHandler extends IoHandlerAdapter {
	private int count = 0;

	@Override
	public void sessionCreated(IoSession session) {
		System.out.println("Clinet Connected !");
	}

	@Override
	public void sessionClosed(IoSession session) throws Exception {
		count--;
		System.out.println("one Client Disconnect !");
	}

	@Override
	public void sessionOpened(IoSession session) throws Exception {
		count++;
		System.out.println("client [" + count + "] connected！address :"
				+ session.getRemoteAddress());

	}

	@Override
	public void sessionIdle(IoSession session, IdleStatus status) {
		System.out.println("sessionIdle");
	}

	@Override
	public void exceptionCaught(IoSession session, Throwable cause) {
		session.close(true);
	}

	@Override
	public void messageReceived(IoSession session, Object message)
			throws Exception {
		int port = ((InetSocketAddress) (session.getLocalAddress())).getPort();
		System.out.println("Comming from:" + port);

		if (port == 18886) {
			try {
				
				//Thread.sleep(1000);
				
				IoBuffer buf = (IoBuffer) message;
				ByteBuffer bf = buf.buf();
				byte[] data = new byte[bf.limit()];
				bf.get(data);
				
				String s = new String(data);
				System.out.println("服务端接收数据长度:" + bf.limit());
				System.out.println("服务端接收数据:" + s);

				byte[] retData = data;
				IoBuffer outdata = IoBuffer.allocate(1024);
				outdata.setAutoShrink(true);
				outdata.put(retData);
				outdata.flip();
				session.write(outdata);
				//session.close(true);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}
}
