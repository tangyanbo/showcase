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
@EntityPK(Pk = "", defaultColumn = false, tableName = "bank_code")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class BankCodeDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String bank_branch_name;//
	private java.lang.String bank_branch_code;//
	private java.lang.String bank_name;//
	private java.lang.String bank_code;//
	private java.lang.String city;//
	private java.lang.String province_code;//
	private java.lang.String province;//
	private java.lang.String city_code;//
	private java.lang.Short reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getId() {
		return id;
	}
	
   /**
	* 设置 
	* @param id
	*/
 	public void setId(java.lang.Long id) {
		this.id = id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_branch_name() {
		return bank_branch_name;
	}
	
   /**
	* 设置 
	* @param bank_branch_name
	*/
 	public void setBank_branch_name(java.lang.String bank_branch_name) {
		this.bank_branch_name = bank_branch_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_branch_code() {
		return bank_branch_code;
	}
	
   /**
	* 设置 
	* @param bank_branch_code
	*/
 	public void setBank_branch_code(java.lang.String bank_branch_code) {
		this.bank_branch_code = bank_branch_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_name() {
		return bank_name;
	}
	
   /**
	* 设置 
	* @param bank_name
	*/
 	public void setBank_name(java.lang.String bank_name) {
		this.bank_name = bank_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_code() {
		return bank_code;
	}
	
   /**
	* 设置 
	* @param bank_code
	*/
 	public void setBank_code(java.lang.String bank_code) {
		this.bank_code = bank_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCity() {
		return city;
	}
	
   /**
	* 设置 
	* @param city
	*/
 	public void setCity(java.lang.String city) {
		this.city = city;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProvince_code() {
		return province_code;
	}
	
   /**
	* 设置 
	* @param province_code
	*/
 	public void setProvince_code(java.lang.String province_code) {
		this.province_code = province_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getProvince() {
		return province;
	}
	
   /**
	* 设置 
	* @param province
	*/
 	public void setProvince(java.lang.String province) {
		this.province = province;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCity_code() {
		return city_code;
	}
	
   /**
	* 设置 
	* @param city_code
	*/
 	public void setCity_code(java.lang.String city_code) {
		this.city_code = city_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Short getReserved1() {
		return reserved1;
	}
	
   /**
	* 设置 
	* @param reserved1
	*/
 	public void setReserved1(java.lang.Short reserved1) {
		this.reserved1 = reserved1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved2() {
		return reserved2;
	}
	
   /**
	* 设置 
	* @param reserved2
	*/
 	public void setReserved2(java.lang.String reserved2) {
		this.reserved2 = reserved2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved3() {
		return reserved3;
	}
	
   /**
	* 设置 
	* @param reserved3
	*/
 	public void setReserved3(java.lang.String reserved3) {
		this.reserved3 = reserved3;
	}
}
