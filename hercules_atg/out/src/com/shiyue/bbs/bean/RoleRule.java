package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * RoleRule
 * @author 唐延波
 * @date 
 */
public class RoleRule implements java.io.Serializable {

	  
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
	* 角色id
	*/    
    private Long roleId;
    
	  
	/**
	* 权限id
	*/    
    private Long ruleId;
    

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
	 * 获取 角色id
	 * @return
	 */	
	public Long getRoleId() {
		return roleId;
	}

	/**
	 * 设置 角色id
	 * @param roleId
	 */
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	/**
	 * 获取 权限id
	 * @return
	 */	
	public Long getRuleId() {
		return ruleId;
	}

	/**
	 * 设置 权限id
	 * @param ruleId
	 */
	public void setRuleId(Long ruleId) {
		this.ruleId = ruleId;
	}

}
