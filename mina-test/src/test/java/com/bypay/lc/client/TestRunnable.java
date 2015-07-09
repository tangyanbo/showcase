package com.bypay.lc.client;

import java.util.concurrent.atomic.AtomicInteger;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.lc.syn.client.MinaClient;
import com.bypay.mina.bean.TransInfo;

public class TestRunnable implements Runnable {
	
	public static AtomicInteger counter = new AtomicInteger(0);
	
	public static AtomicInteger total = new AtomicInteger(0);
	
	public static AtomicInteger remove = new AtomicInteger(0);
	
	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Override
	public void run() {
		while(true){
			/*try {
				Thread.sleep(1);
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}*/
			MinaClient c = new MinaClient();
			TransInfo info = new TransInfo();
			info.setId(counter.incrementAndGet());
					
			
			try {
				TransInfo send = c.send(info);
				total.incrementAndGet();
				//log.info("==========================");
				/*if(send.getId()%10000 == 0){
					System.out.println(send.getId() +":"+ info.getId());
				}*/
				
				
				/*if(send.getId() != info.getId()){
					throw new RuntimeException("错误");
				}*/
			} catch (Exception e) {
				e.printStackTrace();
				log.error(e.getMessage(),e);
			}
		}
		

	}

}
