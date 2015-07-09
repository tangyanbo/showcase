package com.bypay.lc.asyn.client;


import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.junit.Test;

import com.bypay.lc.asyn.client.ObjectClientHandler;

public class MinaClientTestAsyn {

	/**
	 * 长连接异步通信测试
	 * @author 唐延波
	 * @date 2015-1-16
	 * @throws InterruptedException
	 */
	@Test
	public void testLC() throws InterruptedException {
		
		ExecutorService pool = Executors.newCachedThreadPool();
		for(int i=0;i<300;i++){
			TestRunnableAsyn r = new TestRunnableAsyn();
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
			start = TestRunnableAsyn.total.get();
			startA = TestRunnableAsyn.counter.get();
			//System.out.println("总事务数start:" + start);
			Thread.sleep(1000);
			end = TestRunnableAsyn.total.get();
			endA = TestRunnableAsyn.counter.get();
			//System.out.println("总事务数end:" + end);
			t2 = System.currentTimeMillis();
			double disCount = end - start;
			double disTime = t2-t1;
			//System.out.println("间隔时间:" + disTime);
			double perMs = disCount/disTime;
			long perS = (long) (perMs*1000);
			System.out.println("每秒执行事务数:" + perS);
			for(Connection conn : ConnectFutureFactory.connectionPool){
				ConcurrentHashMap<Long, Result> resultMap = (ConcurrentHashMap<Long, Result>)conn.getConnection().getSession().getAttribute("resultMap");
				System.out.println(resultMap.size());
			}
			
			
		}
		
	}
	
	
}
