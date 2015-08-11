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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "SUB_MER_CASHOUT")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerCashoutDto  extends BaseDtoImpl{//
	private java.lang.Long id;//id
	private java.lang.Long sub_mer_id;//子商户号
	private java.lang.Long mer_sys_id;//
	private java.lang.String order_amt;//
	private java.lang.String daifa_amt;//
	private java.lang.String order_status;//
	private java.lang.String create_time;//
	private java.lang.String finish_time;//
	private java.lang.String trans_id;//
	private java.lang.String trans_qid;//
	private java.lang.String trans_fee;//
	private java.lang.Long batch_id;//
	private java.lang.String t0_mer_rate;//
	private java.lang.String t0_mer_profit;//
	private java.lang.String t0_mer_gain;//
	private java.lang.Long t0_hx_profit;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//

   /**
	* 获取 id
	* @return
	*/
	public java.lang.Long getId() {
		return id;
	}
	
   /**
	* 设置 id
	* @param id
	*/
 	public void setId(java.lang.Long id) {
		this.id = id;
	}
   /**
	* 获取 子商户号
	* @return
	*/
	public java.lang.Long getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 子商户号
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.Long sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
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
	public java.lang.String getOrder_amt() {
		return order_amt;
	}
	
   /**
	* 设置 
	* @param order_amt
	*/
 	public void setOrder_amt(java.lang.String order_amt) {
		this.order_amt = order_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDaifa_amt() {
		return daifa_amt;
	}
	
   /**
	* 设置 
	* @param daifa_amt
	*/
 	public void setDaifa_amt(java.lang.String daifa_amt) {
		this.daifa_amt = daifa_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrder_status() {
		return order_status;
	}
	
   /**
	* 设置 
	* @param order_status
	*/
 	public void setOrder_status(java.lang.String order_status) {
		this.order_status = order_status;
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
	public java.lang.String getTrans_id() {
		return trans_id;
	}
	
   /**
	* 设置 
	* @param trans_id
	*/
 	public void setTrans_id(java.lang.String trans_id) {
		this.trans_id = trans_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_qid() {
		return trans_qid;
	}
	
   /**
	* 设置 
	* @param trans_qid
	*/
 	public void setTrans_qid(java.lang.String trans_qid) {
		this.trans_qid = trans_qid;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_fee() {
		return trans_fee;
	}
	
   /**
	* 设置 
	* @param trans_fee
	*/
 	public void setTrans_fee(java.lang.String trans_fee) {
		this.trans_fee = trans_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBatch_id() {
		return batch_id;
	}
	
   /**
	* 设置 
	* @param batch_id
	*/
 	public void setBatch_id(java.lang.Long batch_id) {
		this.batch_id = batch_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getT0_mer_rate() {
		return t0_mer_rate;
	}
	
   /**
	* 设置 
	* @param t0_mer_rate
	*/
 	public void setT0_mer_rate(java.lang.String t0_mer_rate) {
		this.t0_mer_rate = t0_mer_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getT0_mer_profit() {
		return t0_mer_profit;
	}
	
   /**
	* 设置 
	* @param t0_mer_profit
	*/
 	public void setT0_mer_profit(java.lang.String t0_mer_profit) {
		this.t0_mer_profit = t0_mer_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getT0_mer_gain() {
		return t0_mer_gain;
	}
	
   /**
	* 设置 
	* @param t0_mer_gain
	*/
 	public void setT0_mer_gain(java.lang.String t0_mer_gain) {
		this.t0_mer_gain = t0_mer_gain;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getT0_hx_profit() {
		return t0_hx_profit;
	}
	
   /**
	* 设置 
	* @param t0_hx_profit
	*/
 	public void setT0_hx_profit(java.lang.Long t0_hx_profit) {
		this.t0_hx_profit = t0_hx_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReserved1() {
		return reserved1;
	}
	
   /**
	* 设置 
	* @param reserved1
	*/
 	public void setReserved1(java.lang.String reserved1) {
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
