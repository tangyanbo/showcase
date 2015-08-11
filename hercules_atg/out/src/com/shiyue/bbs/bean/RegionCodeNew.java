package com.shiyue.bbs.model.dto;
import com.hercules.database.dto.impl.BaseDtoImpl;
import com.hercules.database.util.Constant;
import com.hercules.dto.annotation.AddParentClass;
import com.hercules.dto.annotation.EntityPK;
import java.util.Date;

/**
 * 类功能:自动代码生成模板 DTO模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 * 
 * 规约开启方式 用于规约符合我们要求的对象
 * 1. 设置   AddParentClass = true
 * 2. 类       extends BaseDtoImpl
 * 
 * 规约关闭方式  用于规约不受我们控制的对象
 * 1. 设置   AddParentClass = false
 * 2. 类        implements IBaseDto
 */
@SuppressWarnings("serial")
@EntityPK(Pk = "id", defaultColumn = false, tableName = "REGION_CODE_NEW")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class RegionCodeNewDto  extends BaseDtoImpl{//
	private java.lang.Long id;//自增长
	private java.lang.String code;//地区代码
	private java.lang.String name;//地区名称
	private java.lang.Long level;//地区等级
            1省，直辖市
            2市级
            3区县级
            
	private java.lang.String super_code;//上级地区CODE
	private java.lang.String remark;//备注

   /**
	* 获取 自增长
	* @return
	*/
	public java.lang.Long getId() {
		return id;
	}
	
   /**
	* 设置 自增长
	* @param id
	*/
 	public void setId(java.lang.Long id) {
		this.id = id;
	}
   /**
	* 获取 地区代码
	* @return
	*/
	public java.lang.String getCode() {
		return code;
	}
	
   /**
	* 设置 地区代码
	* @param code
	*/
 	public void setCode(java.lang.String code) {
		this.code = code;
	}
   /**
	* 获取 地区名称
	* @return
	*/
	public java.lang.String getName() {
		return name;
	}
	
   /**
	* 设置 地区名称
	* @param name
	*/
 	public void setName(java.lang.String name) {
		this.name = name;
	}
   /**
	* 获取 地区等级
            1省，直辖市
            2市级
            3区县级
            
	* @return
	*/
	public java.lang.Long getLevel() {
		return level;
	}
	
   /**
	* 设置 地区等级
            1省，直辖市
            2市级
            3区县级
            
	* @param level
	*/
 	public void setLevel(java.lang.Long level) {
		this.level = level;
	}
   /**
	* 获取 上级地区CODE
	* @return
	*/
	public java.lang.String getSuper_code() {
		return super_code;
	}
	
   /**
	* 设置 上级地区CODE
	* @param super_code
	*/
 	public void setSuper_code(java.lang.String super_code) {
		this.super_code = super_code;
	}
   /**
	* 获取 备注
	* @return
	*/
	public java.lang.String getRemark() {
		return remark;
	}
	
   /**
	* 设置 备注
	* @param remark
	*/
 	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
}
