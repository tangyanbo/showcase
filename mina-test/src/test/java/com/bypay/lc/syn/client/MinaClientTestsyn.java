package com.bypay.lc.syn.client;


import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;

import com.bypay.common.JUnit4ClassRunner;


@RunWith(JUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class MinaClientTestsyn {

	/**
	 * 长连接同步测试
	 * @author 唐延波
	 * @date 2015-1-16
	 * @throws InterruptedException
	 * 
	 * 
	 * 
	 */
	@Test
	public void testLC() throws InterruptedException {
		
		ExecutorService pool = Executors.newCachedThreadPool();
		for(int i=0;i<400;i++){
			TestRunnablesyn r = new TestRunnablesyn();
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
			start = TestRunnablesyn.total.get();
			startA = TestRunnablesyn.counter.get();
			//System.out.println("总事务数start:" + start);
			
			
			Thread.sleep(2000);
			
			end = TestRunnablesyn.total.get();
			endA = TestRunnablesyn.counter.get();
			long totalTime = TestRunnablesyn.totalTime.get();
			//System.out.println("总事务数end:" + end);
			t2 = System.currentTimeMillis();
			double disCount = end - start;
			double disTime = t2-t1;
			//System.out.println("间隔时间:" + disTime);
			double perMs = disCount/disTime;
			long perS = (long) (perMs*1000);
			System.out.println("每秒执行事务数:" + perS);
			//System.out.println("总数:" + endA+"时间："+totalTime);
			System.out.println("平均响应时间:" +totalTime/end);
			//System.out.println("活动连接池："+ConnectFutureFactory.activePool.size());
			//System.out.println("请求增加数:" + (endA - startA));
			//System.out.println("总请求数:" + (TestRunnablesyn.counter.get()));
			//System.out.println("已处理请求数:" + (TestRunnablesyn.total.get()));
		}
		
	}
	
	
}
