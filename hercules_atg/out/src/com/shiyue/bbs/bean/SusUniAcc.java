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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "SUS_UNI_ACC")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SusUniAccDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String count;//
	private java.lang.String trans_date;//
	private java.lang.String trans_amt;//
	private java.lang.String status;//
	private java.lang.String order_id;//
	private java.lang.String card_id;//
	private java.lang.String sub_mer_id;//
	private java.lang.String mer_id;//
	private java.lang.String mer_ord_id;//
	private java.lang.String order_mer_id;//
	private java.lang.String date;//
	private java.lang.String sys_ref_num;//
	private java.lang.String sys_tra_num;//
	private java.lang.String card_id_1;//
	private java.lang.String return_code;//
	private java.lang.String trans_type;//

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
	public java.lang.String getCount() {
		return count;
	}
	
   /**
	* 设置 
	* @param count
	*/
 	public void setCount(java.lang.String count) {
		this.count = count;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_date() {
		return trans_date;
	}
	
   /**
	* 设置 
	* @param trans_date
	*/
 	public void setTrans_date(java.lang.String trans_date) {
		this.trans_date = trans_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_amt() {
		return trans_amt;
	}
	
   /**
	* 设置 
	* @param trans_amt
	*/
 	public void setTrans_amt(java.lang.String trans_amt) {
		this.trans_amt = trans_amt;
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
	public java.lang.String getOrder_id() {
		return order_id;
	}
	
   /**
	* 设置 
	* @param order_id
	*/
 	public void setOrder_id(java.lang.String order_id) {
		this.order_id = order_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_id() {
		return card_id;
	}
	
   /**
	* 设置 
	* @param card_id
	*/
 	public void setCard_id(java.lang.String card_id) {
		this.card_id = card_id;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_id() {
		return mer_id;
	}
	
   /**
	* 设置 
	* @param mer_id
	*/
 	public void setMer_id(java.lang.String mer_id) {
		this.mer_id = mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMer_ord_id() {
		return mer_ord_id;
	}
	
   /**
	* 设置 
	* @param mer_ord_id
	*/
 	public void setMer_ord_id(java.lang.String mer_ord_id) {
		this.mer_ord_id = mer_ord_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getOrder_mer_id() {
		return order_mer_id;
	}
	
   /**
	* 设置 
	* @param order_mer_id
	*/
 	public void setOrder_mer_id(java.lang.String order_mer_id) {
		this.order_mer_id = order_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDate() {
		return date;
	}
	
   /**
	* 设置 
	* @param date
	*/
 	public void setDate(java.lang.String date) {
		this.date = date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSys_ref_num() {
		return sys_ref_num;
	}
	
   /**
	* 设置 
	* @param sys_ref_num
	*/
 	public void setSys_ref_num(java.lang.String sys_ref_num) {
		this.sys_ref_num = sys_ref_num;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSys_tra_num() {
		return sys_tra_num;
	}
	
   /**
	* 设置 
	* @param sys_tra_num
	*/
 	public void setSys_tra_num(java.lang.String sys_tra_num) {
		this.sys_tra_num = sys_tra_num;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_id_1() {
		return card_id_1;
	}
	
   /**
	* 设置 
	* @param card_id_1
	*/
 	public void setCard_id_1(java.lang.String card_id_1) {
		this.card_id_1 = card_id_1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReturn_code() {
		return return_code;
	}
	
   /**
	* 设置 
	* @param return_code
	*/
 	public void setReturn_code(java.lang.String return_code) {
		this.return_code = return_code;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_type() {
		return trans_type;
	}
	
   /**
	* 设置 
	* @param trans_type
	*/
 	public void setTrans_type(java.lang.String trans_type) {
		this.trans_type = trans_type;
	}
}
