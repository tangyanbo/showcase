package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * User
 * @author 唐延波
 * @date 
 */
public class User implements java.io.Serializable {

	  
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
	* 用户名
	*/    
    private String userName;
    
	  
	/**
	* 真实姓名
	*/    
    private String realName;
    
	  
	/**
	* 登录密码
	*/    
    private String loginPwd;
    
	  
	/**
	* 操作密码
	*/    
    private String operPwd;
    
	  
	/**
	* 管理员标志
	*/    
    private Boolean adminFlag;
    
	  
	/**
	* 邮箱
	*/    
    private String email;
    
	  
	/**
	* 手机号
	*/    
    private String cellPhone;
    
	  
	/**
	* 
	*/    
    private Long merId;
    
	  
	/**
	* 
	*/    
    private String userStatus;
    

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
	 * 获取 用户名
	 * @return
	 */	
	public String getUserName() {
		return userName;
	}

	/**
	 * 设置 用户名
	 * @param userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * 获取 真实姓名
	 * @return
	 */	
	public String getRealName() {
		return realName;
	}

	/**
	 * 设置 真实姓名
	 * @param realName
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}

	/**
	 * 获取 登录密码
	 * @return
	 */	
	public String getLoginPwd() {
		return loginPwd;
	}

	/**
	 * 设置 登录密码
	 * @param loginPwd
	 */
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	/**
	 * 获取 操作密码
	 * @return
	 */	
	public String getOperPwd() {
		return operPwd;
	}

	/**
	 * 设置 操作密码
	 * @param operPwd
	 */
	public void setOperPwd(String operPwd) {
		this.operPwd = operPwd;
	}

	/**
	 * 获取 管理员标志
	 * @return
	 */	
	public Boolean getAdminFlag() {
		return adminFlag;
	}

	/**
	 * 设置 管理员标志
	 * @param adminFlag
	 */
	public void setAdminFlag(Boolean adminFlag) {
		this.adminFlag = adminFlag;
	}

	/**
	 * 获取 邮箱
	 * @return
	 */	
	public String getEmail() {
		return email;
	}

	/**
	 * 设置 邮箱
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
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
	 * 获取 
	 * @return
	 */	
	public Long getMerId() {
		return merId;
	}

	/**
	 * 设置 
	 * @param merId
	 */
	public void setMerId(Long merId) {
		this.merId = merId;
	}

	/**
	 * 获取 
	 * @return
	 */	
	public String getUserStatus() {
		return userStatus;
	}

	/**
	 * 设置 
	 * @param userStatus
	 */
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

}
