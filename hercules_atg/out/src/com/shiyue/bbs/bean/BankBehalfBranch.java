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
@EntityPK(Pk = "bank_line_id", defaultColumn = false, tableName = "BANK_BEHALF_BRANCH")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class BankBehalfBranchDto  extends BaseDtoImpl{//
	private java.lang.Long bank_line_id;//
	private java.lang.String bank_line_number;//
	private java.lang.String bank_name;//
	private java.lang.String online_bank_number;//
	private java.lang.String settle_line_number;//
	private java.lang.String status;//
	private java.lang.String interbank_settle_status;//
	private java.lang.String bank_type;//
	private java.lang.String create_time;//
	private java.lang.String finish_time;//
	private java.lang.String keyword;//
	private java.lang.String code;//
	private java.lang.String with_holding_code;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBank_line_id() {
		return bank_line_id;
	}
	
   /**
	* 设置 
	* @param bank_line_id
	*/
 	public void setBank_line_id(java.lang.Long bank_line_id) {
		this.bank_line_id = bank_line_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_line_number() {
		return bank_line_number;
	}
	
   /**
	* 设置 
	* @param bank_line_number
	*/
 	public void setBank_line_number(java.lang.String bank_line_number) {
		this.bank_line_number = bank_line_number;
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
	public java.lang.String getOnline_bank_number() {
		return online_bank_number;
	}
	
   /**
	* 设置 
	* @param online_bank_number
	*/
 	public void setOnline_bank_number(java.lang.String online_bank_number) {
		this.online_bank_number = online_bank_number;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSettle_line_number() {
		return settle_line_number;
	}
	
   /**
	* 设置 
	* @param settle_line_number
	*/
 	public void setSettle_line_number(java.lang.String settle_line_number) {
		this.settle_line_number = settle_line_number;
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
	public java.lang.String getInterbank_settle_status() {
		return interbank_settle_status;
	}
	
   /**
	* 设置 
	* @param interbank_settle_status
	*/
 	public void setInterbank_settle_status(java.lang.String interbank_settle_status) {
		this.interbank_settle_status = interbank_settle_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_type() {
		return bank_type;
	}
	
   /**
	* 设置 
	* @param bank_type
	*/
 	public void setBank_type(java.lang.String bank_type) {
		this.bank_type = bank_type;
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
	public java.lang.String getKeyword() {
		return keyword;
	}
	
   /**
	* 设置 
	* @param keyword
	*/
 	public void setKeyword(java.lang.String keyword) {
		this.keyword = keyword;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCode() {
		return code;
	}
	
   /**
	* 设置 
	* @param code
	*/
 	public void setCode(java.lang.String code) {
		this.code = code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getWith_holding_code() {
		return with_holding_code;
	}
	
   /**
	* 设置 
	* @param with_holding_code
	*/
 	public void setWith_holding_code(java.lang.String with_holding_code) {
		this.with_holding_code = with_holding_code;
	}
}
