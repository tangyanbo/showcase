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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "BANK_BRANCH_TEST")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class BankBranchTestDto  extends BaseDtoImpl{//
	private java.lang.Long id;//主键，自增长
	private java.lang.String bank_code;//银行编码
	private java.lang.String bank_name;//银行名称
	private java.lang.Long level;//级别
            0：大行
            1：支行
            
	private java.lang.String super_code;//上级银行编码
	private java.lang.String citycode;//所属市或县编码

   /**
	* 获取 主键，自增长
	* @return
	*/
	public java.lang.Long getId() {
		return id;
	}
	
   /**
	* 设置 主键，自增长
	* @param id
	*/
 	public void setId(java.lang.Long id) {
		this.id = id;
	}
   /**
	* 获取 银行编码
	* @return
	*/
	public java.lang.String getBank_code() {
		return bank_code;
	}
	
   /**
	* 设置 银行编码
	* @param bank_code
	*/
 	public void setBank_code(java.lang.String bank_code) {
		this.bank_code = bank_code;
	}
   /**
	* 获取 银行名称
	* @return
	*/
	public java.lang.String getBank_name() {
		return bank_name;
	}
	
   /**
	* 设置 银行名称
	* @param bank_name
	*/
 	public void setBank_name(java.lang.String bank_name) {
		this.bank_name = bank_name;
	}
   /**
	* 获取 级别
            0：大行
            1：支行
            
	* @return
	*/
	public java.lang.Long getLevel() {
		return level;
	}
	
   /**
	* 设置 级别
            0：大行
            1：支行
            
	* @param level
	*/
 	public void setLevel(java.lang.Long level) {
		this.level = level;
	}
   /**
	* 获取 上级银行编码
	* @return
	*/
	public java.lang.String getSuper_code() {
		return super_code;
	}
	
   /**
	* 设置 上级银行编码
	* @param super_code
	*/
 	public void setSuper_code(java.lang.String super_code) {
		this.super_code = super_code;
	}
   /**
	* 获取 所属市或县编码
	* @return
	*/
	public java.lang.String getCitycode() {
		return citycode;
	}
	
   /**
	* 设置 所属市或县编码
	* @param citycode
	*/
 	public void setCitycode(java.lang.String citycode) {
		this.citycode = citycode;
	}
}
