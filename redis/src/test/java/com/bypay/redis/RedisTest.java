package com.bypay.redis;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import org.junit.Test;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;
import redis.clients.jedis.Pipeline;
import redis.clients.jedis.Response;

public class RedisTest {

	private final static String HOST = "192.168.1.245";

	private final static int PORT = 6380;
	
	
	/**
	 * 并发性能测试
	 * @author 唐延波
	 * @date 2015-1-21
	 */
	@Test
	public void testXN(){
		
	}
	
	
	

	/**
	 * 同步测试
	 * @throws InterruptedException 
	 */
	@Test
	public void testSyn() throws InterruptedException {
		JedisPoolConfig config = new JedisPoolConfig();
		config.setMaxTotal(10);
		

		JedisPool jedisPool = new JedisPool(config, HOST, PORT, 1000);


		Executor pool = Executors.newCachedThreadPool();
		long t = System.currentTimeMillis();
		for (int i = 0; i < 1000; i++) {
			pool.execute(new GetRunnable(jedisPool, "name-" + i,t));
			//System.out.println(i);
		}
		Thread.sleep(3000);
	}
	
	
	
	
	
	
	
	
	
	@Test
	public void testPipe() throws InterruptedException {
		JedisPoolConfig config = new JedisPoolConfig();
		config.setMaxTotal(10);
		

		JedisPool jedisPool = new JedisPool(config, HOST, PORT, 1000);
		Jedis resource = jedisPool.getResource();
		Pipeline pipelined = resource.pipelined();

		Executor pool = Executors.newCachedThreadPool();
		long t = System.currentTimeMillis();
		for (int i = 0; i < 1000; i++) {
			pool.execute(new PipeRunnable(pipelined, "name-" + i,t));
			//System.out.println(i);
		}
		Thread.sleep(3000);
	}
	
	
	
	/**
	 * 管道
	 */
	@Test
	public void pipeline(){
		Jedis jedis = new Jedis(HOST,PORT);
	    Pipeline pipeline = jedis.pipelined();
	    long start = System.currentTimeMillis();
	    List<Response<String>> list = new ArrayList<Response<String>>();
	    for (int i = 0; i < 100; i++) {
	        Response<String> response = pipeline.get("name-"+i);
	        list.add(response);
	        
	    }
	    pipeline.sync();
	    //List<Object> results = pipeline.syncAndReturnAll();
	    long end = System.currentTimeMillis();
	    System.out.println("Pipelined SET: " + ((end - start)/1000.0) + " seconds");
	    
	    /*for(Object o : results){
	    	System.out.println(o);
	    }*/
	    for(Response<String> r : list){
	    	System.out.println(r.get());
	    }
	    
	    jedis.disconnect();
	}

}
