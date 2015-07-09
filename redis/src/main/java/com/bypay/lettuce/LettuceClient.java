/**
 * 
 */
package com.bypay.lettuce;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

import com.lambdaworks.redis.RedisAsyncConnection;
import com.lambdaworks.redis.RedisClient;

/**
 * @author 唐延波
 * @date 2015-1-21
 *
 */
public class LettuceClient implements Runnable{
	
	private static RedisAsyncConnection<String, String> async;
	
	/**
	 * 通过事务数
	 */
	public static AtomicInteger tp = new AtomicInteger(0);

	/**
	 * 总事务数
	 */
	public static AtomicInteger tAll = new AtomicInteger(0);
	
	private int index;

	static{
		try {
			RedisClient client = new RedisClient("192.168.1.245",6380);
			async = client.connectAsync();
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public String get(String key){
		try {
			Future<String> get = async.get(key);
			
			//async.awaitAll(get);			
			String val = get.get();
			//System.out.println(get.toString());
			return val;
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
	
	public void set(String key,String value){
		try {
			Future<String> set = async.set(key, value);
			
			async.awaitAll(set);			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	

	@Override
	public void run() {
		int index = this.getIndex() * 1000;
		for(int i=index;i<index+1;i++){
			tAll.incrementAndGet();
			String val = this.get("name-"+i);
			//System.out.println("name-"+i + ":"+val);
			//this.set("name1-"+i, "pwd1"+i);
			tp.incrementAndGet();
		}
	}
	
	public static void main(String[] args) throws InterruptedException {
		new LettuceClient().get("x");
		/*ExecutorService pool = Executors.newCachedThreadPool();
		for (int i = 0; i < 50; i++) {
			LettuceClient r = new LettuceClient();
			r.setIndex(i+1);
			pool.execute(r);
		}*/
		
		/*long t1 = 0;
		long t2 = 0;
		long tAll1 = 0;
		long tAll2 = 0;
		long tp1 = 0;
		long tp2 = 0;
		while(true){
			t1 = System.currentTimeMillis();
			tAll1 = tAll.get();
			tp1 = tp.get();
			//System.out.println("总事务数start:" + start);
			Thread.sleep(2000);
			tAll2 = tAll.get();
			tp2 = tp.get();
			//System.out.println("总事务数end:" + tp2);
			t2 = System.currentTimeMillis();
			double disCount = tp2 - tp1;
			double disTime = t2-t1;
			//System.out.println("间隔时间:" + disTime);
			double tpM = disCount/disTime;
			long tps = (long) (tpM*1000);
			System.out.println("每秒执行事务数:" + tps);
			//System.out.println("请求增加数:" + (endA - startA));
			
		}*/
	
		/*LettuceClient r = new LettuceClient();
		String string = r.get("name-1");
		System.out.println(string);*/
	}


	public int getIndex() {
		return index;
	}


	public void setIndex(int index) {
		this.index = index;
	}

	
}
