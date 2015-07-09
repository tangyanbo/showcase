package com.bypay.sc.client;

import java.util.concurrent.atomic.AtomicInteger;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.bypay.socket.client.Client;

public class SocketRunnable implements Runnable {
	
	public static AtomicInteger counter = new AtomicInteger(0);
	
	public static AtomicInteger total = new AtomicInteger(0);
	
	public static AtomicInteger remove = new AtomicInteger(0);
	
	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Override
	public void run() {
		while(true){
			try {
				Thread.sleep(10);
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			Client c = new Client();	
			
			try {				
				c.send();
				total.incrementAndGet();
			} catch (Exception e) {
				e.printStackTrace();
				log.error(e.getMessage(),e);
			}
		}
		

	}

}
