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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "UNILATERAL_ORDER_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class UnilateralOrderInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//ID
	private java.lang.String trans_date;//交易时间
	private java.lang.String trans_amt;//交易金额
	private java.lang.String order_id;//订单号
	private java.lang.String card_id;//卡号
	private java.lang.String sub_mer_id;//子商户号
	private java.lang.String mer_sys_id;//机构号
	private java.lang.String mer_ord_id;//商户订单号
	private java.lang.String trans_mer_id;//交易商户号
	private java.lang.String date;//创建日期
	private java.lang.String sys_ref_num;//系统跟踪号
	private java.lang.String sys_tra_num;//系统参考号
	private java.lang.String return_code;//返回码
	private java.lang.String trans_type;//交易类型
	private java.lang.String reserved1;//扩展
	private java.lang.String reserved2;//扩展
	private java.lang.String reserved3;//扩展
	private java.lang.String reserved4;//扩展
	private java.lang.String reserved5;//扩展

   /**
	* 获取 ID
	* @return
	*/
	public java.lang.Long getId() {
		return id;
	}
	
   /**
	* 设置 ID
	* @param id
	*/
 	public void setId(java.lang.Long id) {
		this.id = id;
	}
   /**
	* 获取 交易时间
	* @return
	*/
	public java.lang.String getTrans_date() {
		return trans_date;
	}
	
   /**
	* 设置 交易时间
	* @param trans_date
	*/
 	public void setTrans_date(java.lang.String trans_date) {
		this.trans_date = trans_date;
	}
   /**
	* 获取 交易金额
	* @return
	*/
	public java.lang.String getTrans_amt() {
		return trans_amt;
	}
	
   /**
	* 设置 交易金额
	* @param trans_amt
	*/
 	public void setTrans_amt(java.lang.String trans_amt) {
		this.trans_amt = trans_amt;
	}
   /**
	* 获取 订单号
	* @return
	*/
	public java.lang.String getOrder_id() {
		return order_id;
	}
	
   /**
	* 设置 订单号
	* @param order_id
	*/
 	public void setOrder_id(java.lang.String order_id) {
		this.order_id = order_id;
	}
   /**
	* 获取 卡号
	* @return
	*/
	public java.lang.String getCard_id() {
		return card_id;
	}
	
   /**
	* 设置 卡号
	* @param card_id
	*/
 	public void setCard_id(java.lang.String card_id) {
		this.card_id = card_id;
	}
   /**
	* 获取 子商户号
	* @return
	*/
	public java.lang.String getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 子商户号
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.String sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
	}
   /**
	* 获取 机构号
	* @return
	*/
	public java.lang.String getMer_sys_id() {
		return mer_sys_id;
	}
	
   /**
	* 设置 机构号
	* @param mer_sys_id
	*/
 	public void setMer_sys_id(java.lang.String mer_sys_id) {
		this.mer_sys_id = mer_sys_id;
	}
   /**
	* 获取 商户订单号
	* @return
	*/
	public java.lang.String getMer_ord_id() {
		return mer_ord_id;
	}
	
   /**
	* 设置 商户订单号
	* @param mer_ord_id
	*/
 	public void setMer_ord_id(java.lang.String mer_ord_id) {
		this.mer_ord_id = mer_ord_id;
	}
   /**
	* 获取 交易商户号
	* @return
	*/
	public java.lang.String getTrans_mer_id() {
		return trans_mer_id;
	}
	
   /**
	* 设置 交易商户号
	* @param trans_mer_id
	*/
 	public void setTrans_mer_id(java.lang.String trans_mer_id) {
		this.trans_mer_id = trans_mer_id;
	}
   /**
	* 获取 创建日期
	* @return
	*/
	public java.lang.String getDate() {
		return date;
	}
	
   /**
	* 设置 创建日期
	* @param date
	*/
 	public void setDate(java.lang.String date) {
		this.date = date;
	}
   /**
	* 获取 系统跟踪号
	* @return
	*/
	public java.lang.String getSys_ref_num() {
		return sys_ref_num;
	}
	
   /**
	* 设置 系统跟踪号
	* @param sys_ref_num
	*/
 	public void setSys_ref_num(java.lang.String sys_ref_num) {
		this.sys_ref_num = sys_ref_num;
	}
   /**
	* 获取 系统参考号
	* @return
	*/
	public java.lang.String getSys_tra_num() {
		return sys_tra_num;
	}
	
   /**
	* 设置 系统参考号
	* @param sys_tra_num
	*/
 	public void setSys_tra_num(java.lang.String sys_tra_num) {
		this.sys_tra_num = sys_tra_num;
	}
   /**
	* 获取 返回码
	* @return
	*/
	public java.lang.String getReturn_code() {
		return return_code;
	}
	
   /**
	* 设置 返回码
	* @param return_code
	*/
 	public void setReturn_code(java.lang.String return_code) {
		this.return_code = return_code;
	}
   /**
	* 获取 交易类型
	* @return
	*/
	public java.lang.String getTrans_type() {
		return trans_type;
	}
	
   /**
	* 设置 交易类型
	* @param trans_type
	*/
 	public void setTrans_type(java.lang.String trans_type) {
		this.trans_type = trans_type;
	}
   /**
	* 获取 扩展
	* @return
	*/
	public java.lang.String getReserved1() {
		return reserved1;
	}
	
   /**
	* 设置 扩展
	* @param reserved1
	*/
 	public void setReserved1(java.lang.String reserved1) {
		this.reserved1 = reserved1;
	}
   /**
	* 获取 扩展
	* @return
	*/
	public java.lang.String getReserved2() {
		return reserved2;
	}
	
   /**
	* 设置 扩展
	* @param reserved2
	*/
 	public void setReserved2(java.lang.String reserved2) {
		this.reserved2 = reserved2;
	}
   /**
	* 获取 扩展
	* @return
	*/
	public java.lang.String getReserved3() {
		return reserved3;
	}
	
   /**
	* 设置 扩展
	* @param reserved3
	*/
 	public void setReserved3(java.lang.String reserved3) {
		this.reserved3 = reserved3;
	}
   /**
	* 获取 扩展
	* @return
	*/
	public java.lang.String getReserved4() {
		return reserved4;
	}
	
   /**
	* 设置 扩展
	* @param reserved4
	*/
 	public void setReserved4(java.lang.String reserved4) {
		this.reserved4 = reserved4;
	}
   /**
	* 获取 扩展
	* @return
	*/
	public java.lang.String getReserved5() {
		return reserved5;
	}
	
   /**
	* 设置 扩展
	* @param reserved5
	*/
 	public void setReserved5(java.lang.String reserved5) {
		this.reserved5 = reserved5;
	}
}
