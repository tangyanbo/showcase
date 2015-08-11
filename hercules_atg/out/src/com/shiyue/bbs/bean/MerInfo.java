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
@EntityPK(Pk = "mer_sys_id", defaultColumn = false, tableName = "MER_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class MerInfoDto  extends BaseDtoImpl{//
	private java.lang.Long mer_sys_id;//
	private java.lang.String mer_name;//
	private java.lang.String mer_reg_no;//
	private java.lang.String mer_tax_no;//
	private java.lang.String organization_code;//
	private java.lang.String mer_reg_addr;//
	private java.lang.String mer_legal_person;//
	private java.lang.String mer_legal_idcard;//
	private java.lang.String reg_capital;//
	private java.lang.String mer_kind;//
	private java.lang.String contactor;//
	private java.lang.String contactor_phone;//
	private java.lang.String contactor_addr;//
	private java.lang.String contactor_email;//
	private java.lang.String sett_account_name;//
	private java.lang.String sett_account_no;//
	private java.lang.String sett_agency;//
	private java.lang.String sign_date;//
	private java.lang.String sign_person;//
	private java.lang.String disp_name;//
	private java.lang.Long plat_mer_id;//
	private java.lang.String create_time;//
	private java.lang.String status;//
	private java.lang.String auth_status;//
	private java.lang.String logo;//
	private java.lang.String color;//
	private java.lang.String bill_cycle;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String sett_acc_type;//
	private java.lang.String access_type;//
	private java.lang.String mer_type;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getMer_sys_id() {
		return mer_sys_id;
	}
	
   /**
	* 设置 
	* @param mer_sys_id
	*/
 	public void setMer_sys_id(java.lang.Long mer_sys_id) {
		this.mer_sys_id = mer_sys_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_name() {
		return mer_name;
	}
	
   /**
	* 设置 
	* @param mer_name
	*/
 	public void setMer_name(java.lang.String mer_name) {
		this.mer_name = mer_name;
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
	public java.lang.String getOrganization_code() {
		return organization_code;
	}
	
   /**
	* 设置 
	* @param organization_code
	*/
 	public void setOrganization_code(java.lang.String organization_code) {
		this.organization_code = organization_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_reg_addr() {
		return mer_reg_addr;
	}
	
   /**
	* 设置 
	* @param mer_reg_addr
	*/
 	public void setMer_reg_addr(java.lang.String mer_reg_addr) {
		this.mer_reg_addr = mer_reg_addr;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_legal_person() {
		return mer_legal_person;
	}
	
   /**
	* 设置 
	* @param mer_legal_person
	*/
 	public void setMer_legal_person(java.lang.String mer_legal_person) {
		this.mer_legal_person = mer_legal_person;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_legal_idcard() {
		return mer_legal_idcard;
	}
	
   /**
	* 设置 
	* @param mer_legal_idcard
	*/
 	public void setMer_legal_idcard(java.lang.String mer_legal_idcard) {
		this.mer_legal_idcard = mer_legal_idcard;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReg_capital() {
		return reg_capital;
	}
	
   /**
	* 设置 
	* @param reg_capital
	*/
 	public void setReg_capital(java.lang.String reg_capital) {
		this.reg_capital = reg_capital;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_kind() {
		return mer_kind;
	}
	
   /**
	* 设置 
	* @param mer_kind
	*/
 	public void setMer_kind(java.lang.String mer_kind) {
		this.mer_kind = mer_kind;
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
	public java.lang.String getContactor_phone() {
		return contactor_phone;
	}
	
   /**
	* 设置 
	* @param contactor_phone
	*/
 	public void setContactor_phone(java.lang.String contactor_phone) {
		this.contactor_phone = contactor_phone;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContactor_addr() {
		return contactor_addr;
	}
	
   /**
	* 设置 
	* @param contactor_addr
	*/
 	public void setContactor_addr(java.lang.String contactor_addr) {
		this.contactor_addr = contactor_addr;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getContactor_email() {
		return contactor_email;
	}
	
   /**
	* 设置 
	* @param contactor_email
	*/
 	public void setContactor_email(java.lang.String contactor_email) {
		this.contactor_email = contactor_email;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSett_account_name() {
		return sett_account_name;
	}
	
   /**
	* 设置 
	* @param sett_account_name
	*/
 	public void setSett_account_name(java.lang.String sett_account_name) {
		this.sett_account_name = sett_account_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSett_account_no() {
		return sett_account_no;
	}
	
   /**
	* 设置 
	* @param sett_account_no
	*/
 	public void setSett_account_no(java.lang.String sett_account_no) {
		this.sett_account_no = sett_account_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSett_agency() {
		return sett_agency;
	}
	
   /**
	* 设置 
	* @param sett_agency
	*/
 	public void setSett_agency(java.lang.String sett_agency) {
		this.sett_agency = sett_agency;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSign_date() {
		return sign_date;
	}
	
   /**
	* 设置 
	* @param sign_date
	*/
 	public void setSign_date(java.lang.String sign_date) {
		this.sign_date = sign_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSign_person() {
		return sign_person;
	}
	
   /**
	* 设置 
	* @param sign_person
	*/
 	public void setSign_person(java.lang.String sign_person) {
		this.sign_person = sign_person;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDisp_name() {
		return disp_name;
	}
	
   /**
	* 设置 
	* @param disp_name
	*/
 	public void setDisp_name(java.lang.String disp_name) {
		this.disp_name = disp_name;
	}
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
	public java.lang.String getAuth_status() {
		return auth_status;
	}
	
   /**
	* 设置 
	* @param auth_status
	*/
 	public void setAuth_status(java.lang.String auth_status) {
		this.auth_status = auth_status;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBill_cycle() {
		return bill_cycle;
	}
	
   /**
	* 设置 
	* @param bill_cycle
	*/
 	public void setBill_cycle(java.lang.String bill_cycle) {
		this.bill_cycle = bill_cycle;
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
	public java.lang.String getSett_acc_type() {
		return sett_acc_type;
	}
	
   /**
	* 设置 
	* @param sett_acc_type
	*/
 	public void setSett_acc_type(java.lang.String sett_acc_type) {
		this.sett_acc_type = sett_acc_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccess_type() {
		return access_type;
	}
	
   /**
	* 设置 
	* @param access_type
	*/
 	public void setAccess_type(java.lang.String access_type) {
		this.access_type = access_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_type() {
		return mer_type;
	}
	
   /**
	* 设置 
	* @param mer_type
	*/
 	public void setMer_type(java.lang.String mer_type) {
		this.mer_type = mer_type;
	}
}
