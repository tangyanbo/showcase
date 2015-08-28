package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * ForpayTempRecord
 * @author 唐延波
 * @date 
 */
public class ForpayTempRecord implements java.io.Serializable {

	  
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
	* 批次id
	*/    
    private Long batchId;
    
	  
	/**
	* 商户订单号
	*/    
    private String merchantOrderId;
    
	  
	/**
	* 账户名称/持卡人姓名
	*/    
    private String accountName;
    
	  
	/**
	* 账户/卡号
	*/    
    private String accountNo;
    
	  
	/**
	* 开户行号
	*/    
    private String bankNo;
    
	  
	/**
	* 对公对私(0:对公,1:对私)
	*/    
    private Integer pubPri;
    
	  
	/**
	* 金额
	*/    
    private BigDecimal amount;
    
	  
	/**
	* 手机号
	*/    
    private String cellPhone;
    
	  
	/**
	* 备注
	*/    
    private String remark;
    
	  
	/**
	* 状态(0:未处理,1:已处理)
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
	 * 获取 账户/卡号
	 * @return
	 */	
	public String getAccountNo() {
		return accountNo;
	}

	/**
	 * 设置 账户/卡号
	 * @param accountNo
	 */
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	/**
	 * 获取 开户行号
	 * @return
	 */	
	public String getBankNo() {
		return bankNo;
	}

	/**
	 * 设置 开户行号
	 * @param bankNo
	 */
	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
	}

	/**
	 * 获取 对公对私(0:对公,1:对私)
	 * @return
	 */	
	public Integer getPubPri() {
		return pubPri;
	}

	/**
	 * 设置 对公对私(0:对公,1:对私)
	 * @param pubPri
	 */
	public void setPubPri(Integer pubPri) {
		this.pubPri = pubPri;
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
	 * 获取 备注
	 * @return
	 */	
	public String getRemark() {
		return remark;
	}

	/**
	 * 设置 备注
	 * @param remark
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取 状态(0:未处理,1:已处理)
	 * @return
	 */	
	public Integer getStatus() {
		return status;
	}

	/**
	 * 设置 状态(0:未处理,1:已处理)
	 * @param status
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

}
