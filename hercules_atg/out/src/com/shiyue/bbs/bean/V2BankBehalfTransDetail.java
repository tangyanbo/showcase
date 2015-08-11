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
@EntityPK(Pk = "", defaultColumn = false, tableName = "V2_BANK_BEHALF_TRANS_DETAIL")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class V2BankBehalfTransDetailDto  extends BaseDtoImpl{//
	private java.lang.Long trans_detail_id;//
	private java.lang.String bank_behalf_id;//
	private java.lang.Long order_id;//
	private java.lang.String mer_order_id;//
	private java.lang.String bus_mer_id;//
	private java.lang.String account1_no;//
	private java.lang.String status;//
	private java.lang.String account2_no;//
	private java.lang.String account2_name;//
	private java.lang.String acc2_bank_code;//
	private java.lang.String amount;//
	private java.lang.String fee;//
	private java.lang.String res_code;//
	private java.lang.String create_time;//
	private java.lang.String finish_time;//
	private java.lang.String acc1_balance;//
	private java.lang.String mer_balance;//
	private java.lang.String mer_fee_bal;//
	private java.lang.String postscript;//
	private java.lang.String acc2_bank_name;//
	private java.lang.String pre_detail_id;//
	private java.lang.String branchno;//
	private java.lang.String index1;//
	private java.lang.String res_desc;//
	private java.lang.String sub_mer_id;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTrans_detail_id() {
		return trans_detail_id;
	}
	
   /**
	* 设置 
	* @param trans_detail_id
	*/
 	public void setTrans_detail_id(java.lang.Long trans_detail_id) {
		this.trans_detail_id = trans_detail_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_behalf_id() {
		return bank_behalf_id;
	}
	
   /**
	* 设置 
	* @param bank_behalf_id
	*/
 	public void setBank_behalf_id(java.lang.String bank_behalf_id) {
		this.bank_behalf_id = bank_behalf_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getOrder_id() {
		return order_id;
	}
	
   /**
	* 设置 
	* @param order_id
	*/
 	public void setOrder_id(java.lang.Long order_id) {
		this.order_id = order_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_order_id() {
		return mer_order_id;
	}
	
   /**
	* 设置 
	* @param mer_order_id
	*/
 	public void setMer_order_id(java.lang.String mer_order_id) {
		this.mer_order_id = mer_order_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBus_mer_id() {
		return bus_mer_id;
	}
	
   /**
	* 设置 
	* @param bus_mer_id
	*/
 	public void setBus_mer_id(java.lang.String bus_mer_id) {
		this.bus_mer_id = bus_mer_id;
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
	public java.lang.String getAccount2_no() {
		return account2_no;
	}
	
   /**
	* 设置 
	* @param account2_no
	*/
 	public void setAccount2_no(java.lang.String account2_no) {
		this.account2_no = account2_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount2_name() {
		return account2_name;
	}
	
   /**
	* 设置 
	* @param account2_name
	*/
 	public void setAccount2_name(java.lang.String account2_name) {
		this.account2_name = account2_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAcc2_bank_code() {
		return acc2_bank_code;
	}
	
   /**
	* 设置 
	* @param acc2_bank_code
	*/
 	public void setAcc2_bank_code(java.lang.String acc2_bank_code) {
		this.acc2_bank_code = acc2_bank_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAmount() {
		return amount;
	}
	
   /**
	* 设置 
	* @param amount
	*/
 	public void setAmount(java.lang.String amount) {
		this.amount = amount;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFee() {
		return fee;
	}
	
   /**
	* 设置 
	* @param fee
	*/
 	public void setFee(java.lang.String fee) {
		this.fee = fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRes_code() {
		return res_code;
	}
	
   /**
	* 设置 
	* @param res_code
	*/
 	public void setRes_code(java.lang.String res_code) {
		this.res_code = res_code;
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
	public java.lang.String getAcc1_balance() {
		return acc1_balance;
	}
	
   /**
	* 设置 
	* @param acc1_balance
	*/
 	public void setAcc1_balance(java.lang.String acc1_balance) {
		this.acc1_balance = acc1_balance;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_balance() {
		return mer_balance;
	}
	
   /**
	* 设置 
	* @param mer_balance
	*/
 	public void setMer_balance(java.lang.String mer_balance) {
		this.mer_balance = mer_balance;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_fee_bal() {
		return mer_fee_bal;
	}
	
   /**
	* 设置 
	* @param mer_fee_bal
	*/
 	public void setMer_fee_bal(java.lang.String mer_fee_bal) {
		this.mer_fee_bal = mer_fee_bal;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPostscript() {
		return postscript;
	}
	
   /**
	* 设置 
	* @param postscript
	*/
 	public void setPostscript(java.lang.String postscript) {
		this.postscript = postscript;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAcc2_bank_name() {
		return acc2_bank_name;
	}
	
   /**
	* 设置 
	* @param acc2_bank_name
	*/
 	public void setAcc2_bank_name(java.lang.String acc2_bank_name) {
		this.acc2_bank_name = acc2_bank_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPre_detail_id() {
		return pre_detail_id;
	}
	
   /**
	* 设置 
	* @param pre_detail_id
	*/
 	public void setPre_detail_id(java.lang.String pre_detail_id) {
		this.pre_detail_id = pre_detail_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBranchno() {
		return branchno;
	}
	
   /**
	* 设置 
	* @param branchno
	*/
 	public void setBranchno(java.lang.String branchno) {
		this.branchno = branchno;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIndex1() {
		return index1;
	}
	
   /**
	* 设置 
	* @param index1
	*/
 	public void setIndex1(java.lang.String index1) {
		this.index1 = index1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRes_desc() {
		return res_desc;
	}
	
   /**
	* 设置 
	* @param res_desc
	*/
 	public void setRes_desc(java.lang.String res_desc) {
		this.res_desc = res_desc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.String sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
	}
}
