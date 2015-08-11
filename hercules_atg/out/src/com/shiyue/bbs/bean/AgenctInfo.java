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
@EntityPK(Pk = "agent_id", defaultColumn = false, tableName = "AGENCT_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class AgenctInfoDto  extends BaseDtoImpl{//
	private java.lang.Long agent_id;//
	private java.lang.String agent_name;//
	private java.lang.String reg_no;//
	private java.lang.String tax_no;//
	private java.lang.String reg_addr;//
	private java.lang.String region;//
	private java.lang.String sett_account_name;//
	private java.lang.String sett_account_no;//
	private java.lang.String sett_agency;//
	private java.lang.String sett_acc_type;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String level;//
	private java.lang.Long super_agent_id;//
	private java.lang.String bill_cycle;//
	private java.lang.String terminal_type;//
	private java.lang.String bus_type;//
	private java.lang.String status;//
	private java.lang.String create_time;//
	private java.lang.String remark;//
	private java.lang.String reserved;//
	private java.lang.String logo;//
	private java.lang.String color;//
	private java.lang.String agent_rate_1;//
	private java.lang.String agent_highest_fee;//
	private java.lang.String agent_profit_rate;//
	private java.lang.String agent_rate_2;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_id() {
		return agent_id;
	}
	
   /**
	* 设置 
	* @param agent_id
	*/
 	public void setAgent_id(java.lang.Long agent_id) {
		this.agent_id = agent_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_name() {
		return agent_name;
	}
	
   /**
	* 设置 
	* @param agent_name
	*/
 	public void setAgent_name(java.lang.String agent_name) {
		this.agent_name = agent_name;
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
	public java.lang.String getLevel() {
		return level;
	}
	
   /**
	* 设置 
	* @param level
	*/
 	public void setLevel(java.lang.String level) {
		this.level = level;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSuper_agent_id() {
		return super_agent_id;
	}
	
   /**
	* 设置 
	* @param super_agent_id
	*/
 	public void setSuper_agent_id(java.lang.Long super_agent_id) {
		this.super_agent_id = super_agent_id;
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
	public java.lang.String getTerminal_type() {
		return terminal_type;
	}
	
   /**
	* 设置 
	* @param terminal_type
	*/
 	public void setTerminal_type(java.lang.String terminal_type) {
		this.terminal_type = terminal_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_type() {
		return bus_type;
	}
	
   /**
	* 设置 
	* @param bus_type
	*/
 	public void setBus_type(java.lang.String bus_type) {
		this.bus_type = bus_type;
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
	public java.lang.String getAgent_rate_1() {
		return agent_rate_1;
	}
	
   /**
	* 设置 
	* @param agent_rate_1
	*/
 	public void setAgent_rate_1(java.lang.String agent_rate_1) {
		this.agent_rate_1 = agent_rate_1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_highest_fee() {
		return agent_highest_fee;
	}
	
   /**
	* 设置 
	* @param agent_highest_fee
	*/
 	public void setAgent_highest_fee(java.lang.String agent_highest_fee) {
		this.agent_highest_fee = agent_highest_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_profit_rate() {
		return agent_profit_rate;
	}
	
   /**
	* 设置 
	* @param agent_profit_rate
	*/
 	public void setAgent_profit_rate(java.lang.String agent_profit_rate) {
		this.agent_profit_rate = agent_profit_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAgent_rate_2() {
		return agent_rate_2;
	}
	
   /**
	* 设置 
	* @param agent_rate_2
	*/
 	public void setAgent_rate_2(java.lang.String agent_rate_2) {
		this.agent_rate_2 = agent_rate_2;
	}
}
