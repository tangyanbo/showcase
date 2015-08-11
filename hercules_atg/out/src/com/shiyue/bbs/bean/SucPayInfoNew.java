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
@EntityPK(Pk = "order_id", defaultColumn = false, tableName = "SUC_PAY_INFO_NEW")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SucPayInfoNewDto  extends BaseDtoImpl{//
	private java.lang.Long order_id;//
	private java.lang.String trans_mer_id;//
	private java.lang.String trans_ter_id;//
	private java.lang.String channel_type;//
	private java.lang.Long trans_amt;//
	private java.lang.String trans_cur;//
	private java.lang.String trans_time;//
	private java.lang.String trans_status;//
	private java.lang.String trans_type;//
	private java.lang.String res_code;//
	private java.lang.String res_desc;//
	private java.lang.String trans_trace_time;//
	private java.lang.String settle_date;//
	private java.lang.Long settle_amt;//
	private java.lang.String settle_cur;//
	private java.lang.String settle_conver_rate;//
	private java.lang.String mobile;//
	private java.lang.String id_type;//
	private java.lang.String id_no;//
	private java.lang.String user_name;//
	private java.lang.String bind_num;//
	private java.lang.String pan;//
	private java.lang.String card_type;//
	private java.lang.String issbank_id;//
	private java.lang.String issbank_name;//
	private java.lang.String ch_info;//
	private java.lang.String account1;//
	private java.lang.String account2;//
	private java.lang.Long org_order_id;//
	private java.lang.String create_time;//
	private java.lang.String modify_time;//
	private java.lang.String reserved;//
	private java.lang.String ext;//
	private java.lang.String csn;//
	private java.lang.String trans_mer_name;//
	private java.lang.String spid;//
	private java.lang.String track2_data;//
	private java.lang.String track3_data;//
	private java.lang.String ip;//
	private java.lang.String reference_no;//
	private java.lang.String auth_no;//
	private java.lang.String date_transaction;//
	private java.lang.String time_transaction;//
	private java.lang.String tracking_no;//
	private java.lang.String account2_name;//
	private java.lang.String batch_no;//
	private java.lang.String ext1;//
	private java.lang.String ext2;//
	private java.lang.String ext3;//
	private java.lang.String create_date;//
	private java.lang.String modify_date;//
	private java.lang.String entry_mode;//

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
	public java.lang.String getChannel_type() {
		return channel_type;
	}
	
   /**
	* 设置 
	* @param channel_type
	*/
 	public void setChannel_type(java.lang.String channel_type) {
		this.channel_type = channel_type;
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
	public java.lang.String getTrans_trace_time() {
		return trans_trace_time;
	}
	
   /**
	* 设置 
	* @param trans_trace_time
	*/
 	public void setTrans_trace_time(java.lang.String trans_trace_time) {
		this.trans_trace_time = trans_trace_time;
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
	public java.lang.Long getSettle_amt() {
		return settle_amt;
	}
	
   /**
	* 设置 
	* @param settle_amt
	*/
 	public void setSettle_amt(java.lang.Long settle_amt) {
		this.settle_amt = settle_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSettle_cur() {
		return settle_cur;
	}
	
   /**
	* 设置 
	* @param settle_cur
	*/
 	public void setSettle_cur(java.lang.String settle_cur) {
		this.settle_cur = settle_cur;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSettle_conver_rate() {
		return settle_conver_rate;
	}
	
   /**
	* 设置 
	* @param settle_conver_rate
	*/
 	public void setSettle_conver_rate(java.lang.String settle_conver_rate) {
		this.settle_conver_rate = settle_conver_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getMobile() {
		return mobile;
	}
	
   /**
	* 设置 
	* @param mobile
	*/
 	public void setMobile(java.lang.String mobile) {
		this.mobile = mobile;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getId_type() {
		return id_type;
	}
	
   /**
	* 设置 
	* @param id_type
	*/
 	public void setId_type(java.lang.String id_type) {
		this.id_type = id_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getId_no() {
		return id_no;
	}
	
   /**
	* 设置 
	* @param id_no
	*/
 	public void setId_no(java.lang.String id_no) {
		this.id_no = id_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUser_name() {
		return user_name;
	}
	
   /**
	* 设置 
	* @param user_name
	*/
 	public void setUser_name(java.lang.String user_name) {
		this.user_name = user_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBind_num() {
		return bind_num;
	}
	
   /**
	* 设置 
	* @param bind_num
	*/
 	public void setBind_num(java.lang.String bind_num) {
		this.bind_num = bind_num;
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
	public java.lang.String getCard_type() {
		return card_type;
	}
	
   /**
	* 设置 
	* @param card_type
	*/
 	public void setCard_type(java.lang.String card_type) {
		this.card_type = card_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIssbank_id() {
		return issbank_id;
	}
	
   /**
	* 设置 
	* @param issbank_id
	*/
 	public void setIssbank_id(java.lang.String issbank_id) {
		this.issbank_id = issbank_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIssbank_name() {
		return issbank_name;
	}
	
   /**
	* 设置 
	* @param issbank_name
	*/
 	public void setIssbank_name(java.lang.String issbank_name) {
		this.issbank_name = issbank_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCh_info() {
		return ch_info;
	}
	
   /**
	* 设置 
	* @param ch_info
	*/
 	public void setCh_info(java.lang.String ch_info) {
		this.ch_info = ch_info;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount1() {
		return account1;
	}
	
   /**
	* 设置 
	* @param account1
	*/
 	public void setAccount1(java.lang.String account1) {
		this.account1 = account1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAccount2() {
		return account2;
	}
	
   /**
	* 设置 
	* @param account2
	*/
 	public void setAccount2(java.lang.String account2) {
		this.account2 = account2;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getOrg_order_id() {
		return org_order_id;
	}
	
   /**
	* 设置 
	* @param org_order_id
	*/
 	public void setOrg_order_id(java.lang.Long org_order_id) {
		this.org_order_id = org_order_id;
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
	public java.lang.String getModify_time() {
		return modify_time;
	}
	
   /**
	* 设置 
	* @param modify_time
	*/
 	public void setModify_time(java.lang.String modify_time) {
		this.modify_time = modify_time;
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
	public java.lang.String getCsn() {
		return csn;
	}
	
   /**
	* 设置 
	* @param csn
	*/
 	public void setCsn(java.lang.String csn) {
		this.csn = csn;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrans_mer_name() {
		return trans_mer_name;
	}
	
   /**
	* 设置 
	* @param trans_mer_name
	*/
 	public void setTrans_mer_name(java.lang.String trans_mer_name) {
		this.trans_mer_name = trans_mer_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSpid() {
		return spid;
	}
	
   /**
	* 设置 
	* @param spid
	*/
 	public void setSpid(java.lang.String spid) {
		this.spid = spid;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrack2_data() {
		return track2_data;
	}
	
   /**
	* 设置 
	* @param track2_data
	*/
 	public void setTrack2_data(java.lang.String track2_data) {
		this.track2_data = track2_data;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTrack3_data() {
		return track3_data;
	}
	
   /**
	* 设置 
	* @param track3_data
	*/
 	public void setTrack3_data(java.lang.String track3_data) {
		this.track3_data = track3_data;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIp() {
		return ip;
	}
	
   /**
	* 设置 
	* @param ip
	*/
 	public void setIp(java.lang.String ip) {
		this.ip = ip;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReference_no() {
		return reference_no;
	}
	
   /**
	* 设置 
	* @param reference_no
	*/
 	public void setReference_no(java.lang.String reference_no) {
		this.reference_no = reference_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAuth_no() {
		return auth_no;
	}
	
   /**
	* 设置 
	* @param auth_no
	*/
 	public void setAuth_no(java.lang.String auth_no) {
		this.auth_no = auth_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDate_transaction() {
		return date_transaction;
	}
	
   /**
	* 设置 
	* @param date_transaction
	*/
 	public void setDate_transaction(java.lang.String date_transaction) {
		this.date_transaction = date_transaction;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTime_transaction() {
		return time_transaction;
	}
	
   /**
	* 设置 
	* @param time_transaction
	*/
 	public void setTime_transaction(java.lang.String time_transaction) {
		this.time_transaction = time_transaction;
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
	public java.lang.String getBatch_no() {
		return batch_no;
	}
	
   /**
	* 设置 
	* @param batch_no
	*/
 	public void setBatch_no(java.lang.String batch_no) {
		this.batch_no = batch_no;
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
	public java.lang.String getModify_date() {
		return modify_date;
	}
	
   /**
	* 设置 
	* @param modify_date
	*/
 	public void setModify_date(java.lang.String modify_date) {
		this.modify_date = modify_date;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getEntry_mode() {
		return entry_mode;
	}
	
   /**
	* 设置 
	* @param entry_mode
	*/
 	public void setEntry_mode(java.lang.String entry_mode) {
		this.entry_mode = entry_mode;
	}
}
