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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "BYPAY_PROFIT_STATICTIS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class BypayProfitStatictisDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String settle_date;//
	private java.lang.Long sum_amt;//
	private java.lang.Long sum_fee_amt;//
	private java.lang.Long sum_count;//
	private java.lang.Long sum_camt;//
	private java.lang.Long sum_fee_camt;//
	private java.lang.Long sum_ccount;//
	private java.lang.Long sum_ramt;//
	private java.lang.Long sum_fee_ramt;//
	private java.lang.Long sum_rcount;//
	private java.lang.String create_time;//
	private java.lang.Long sum_tract_fee;//
	private java.math.BigDecimal tract_bypay_profit;//
	private java.lang.Long bypay_profit;//
	private java.lang.String reserved1;//
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
	public java.lang.String getSettle_date() {
		return settle_date;
	}
	
   /**
	* 设置 
	* @param settle_date
	*/
 	public void setSettle_date(java.lang.String settle_date) {
		this.settle_date = settle_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_amt() {
		return sum_amt;
	}
	
   /**
	* 设置 
	* @param sum_amt
	*/
 	public void setSum_amt(java.lang.Long sum_amt) {
		this.sum_amt = sum_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_fee_amt() {
		return sum_fee_amt;
	}
	
   /**
	* 设置 
	* @param sum_fee_amt
	*/
 	public void setSum_fee_amt(java.lang.Long sum_fee_amt) {
		this.sum_fee_amt = sum_fee_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_count() {
		return sum_count;
	}
	
   /**
	* 设置 
	* @param sum_count
	*/
 	public void setSum_count(java.lang.Long sum_count) {
		this.sum_count = sum_count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_camt() {
		return sum_camt;
	}
	
   /**
	* 设置 
	* @param sum_camt
	*/
 	public void setSum_camt(java.lang.Long sum_camt) {
		this.sum_camt = sum_camt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_fee_camt() {
		return sum_fee_camt;
	}
	
   /**
	* 设置 
	* @param sum_fee_camt
	*/
 	public void setSum_fee_camt(java.lang.Long sum_fee_camt) {
		this.sum_fee_camt = sum_fee_camt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_ccount() {
		return sum_ccount;
	}
	
   /**
	* 设置 
	* @param sum_ccount
	*/
 	public void setSum_ccount(java.lang.Long sum_ccount) {
		this.sum_ccount = sum_ccount;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_ramt() {
		return sum_ramt;
	}
	
   /**
	* 设置 
	* @param sum_ramt
	*/
 	public void setSum_ramt(java.lang.Long sum_ramt) {
		this.sum_ramt = sum_ramt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_fee_ramt() {
		return sum_fee_ramt;
	}
	
   /**
	* 设置 
	* @param sum_fee_ramt
	*/
 	public void setSum_fee_ramt(java.lang.Long sum_fee_ramt) {
		this.sum_fee_ramt = sum_fee_ramt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getSum_rcount() {
		return sum_rcount;
	}
	
   /**
	* 设置 
	* @param sum_rcount
	*/
 	public void setSum_rcount(java.lang.Long sum_rcount) {
		this.sum_rcount = sum_rcount;
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
	public java.lang.Long getSum_tract_fee() {
		return sum_tract_fee;
	}
	
   /**
	* 设置 
	* @param sum_tract_fee
	*/
 	public void setSum_tract_fee(java.lang.Long sum_tract_fee) {
		this.sum_tract_fee = sum_tract_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getTract_bypay_profit() {
		return tract_bypay_profit;
	}
	
   /**
	* 设置 
	* @param tract_bypay_profit
	*/
 	public void setTract_bypay_profit(java.math.BigDecimal tract_bypay_profit) {
		this.tract_bypay_profit = tract_bypay_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getBypay_profit() {
		return bypay_profit;
	}
	
   /**
	* 设置 
	* @param bypay_profit
	*/
 	public void setBypay_profit(java.lang.Long bypay_profit) {
		this.bypay_profit = bypay_profit;
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
