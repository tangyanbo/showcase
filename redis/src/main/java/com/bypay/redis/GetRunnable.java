package com.bypay.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class GetRunnable implements Runnable{
	
	JedisPool jedisPool;
	
	String key;
	
	long t1;

	public GetRunnable(JedisPool jedisPool,String key,long t1){
		
		this.jedisPool = jedisPool;
		this.key = key;
		this.t1 = t1;
	}
	@Override
	public void run() {		
		Jedis jedis = jedisPool.getResource();
		String val = jedis.get(key);
		System.out.println(val);
		long t = System.currentTimeMillis();
		System.out.println("耗时"+(t-t1));
		jedisPool.returnResource(jedis);
		
		
		
	}
	
}
