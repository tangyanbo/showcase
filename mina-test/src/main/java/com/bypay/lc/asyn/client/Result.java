package com.bypay.lc.asyn.client;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bypay.mina.bean.TransInfo;



/**
 * 结果类
 * 
 * @author 唐延波
 * @date 2015-1-13
 * 
 */
public class Result {

	/**
	 * 传输信息
	 */
	private TransInfo info;

	/**
	 * 是否接收完成
	 */
	private boolean done;
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	
	public synchronized TransInfo synGetInfo() {
		//等待消息返回
		//必须要在同步的情况下执行
		while (!done) {
			try {					
				wait();
			} catch (InterruptedException e) {
				log.error(e.getMessage(), e);
			}
		}
		return info;
	}


	public synchronized void synSetInfo(TransInfo info) {
		this.info = info;
		this.done = true;
		notify();
	}


	public TransInfo getInfo() {
		return info;
	}


	public void setInfo(TransInfo info) {
		this.info = info;
	}

	
	
}
