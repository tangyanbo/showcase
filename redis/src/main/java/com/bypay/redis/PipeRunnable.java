package com.bypay.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.Pipeline;
import redis.clients.jedis.Response;

public class PipeRunnable implements Runnable{
	
	Pipeline pipelined;
	
	String key;
	
	long t1;

	public PipeRunnable(Pipeline pipelined,String key,long t1){
		
		this.pipelined = pipelined;
		this.key = key;
		this.t1 = t1;
	}
	@Override
	public void run() {		
		Response<String> response = pipelined.get(key);
		pipelined.sync();
		System.out.println(response.get());
		long t = System.currentTimeMillis();
		System.out.println("耗时"+(t-t1));
		
		
		
	}
	
}
