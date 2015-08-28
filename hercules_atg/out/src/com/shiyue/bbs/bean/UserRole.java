package com.shiyue.bbs.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * UserRole
 * @author 唐延波
 * @date 
 */
public class UserRole implements java.io.Serializable {

	  
	/**
	* id
	*/    
    private Long id;
    
	  
	/**
	* 版本
	*/    
    private Integer version;
    
	  
	/**
	* 创建日期
	*/    
    private Date createTime;
    
	  
	/**
	* 更新日期
	*/    
    private Date updateTime;
    
	  
	/**
	* 用户id
	*/    
    private Long userId;
    
	  
	/**
	* 角色id
	*/    
    private Long roleId;
    

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
	 * 获取 创建日期
	 * @return
	 */	
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * 设置 创建日期
	 * @param createTime
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 获取 更新日期
	 * @return
	 */	
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * 设置 更新日期
	 * @param updateTime
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
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

}
