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
@EntityPK(Pk = "bankid", defaultColumn = false, tableName = "V2_BANK_BEHALF_ACCOUNT_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class V2BankBehalfAccountInfoDto  extends BaseDtoImpl{//
	private java.lang.Long bankid;//
	private java.lang.String pay_branch_no;//
	private java.lang.Long balance;//
	private java.lang.String pay_bank_name;//
	private java.lang.String pay_account_type;//
	private java.lang.String create_time;//
	private java.lang.String finish_time;//
	private java.lang.String account1_no;//
	private java.lang.String account1_name;//
	private java.lang.String status;//
	private java.lang.Long acc_available_balance;//
	private java.lang.Long acc_blocked_balances;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBankid() {
		return bankid;
	}
	
   /**
	* 设置 
	* @param bankid
	*/
 	public void setBankid(java.lang.Long bankid) {
		this.bankid = bankid;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPay_branch_no() {
		return pay_branch_no;
	}
	
   /**
	* 设置 
	* @param pay_branch_no
	*/
 	public void setPay_branch_no(java.lang.String pay_branch_no) {
		this.pay_branch_no = pay_branch_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBalance() {
		return balance;
	}
	
   /**
	* 设置 
	* @param balance
	*/
 	public void setBalance(java.lang.Long balance) {
		this.balance = balance;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPay_bank_name() {
		return pay_bank_name;
	}
	
   /**
	* 设置 
	* @param pay_bank_name
	*/
 	public void setPay_bank_name(java.lang.String pay_bank_name) {
		this.pay_bank_name = pay_bank_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPay_account_type() {
		return pay_account_type;
	}
	
   /**
	* 设置 
	* @param pay_account_type
	*/
 	public void setPay_account_type(java.lang.String pay_account_type) {
		this.pay_account_type = pay_account_type;
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
	public java.lang.String getFinish_time() {
		return finish_time;
	}
	
   /**
	* 设置 
	* @param finish_time
	*/
 	public void setFinish_time(java.lang.String finish_time) {
		this.finish_time = finish_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount1_no() {
		return account1_no;
	}
	
   /**
	* 设置 
	* @param account1_no
	*/
 	public void setAccount1_no(java.lang.String account1_no) {
		this.account1_no = account1_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount1_name() {
		return account1_name;
	}
	
   /**
	* 设置 
	* @param account1_name
	*/
 	public void setAccount1_name(java.lang.String account1_name) {
		this.account1_name = account1_name;
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
	public java.lang.Long getAcc_available_balance() {
		return acc_available_balance;
	}
	
   /**
	* 设置 
	* @param acc_available_balance
	*/
 	public void setAcc_available_balance(java.lang.Long acc_available_balance) {
		this.acc_available_balance = acc_available_balance;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAcc_blocked_balances() {
		return acc_blocked_balances;
	}
	
   /**
	* 设置 
	* @param acc_blocked_balances
	*/
 	public void setAcc_blocked_balances(java.lang.Long acc_blocked_balances) {
		this.acc_blocked_balances = acc_blocked_balances;
	}
}
