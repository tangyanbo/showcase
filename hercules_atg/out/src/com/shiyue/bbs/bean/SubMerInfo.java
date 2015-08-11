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
@EntityPK(Pk = "sub_mer_id", defaultColumn = false, tableName = "SUB_MER_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerInfoDto  extends BaseDtoImpl{//
	private java.lang.Long sub_mer_id;//
	private java.lang.String sub_mer_name;//
	private java.lang.String short_name;//
	private java.lang.String reg_no;//
	private java.lang.String tax_no;//
	private java.lang.String organization_code;//
	private java.lang.String reg_addr;//
	private java.lang.String legal_person;//
	private java.lang.String legal_idcard;//
	private java.lang.String mer_kind;//
	private java.lang.String contactor;//
	private java.lang.String contactor_phone;//
	private java.lang.String contactor_addr;//
	private java.lang.String contactor_email;//
	private java.lang.String sett_account_name;//
	private java.lang.String sett_account_no;//
	private java.lang.String sett_agency;//
	private java.lang.Long mer_sys_id;//
	private java.lang.Long agent_id_l1;//
	private java.lang.Long agent_id_l2;//
	private java.lang.String mcc;//
	private java.lang.String realmcc;//
	private java.lang.String region;//
	private java.lang.String bill_cycle;//
	private java.lang.String status;//2：已上线
	private java.lang.String create_time;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String logo;//
	private java.lang.String color;//
	private java.lang.String sett_acc_type;//
	private java.lang.String sub_mer_tract;//
	private java.lang.Long settle_status;//
	private java.lang.String balance;//
	private java.lang.String withdrawals;//
	private java.lang.String is_t0;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.Long sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_mer_name() {
		return sub_mer_name;
	}
	
   /**
	* 设置 
	* @param sub_mer_name
	*/
 	public void setSub_mer_name(java.lang.String sub_mer_name) {
		this.sub_mer_name = sub_mer_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getShort_name() {
		return short_name;
	}
	
   /**
	* 设置 
	* @param short_name
	*/
 	public void setShort_name(java.lang.String short_name) {
		this.short_name = short_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReg_no() {
		return reg_no;
	}
	
   /**
	* 设置 
	* @param reg_no
	*/
 	public void setReg_no(java.lang.String reg_no) {
		this.reg_no = reg_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTax_no() {
		return tax_no;
	}
	
   /**
	* 设置 
	* @param tax_no
	*/
 	public void setTax_no(java.lang.String tax_no) {
		this.tax_no = tax_no;
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
	public java.lang.String getReg_addr() {
		return reg_addr;
	}
	
   /**
	* 设置 
	* @param reg_addr
	*/
 	public void setReg_addr(java.lang.String reg_addr) {
		this.reg_addr = reg_addr;
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
	public java.lang.Long getAgent_id_l1() {
		return agent_id_l1;
	}
	
   /**
	* 设置 
	* @param agent_id_l1
	*/
 	public void setAgent_id_l1(java.lang.Long agent_id_l1) {
		this.agent_id_l1 = agent_id_l1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_id_l2() {
		return agent_id_l2;
	}
	
   /**
	* 设置 
	* @param agent_id_l2
	*/
 	public void setAgent_id_l2(java.lang.Long agent_id_l2) {
		this.agent_id_l2 = agent_id_l2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMcc() {
		return mcc;
	}
	
   /**
	* 设置 
	* @param mcc
	*/
 	public void setMcc(java.lang.String mcc) {
		this.mcc = mcc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRealmcc() {
		return realmcc;
	}
	
   /**
	* 设置 
	* @param realmcc
	*/
 	public void setRealmcc(java.lang.String realmcc) {
		this.realmcc = realmcc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRegion() {
		return region;
	}
	
   /**
	* 设置 
	* @param region
	*/
 	public void setRegion(java.lang.String region) {
		this.region = region;
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
	* 获取 2：已上线
	* @return
	*/
	public java.lang.String getStatus() {
		return status;
	}
	
   /**
	* 设置 2：已上线
	* @param status
	*/
 	public void setStatus(java.lang.String status) {
		this.status = status;
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
	public java.lang.String getSub_mer_tract() {
		return sub_mer_tract;
	}
	
   /**
	* 设置 
	* @param sub_mer_tract
	*/
 	public void setSub_mer_tract(java.lang.String sub_mer_tract) {
		this.sub_mer_tract = sub_mer_tract;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSettle_status() {
		return settle_status;
	}
	
   /**
	* 设置 
	* @param settle_status
	*/
 	public void setSettle_status(java.lang.Long settle_status) {
		this.settle_status = settle_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBalance() {
		return balance;
	}
	
   /**
	* 设置 
	* @param balance
	*/
 	public void setBalance(java.lang.String balance) {
		this.balance = balance;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getWithdrawals() {
		return withdrawals;
	}
	
   /**
	* 设置 
	* @param withdrawals
	*/
 	public void setWithdrawals(java.lang.String withdrawals) {
		this.withdrawals = withdrawals;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_t0() {
		return is_t0;
	}
	
   /**
	* 设置 
	* @param is_t0
	*/
 	public void setIs_t0(java.lang.String is_t0) {
		this.is_t0 = is_t0;
	}
}
