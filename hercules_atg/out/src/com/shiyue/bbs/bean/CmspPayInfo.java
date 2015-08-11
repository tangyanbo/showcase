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
@EntityPK(Pk = "order_id", defaultColumn = false, tableName = "CMSP_PAY_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class CmspPayInfoDto  extends BaseDtoImpl{//
	private java.lang.Long order_id;//
	private java.lang.String trans_mer_id;//
	private java.lang.String trans_ter_id;//
	private java.lang.Long trans_amt;//
	private java.lang.String trans_cur;//
	private java.lang.String trans_time;//
	private java.lang.String trans_status;//
	private java.lang.String trans_type;//
	private java.lang.String res_code;//
	private java.lang.String settle_date;//
	private java.lang.String pan;//
	private java.lang.String create_time;//
	private java.lang.String reserved;//
	private java.lang.String ext;//
	private java.lang.String tracking_no;//
	private java.lang.String ext1;//
	private java.lang.String ext2;//
	private java.lang.String ext3;//
	private java.lang.String create_date;//
	private java.lang.String cmsp_resverved;//

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
	public java.lang.String getTrans_mer_id() {
		return trans_mer_id;
	}
	
   /**
	* 设置 
	* @param trans_mer_id
	*/
 	public void setTrans_mer_id(java.lang.String trans_mer_id) {
		this.trans_mer_id = trans_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_ter_id() {
		return trans_ter_id;
	}
	
   /**
	* 设置 
	* @param trans_ter_id
	*/
 	public void setTrans_ter_id(java.lang.String trans_ter_id) {
		this.trans_ter_id = trans_ter_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTrans_amt() {
		return trans_amt;
	}
	
   /**
	* 设置 
	* @param trans_amt
	*/
 	public void setTrans_amt(java.lang.Long trans_amt) {
		this.trans_amt = trans_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_cur() {
		return trans_cur;
	}
	
   /**
	* 设置 
	* @param trans_cur
	*/
 	public void setTrans_cur(java.lang.String trans_cur) {
		this.trans_cur = trans_cur;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_time() {
		return trans_time;
	}
	
   /**
	* 设置 
	* @param trans_time
	*/
 	public void setTrans_time(java.lang.String trans_time) {
		this.trans_time = trans_time;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_status() {
		return trans_status;
	}
	
   /**
	* 设置 
	* @param trans_status
	*/
 	public void setTrans_status(java.lang.String trans_status) {
		this.trans_status = trans_status;
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
	public java.lang.String getPan() {
		return pan;
	}
	
   /**
	* 设置 
	* @param pan
	*/
 	public void setPan(java.lang.String pan) {
		this.pan = pan;
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
	public java.lang.String getExt() {
		return ext;
	}
	
   /**
	* 设置 
	* @param ext
	*/
 	public void setExt(java.lang.String ext) {
		this.ext = ext;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTracking_no() {
		return tracking_no;
	}
	
   /**
	* 设置 
	* @param tracking_no
	*/
 	public void setTracking_no(java.lang.String tracking_no) {
		this.tracking_no = tracking_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getExt1() {
		return ext1;
	}
	
   /**
	* 设置 
	* @param ext1
	*/
 	public void setExt1(java.lang.String ext1) {
		this.ext1 = ext1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getExt2() {
		return ext2;
	}
	
   /**
	* 设置 
	* @param ext2
	*/
 	public void setExt2(java.lang.String ext2) {
		this.ext2 = ext2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getExt3() {
		return ext3;
	}
	
   /**
	* 设置 
	* @param ext3
	*/
 	public void setExt3(java.lang.String ext3) {
		this.ext3 = ext3;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCreate_date() {
		return create_date;
	}
	
   /**
	* 设置 
	* @param create_date
	*/
 	public void setCreate_date(java.lang.String create_date) {
		this.create_date = create_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCmsp_resverved() {
		return cmsp_resverved;
	}
	
   /**
	* 设置 
	* @param cmsp_resverved
	*/
 	public void setCmsp_resverved(java.lang.String cmsp_resverved) {
		this.cmsp_resverved = cmsp_resverved;
	}
}
