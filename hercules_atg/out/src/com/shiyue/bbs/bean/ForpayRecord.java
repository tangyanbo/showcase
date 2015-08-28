package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * ForpayRecord
 * @author 唐延波
 * @date 
 */
public class ForpayRecord implements java.io.Serializable {

	  
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
	* 批次id
	*/    
    private Long batchId;
    
	  
	/**
	* 商户订单号
	*/    
    private String merchantOrderId;
    
	  
	/**
	* 商户编号
	*/    
    private String merchantId;
    
	  
	/**
	* 商户名称
	*/    
    private String merchantName;
    
	  
	/**
	* 账户名称/持卡人姓名
	*/    
    private String accountName;
    
	  
	/**
	* 账号/卡号
	*/    
    private String acocuntNo;
    
	  
	/**
	* 金额
	*/    
    private BigDecimal amount;
    
	  
	/**
	* 币种(人民币:156)
	*/    
    private String currency;
    
	  
	/**
	* 手机号
	*/    
    private String cellPhone;
    
	  
	/**
	* (用户)备注
	*/    
    private String remark;
    
	  
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
	 * 获取 批次id
	 * @return
	 */	
	public Long getBatchId() {
		return batchId;
	}

	/**
	 * 设置 批次id
	 * @param batchId
	 */
	public void setBatchId(Long batchId) {
		this.batchId = batchId;
	}

	/**
	 * 获取 商户订单号
	 * @return
	 */	
	public String getMerchantOrderId() {
		return merchantOrderId;
	}

	/**
	 * 设置 商户订单号
	 * @param merchantOrderId
	 */
	public void setMerchantOrderId(String merchantOrderId) {
		this.merchantOrderId = merchantOrderId;
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
	 * 获取 商户名称
	 * @return
	 */	
	public String getMerchantName() {
		return merchantName;
	}

	/**
	 * 设置 商户名称
	 * @param merchantName
	 */
	public void setMerchantName(String merchantName) {
		this.merchantName = merchantName;
	}

	/**
	 * 获取 账户名称/持卡人姓名
	 * @return
	 */	
	public String getAccountName() {
		return accountName;
	}

	/**
	 * 设置 账户名称/持卡人姓名
	 * @param accountName
	 */
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	/**
	 * 获取 账号/卡号
	 * @return
	 */	
	public String getAcocuntNo() {
		return acocuntNo;
	}

	/**
	 * 设置 账号/卡号
	 * @param acocuntNo
	 */
	public void setAcocuntNo(String acocuntNo) {
		this.acocuntNo = acocuntNo;
	}

	/**
	 * 获取 金额
	 * @return
	 */	
	public BigDecimal getAmount() {
		return amount;
	}

	/**
	 * 设置 金额
	 * @param amount
	 */
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	/**
	 * 获取 币种(人民币:156)
	 * @return
	 */	
	public String getCurrency() {
		return currency;
	}

	/**
	 * 设置 币种(人民币:156)
	 * @param currency
	 */
	public void setCurrency(String currency) {
		this.currency = currency;
	}

	/**
	 * 获取 手机号
	 * @return
	 */	
	public String getCellPhone() {
		return cellPhone;
	}

	/**
	 * 设置 手机号
	 * @param cellPhone
	 */
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
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
