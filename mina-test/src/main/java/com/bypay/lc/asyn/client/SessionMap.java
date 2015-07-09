/**
 * 
 */
package com.bypay.lc.asyn.client;

import java.util.concurrent.ConcurrentHashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author 唐延波
 * @date 2015-5-11
 * 
 */
public class SessionMap {

	// 线程安全map
	public ConcurrentHashMap<Long, Result> resultMap = new ConcurrentHashMap<Long, Result>();

	// public static HashMap<Long,Result> resultMap = new
	// HashMap<Long,Result>();

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	
}
