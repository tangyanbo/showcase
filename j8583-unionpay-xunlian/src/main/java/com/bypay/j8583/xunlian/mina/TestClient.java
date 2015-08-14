package com.bypay.j8583.xunlian.mina;

import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.future.ReadFuture;
import org.apache.mina.core.session.IoSession;
import org.junit.Test;

import com.bypay.j8583.xunlian.tool.ByteUtil;

public class TestClient
{
	
  @Test
	public void testClient1()
	{
//	   MinaClient.dispose();
//	      MinaClient.close();
		InetSocketAddress address = new InetSocketAddress("192.168.1.190", 8901);
		//InetSocketAddress address2 = new InetSocketAddress("192.168.1.190", 8901);
//		InetSocketAddress address3 = new InetSocketAddress("192.168.1.190", 8901);
		List<InetSocketAddress> lists = new ArrayList<InetSocketAddress>();
		lists.add(address);
		//lists.add(address2);
//		lists.add(address3);
		List<ConnectFuture> connect = MinaClient.createClient(lists);
		ConnectFuture conn=	connect.get(0);
		conn.awaitUninterruptibly();
		/*IoBuffer buffer = IoBuffer.allocate(1024);
		buffer.put("111111111111111111111".getBytes());
		buffer.flip();*/
		IoSession session=conn.getSession();
		session.write("22222222222222222222".getBytes());
		try
		{
			session.getCloseFuture().await(500);
		} catch (InterruptedException e)
		{
			e.printStackTrace();
		}
		System.out.println(session+"-----------");
		System.out.println(session.getAttribute("1")+"=========");
		


		//session.close(true);
	}
  @Test
  
	public void testClient2()
	{
		InetSocketAddress address = new InetSocketAddress("192.168.1.190", 8901);
		InetSocketAddress address2 = new InetSocketAddress("192.168.1.190", 8901);
		InetSocketAddress address3 = new InetSocketAddress("192.168.1.190", 8901);
		List<InetSocketAddress> lists = new ArrayList<InetSocketAddress>();
		lists.add(address);
		lists.add(address2);
		lists.add(address3);
		List<ConnectFuture> connect = MinaClient.createClient(lists);
		ConnectFuture conn=	connect.get(1);
		conn.awaitUninterruptibly();
		IoBuffer buffer = IoBuffer.allocate(1024);
		buffer.put("22222222222222222222".getBytes());
		buffer.flip();
		IoSession session=conn.getSession();
		session.write(buffer);
		System.out.println(session);

		
	}
  @Test
  
	public void testClient3()
	{
		InetSocketAddress address = new InetSocketAddress("192.168.1.190", 8901);
		InetSocketAddress address2 = new InetSocketAddress("192.168.1.190", 8901);
		InetSocketAddress address3 = new InetSocketAddress("192.168.1.190", 8901);
		List<InetSocketAddress> lists = new ArrayList<InetSocketAddress>();
		lists.add(address);
		lists.add(address2);
		lists.add(address3);
		List<ConnectFuture> connect = MinaClient.createClient(lists);
		ConnectFuture conn=	connect.get(2);
		conn.awaitUninterruptibly();
		IoBuffer buffer = IoBuffer.allocate(1024);
		buffer.put("33333333333333333".getBytes());
		buffer.flip();
		IoSession session=conn.getSession();
		session.write(buffer);
		System.out.println(session);

		
	}
	@Test
	public void test4() throws Exception
	{
		byte[] b1 = "11111111111".getBytes();
		byte[] b2 ="2222222222".getBytes();
		byte[] b3 ="333333333".getBytes();
		IoBuffer buffer = IoBuffer.allocate(1024);
		buffer.setAutoExpand(true);
		buffer.put(b1);
		buffer.put(b2);
		buffer.put(b3);
		buffer.flip();
		byte[] bb = new byte[100];
		buffer.get(bb, 0, 4);
		buffer.get(bb,0,11);
		System.out.println(new String(bb));

		System.out.println(buffer.getHexDump());
		byte[] c1=ByteUtil.hexStringToByteArray("0210");
		System.out.println(c1.length);
		
		
		
		
	/*
		
		testClient1();
		testClient2();
		testClient3();*/
	}


}
