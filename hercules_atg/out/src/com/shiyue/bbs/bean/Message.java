package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * Message
 * @author 唐延波
 * @date 
 */
public class Message implements java.io.Serializable {

	  
	/**
	* 
	*/    
    private Integer id;
    
	  
	/**
	* 
	*/    
    private String message;
    
	  
	/**
	* 
	*/    
    private String messageMd5;
    
	  
	/**
	* 
	*/    
    private String createDate;
    
	  
	/**
	* 
	*/    
    private String mobile;
    
	  
	/**
	* 
	*/    
    private String finishTime;
    
	  
	/**
	* 
	*/    
    private String status;
    
	  
	/**
	* 
	*/    
    private String reserved;
    

	/**
	 * 获取 
	 * @return
	 */	
	public Integer getId() {
		return id;
	}

	/**
	 * 设置 
	 * @param id
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getMessage() {
		return message;
	}

	/**
	 * 设置 
	 * @param message
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getMessageMd5() {
		return messageMd5;
	}

	/**
	 * 设置 
	 * @param messageMd5
	 */
	public void setMessageMd5(String messageMd5) {
		this.messageMd5 = messageMd5;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getCreateDate() {
		return createDate;
	}

	/**
	 * 设置 
	 * @param createDate
	 */
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getMobile() {
		return mobile;
	}

	/**
	 * 设置 
	 * @param mobile
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getFinishTime() {
		return finishTime;
	}

	/**
	 * 设置 
	 * @param finishTime
	 */
	public void setFinishTime(String finishTime) {
		this.finishTime = finishTime;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getStatus() {
		return status;
	}

	/**
	 * 设置 
	 * @param status
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getReserved() {
		return reserved;
	}

	/**
	 * 设置 
	 * @param reserved
	 */
	public void setReserved(String reserved) {
		this.reserved = reserved;
	}

}
