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
@EntityPK(Pk = "plat_mer_id", defaultColumn = false, tableName = "PLAT_MER_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class PlatMerInfoDto  extends BaseDtoImpl{//
	private java.lang.Long plat_mer_id;//
	private java.lang.String plat_mer_name;//
	private java.lang.String mer_reg_no;//
	private java.lang.String mer_tax_no;//
	private java.lang.String legal_person;//
	private java.lang.String legal_idcard;//
	private java.lang.String contactor;//
	private java.lang.String contact_phone;//
	private java.lang.String contact_email;//
	private java.lang.String contact_addr;//
	private java.lang.String create_time;//
	private java.lang.String status;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String logo;//
	private java.lang.String color;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getPlat_mer_id() {
		return plat_mer_id;
	}
	
   /**
	* 设置 
	* @param plat_mer_id
	*/
 	public void setPlat_mer_id(java.lang.Long plat_mer_id) {
		this.plat_mer_id = plat_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPlat_mer_name() {
		return plat_mer_name;
	}
	
   /**
	* 设置 
	* @param plat_mer_name
	*/
 	public void setPlat_mer_name(java.lang.String plat_mer_name) {
		this.plat_mer_name = plat_mer_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_reg_no() {
		return mer_reg_no;
	}
	
   /**
	* 设置 
	* @param mer_reg_no
	*/
 	public void setMer_reg_no(java.lang.String mer_reg_no) {
		this.mer_reg_no = mer_reg_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_tax_no() {
		return mer_tax_no;
	}
	
   /**
	* 设置 
	* @param mer_tax_no
	*/
 	public void setMer_tax_no(java.lang.String mer_tax_no) {
		this.mer_tax_no = mer_tax_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLegal_person() {
		return legal_person;
	}
	
   /**
	* 设置 
	* @param legal_person
	*/
 	public void setLegal_person(java.lang.String legal_person) {
		this.legal_person = legal_person;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLegal_idcard() {
		return legal_idcard;
	}
	
   /**
	* 设置 
	* @param legal_idcard
	*/
 	public void setLegal_idcard(java.lang.String legal_idcard) {
		this.legal_idcard = legal_idcard;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContactor() {
		return contactor;
	}
	
   /**
	* 设置 
	* @param contactor
	*/
 	public void setContactor(java.lang.String contactor) {
		this.contactor = contactor;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContact_phone() {
		return contact_phone;
	}
	
   /**
	* 设置 
	* @param contact_phone
	*/
 	public void setContact_phone(java.lang.String contact_phone) {
		this.contact_phone = contact_phone;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContact_email() {
		return contact_email;
	}
	
   /**
	* 设置 
	* @param contact_email
	*/
 	public void setContact_email(java.lang.String contact_email) {
		this.contact_email = contact_email;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContact_addr() {
		return contact_addr;
	}
	
   /**
	* 设置 
	* @param contact_addr
	*/
 	public void setContact_addr(java.lang.String contact_addr) {
		this.contact_addr = contact_addr;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCreate_time() {
		return create_time;
	}
	
   /**
	* 设置 
	* @param create_time
	*/
 	public void setCreate_time(java.lang.String create_time) {
		this.create_time = create_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getStatus() {
		return status;
	}
	
   /**
	* 设置 
	* @param status
	*/
 	public void setStatus(java.lang.String status) {
		this.status = status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRemark() {
		return remark;
	}
	
   /**
	* 设置 
	* @param remark
	*/
 	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved() {
		return reserved;
	}
	
   /**
	* 设置 
	* @param reserved
	*/
 	public void setReserved(java.lang.String reserved) {
		this.reserved = reserved;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLogo() {
		return logo;
	}
	
   /**
	* 设置 
	* @param logo
	*/
 	public void setLogo(java.lang.String logo) {
		this.logo = logo;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getColor() {
		return color;
	}
	
   /**
	* 设置 
	* @param color
	*/
 	public void setColor(java.lang.String color) {
		this.color = color;
	}
}
