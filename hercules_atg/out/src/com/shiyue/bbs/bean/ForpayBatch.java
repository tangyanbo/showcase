package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * ForpayBatch
 * @author 唐延波
 * @date 
 */
public class ForpayBatch implements java.io.Serializable {

	  
	/**
	* id
	*/    
    private Long id;
    
	  
	/**
	* 版本
	*/    
    private Integer version;
    
	  
	/**
	* 创建时间
	*/    
    private Date createTime;
    
	  
	/**
	* 更新时间
	*/    
    private Date updateTime;
    
	  
	/**
	* 临时批次id
	*/    
    private Long tempBatchId;
    
	  
	/**
	* 行数
	*/    
    private Integer row;
    
	  
	/**
	* 10：处理中 20：处理完成 30：处理失败
	*/    
    private Integer status;
    

	/**
	 * 获取 id
	 * @return
	 */	
	public Long getId() {
		return id;
	}

	/**
	 * 设置 id
	 * @param id
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * 获取 版本
	 * @return
	 */	
	public Integer getVersion() {
		return version;
	}

	/**
	 * 设置 版本
	 * @param version
	 */
	public void setVersion(Integer version) {
		this.version = version;
	}

	/**
	 * 获取 创建时间
	 * @return
	 */	
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * 设置 创建时间
	 * @param createTime
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 获取 更新时间
	 * @return
	 */	
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * 设置 更新时间
	 * @param updateTime
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * 获取 临时批次id
	 * @return
	 */	
	public Long getTempBatchId() {
		return tempBatchId;
	}

	/**
	 * 设置 临时批次id
	 * @param tempBatchId
	 */
	public void setTempBatchId(Long tempBatchId) {
		this.tempBatchId = tempBatchId;
	}

	/**
	 * 获取 行数
	 * @return
	 */	
	public Integer getRow() {
		return row;
	}

	/**
	 * 设置 行数
	 * @param row
	 */
	public void setRow(Integer row) {
		this.row = row;
	}

	/**
	 * 获取 10：处理中 20：处理完成 30：处理失败
	 * @return
	 */	
	public Integer getStatus() {
		return status;
	}

	/**
	 * 设置 10：处理中 20：处理完成 30：处理失败
	 * @param status
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

}
