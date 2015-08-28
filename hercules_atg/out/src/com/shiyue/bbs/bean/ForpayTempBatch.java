package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * ForpayTempBatch
 * @author 唐延波
 * @date 
 */
public class ForpayTempBatch implements java.io.Serializable {

	  
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
	* 调用类型(1:文件上传,2:接口)
	*/    
    private Integer invokeType;
    
	  
	/**
	* 商户编号
	*/    
    private String merchantId;
    
	  
	/**
	* 用户id
	*/    
    private Long userId;
    
	  
	/**
	* (用户)备注
	*/    
    private String remark;
    
	  
	/**
	* 原文件名
	*/    
    private String origFileName;
    
	  
	/**
	* (服务端)临时文件路径
	*/    
    private String tempFilePath;
    
	  
	/**
	* 文件大小(字节)
	*/    
    private Integer fileSize;
    
	  
	/**
	* 文件类型(1:txt,2:zip)
	*/    
    private Integer fileType;
    
	  
	/**
	* 总行数
	*/    
    private Integer totalRow;
    
	  
	/**
	* 总金额
	*/    
    private BigDecimal totalAmount;
    
	  
	/**
	* 总手续费
	*/    
    private BigDecimal totalFee;
    
	  
	/**
	* 错误行数
	*/    
    private Integer errorRow;
    
	  
	/**
	* 保存临时记录条数
	*/    
    private Integer saveTempCount;
    
	  
	/**
	* 状态(1:初始,10:已保存文件,20:入临时库中,30:入临时库完成,40:处理中,50:处理完成)
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
	 * 获取 调用类型(1:文件上传,2:接口)
	 * @return
	 */	
	public Integer getInvokeType() {
		return invokeType;
	}

	/**
	 * 设置 调用类型(1:文件上传,2:接口)
	 * @param invokeType
	 */
	public void setInvokeType(Integer invokeType) {
		this.invokeType = invokeType;
	}

	/**
	 * 获取 商户编号
	 * @return
	 */	
	public String getMerchantId() {
		return merchantId;
	}

	/**
	 * 设置 商户编号
	 * @param merchantId
	 */
	public void setMerchantId(String merchantId) {
		this.merchantId = merchantId;
	}

	/**
	 * 获取 用户id
	 * @return
	 */	
	public Long getUserId() {
		return userId;
	}

	/**
	 * 设置 用户id
	 * @param userId
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
	 * 获取 (用户)备注
	 * @return
	 */	
	public String getRemark() {
		return remark;
	}

	/**
	 * 设置 (用户)备注
	 * @param remark
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取 原文件名
	 * @return
	 */	
	public String getOrigFileName() {
		return origFileName;
	}

	/**
	 * 设置 原文件名
	 * @param origFileName
	 */
	public void setOrigFileName(String origFileName) {
		this.origFileName = origFileName;
	}

	/**
	 * 获取 (服务端)临时文件路径
	 * @return
	 */	
	public String getTempFilePath() {
		return tempFilePath;
	}

	/**
	 * 设置 (服务端)临时文件路径
	 * @param tempFilePath
	 */
	public void setTempFilePath(String tempFilePath) {
		this.tempFilePath = tempFilePath;
	}

	/**
	 * 获取 文件大小(字节)
	 * @return
	 */	
	public Integer getFileSize() {
		return fileSize;
	}

	/**
	 * 设置 文件大小(字节)
	 * @param fileSize
	 */
	public void setFileSize(Integer fileSize) {
		this.fileSize = fileSize;
	}

	/**
	 * 获取 文件类型(1:txt,2:zip)
	 * @return
	 */	
	public Integer getFileType() {
		return fileType;
	}

	/**
	 * 设置 文件类型(1:txt,2:zip)
	 * @param fileType
	 */
	public void setFileType(Integer fileType) {
		this.fileType = fileType;
	}

	/**
	 * 获取 总行数
	 * @return
	 */	
	public Integer getTotalRow() {
		return totalRow;
	}

	/**
	 * 设置 总行数
	 * @param totalRow
	 */
	public void setTotalRow(Integer totalRow) {
		this.totalRow = totalRow;
	}

	/**
	 * 获取 总金额
	 * @return
	 */	
	public BigDecimal getTotalAmount() {
		return totalAmount;
	}

	/**
	 * 设置 总金额
	 * @param totalAmount
	 */
	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}

	/**
	 * 获取 总手续费
	 * @return
	 */	
	public BigDecimal getTotalFee() {
		return totalFee;
	}

	/**
	 * 设置 总手续费
	 * @param totalFee
	 */
	public void setTotalFee(BigDecimal totalFee) {
		this.totalFee = totalFee;
	}

	/**
	 * 获取 错误行数
	 * @return
	 */	
	public Integer getErrorRow() {
		return errorRow;
	}

	/**
	 * 设置 错误行数
	 * @param errorRow
	 */
	public void setErrorRow(Integer errorRow) {
		this.errorRow = errorRow;
	}

	/**
	 * 获取 保存临时记录条数
	 * @return
	 */	
	public Integer getSaveTempCount() {
		return saveTempCount;
	}

	/**
	 * 设置 保存临时记录条数
	 * @param saveTempCount
	 */
	public void setSaveTempCount(Integer saveTempCount) {
		this.saveTempCount = saveTempCount;
	}

	/**
	 * 获取 状态(1:初始,10:已保存文件,20:入临时库中,30:入临时库完成,40:处理中,50:处理完成)
	 * @return
	 */	
	public Integer getStatus() {
		return status;
	}

	/**
	 * 设置 状态(1:初始,10:已保存文件,20:入临时库中,30:入临时库完成,40:处理中,50:处理完成)
	 * @param status
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

}
