package com.bypay.redis;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;


import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisClient implements Runnable{
	
	private static JedisPool jedisPool;

	private final static String HOST = "192.168.1.245";
	
	private final static int PORT = 6380;
	
	private int index;
	
	/**
	 * 通过事务数
	 */
	public static AtomicInteger tp = new AtomicInteger(0);

	/**
	 * 总事务数
	 */
	public static AtomicInteger tAll = new AtomicInteger(0);
	
	static{
		JedisPoolConfig config = new JedisPoolConfig();
		config.setMaxTotal(100);
		//config.setMaxWaitMillis(1000);
		//1000为超时时间
		jedisPool = new JedisPool(config, HOST, PORT, 1000);
		
	}
	
	public String get(String key){
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			String value = jedis.get(key);	
			return value;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return null;
	}
	
	public void set(String key,String value){
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
			jedis.set(key, value);			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
	}
	
	
	
	
	
	
	
	
	
	public static void get2(){
		JedisPoolConfig config = new JedisPoolConfig();
		config.setMaxTotal(1000);

		JedisPool jedisPool = new JedisPool(config, HOST, PORT, 100);
		
		int count = jedisPool.getNumActive();
		System.out.println("count:"+count);
		for(int i=0;i<4;i++){
			Jedis jedis = jedisPool.getResource();
			
			jedis.getClient();
			long t1 = System.currentTimeMillis();
			int j = (int)(Math.random()*10000);
			jedis.get("name-"+j);
			long t2 = System.currentTimeMillis();
			//jedis.disconnect();
			jedisPool.returnResource(jedis); 
			System.out.println(t2-t1);
			System.out.println(jedis);
		}
		
		System.out.println("count:"+count);
	}
	
	
	
	public static void bitchAdd(){
		long t1 = System.currentTimeMillis();
		Jedis jedis = new Jedis(HOST,PORT);
		for(int i =0;i<=1000000;i++){			
			jedis.set("name-"+i, "pwd-"+i);
			if(i%1000 ==0){
				System.out.println(i);
			}
		}
		
		long t2 = System.currentTimeMillis();
		System.out.println("批量插入耗时:"+(t2-t1));
		//382912 ms
	}
	
	
	
	public static void bitchDelete(){
		long t1 = System.currentTimeMillis();
		Jedis jedis = new Jedis(HOST,PORT);
		for(int i =0;i<=10000;i++){			
			jedis.del("name-"+i);
		}
		long t2 = System.currentTimeMillis();
		System.out.println("批量删除耗时:"+(t2-t1));
	}

	
	@Override
	public void run() {
		int index = this.getIndex() * 1000;
		for(int i=index;i<1000000;i++){
			tAll.incrementAndGet();
			this.get("name-"+i);
			//this.set("name1-"+i, "pwd1"+i);
			tp.incrementAndGet();
		}
	}
	
	public static void main(String[] args) throws InterruptedException{

		ExecutorService pool = Executors.newCachedThreadPool();
		for (int i = 0; i < 500; i++) {
			RedisClient r = new RedisClient();
			r.setIndex(i+1);
			pool.execute(r);
		}
		
		long t1 = 0;
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
			
		}
	
	
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	
	
	
}
