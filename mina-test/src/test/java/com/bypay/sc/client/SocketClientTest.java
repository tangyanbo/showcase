package com.bypay.sc.client;


import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.junit.Test;

public class SocketClientTest {

	
	
	/**
	 * 短连接测试
	 * @author 唐延波
	 * @date 2015-1-16
	 * @throws InterruptedException
	 */
	@Test
	public void testSC() throws InterruptedException {
		
		ExecutorService pool = Executors.newCachedThreadPool();
		for(int i=0;i<100;i++){
			SocketRunnable r = new SocketRunnable();
			pool.execute(r);
		}
		
		long t1 = 0;
		long t2 = 0;
		long start = 0;
		long end = 0;
		long startA = 0;
		long endA = 0;
		while(true){
			t1 = System.currentTimeMillis();
			start = SocketRunnable.total.get();
			startA = SocketRunnable.counter.get();
			System.out.println("总事务数start:" + start);
			Thread.sleep(3000);
			end = SocketRunnable.total.get();
			endA = SocketRunnable.counter.get();
			System.out.println("总请求数endA:" + endA);
			System.out.println("总事务数end:" + end);
			t2 = System.currentTimeMillis();
			double disCount = end - start;
			double disTime = t2-t1;
			double perMs = disCount/disTime;
			long perS = (long) (perMs*1000);
			System.out.println("每秒执行事务数:" + perS);
		}
		
	}
	
	

}
