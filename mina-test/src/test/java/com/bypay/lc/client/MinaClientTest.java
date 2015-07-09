package com.bypay.lc.client;


import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.junit.Test;

import com.bypay.lc.syn.client.ObjectClientHandler;

public class MinaClientTest {

	/**
	 * 长连接测试
	 * @author 唐延波
	 * @date 2015-1-16
	 * @throws InterruptedException
	 */
	@Test
	public void testLC() throws InterruptedException {
		
		ExecutorService pool = Executors.newCachedThreadPool();
		for(int i=0;i<500;i++){
			TestRunnable r = new TestRunnable();
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
			start = TestRunnable.total.get();
			startA = TestRunnable.counter.get();
			//System.out.println("总事务数start:" + start);
			Thread.sleep(2000);
			end = TestRunnable.total.get();
			endA = TestRunnable.counter.get();
			//System.out.println("总事务数end:" + end);
			t2 = System.currentTimeMillis();
			double disCount = end - start;
			double disTime = t2-t1;
			//System.out.println("间隔时间:" + disTime);
			double perMs = disCount/disTime;
			long perS = (long) (perMs*1000);
			System.out.println("每秒执行事务数:" + perS);
			//System.out.println("请求增加数:" + (endA - startA));
			//int size = ObjectClientHandler.resultMap.size();
			//int count = TestRunnable.counter.get();
			//int remove = TestRunnable.remove.get();
			//System.out.println("size:" + size);
			//System.out.println("remove:" + remove);
		}
		
	}
	
	
}
