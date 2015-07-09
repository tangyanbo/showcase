package com.bypay.lc.syn.client;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.mina.bean.TransInfo;

public class TestRunnablesyn implements Runnable {
	
	public static AtomicInteger counter = new AtomicInteger(0);
	
	public static AtomicInteger total = new AtomicInteger(1);
	
	public static AtomicInteger remove = new AtomicInteger(0);
	
	public static AtomicLong totalTime = new AtomicLong(0);
	
	
	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Override
	public void run() {
		while(true){
			/*try {
				Thread.sleep(10);
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}*/
			
			long start1 = System.currentTimeMillis();
			
			
			MinaClient c = new MinaClient();
			TransInfo info = new TransInfo();
			info.setId(counter.incrementAndGet());
					
			
			try {
				TransInfo send = c.send(info);
				total.incrementAndGet();
			} catch (Exception e) {
				e.printStackTrace();
				log.error(e.getMessage(),e);
			}
			long end1 = System.currentTimeMillis();
			long addAndGet = totalTime.addAndGet(end1-start1);
			if(addAndGet>100000000){
				totalTime.set(0);
				total.set(1);
			}
			//log.info("传递消息耗时:"+ (end1-start1)+"ms"+"线程"+Thread.currentThread().getId());
		}
	}
	
	public static void main(String[] args) {
		long a = totalTime.addAndGet(100);
		System.out.println(a);
		long b = totalTime.addAndGet(200);
		System.out.println(b);
	}
	

}
