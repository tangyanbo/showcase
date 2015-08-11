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
@EntityPK(Pk = "auth_order_id", defaultColumn = false, tableName = "SUB_MER_AUTH_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerAuthInfoDto  extends BaseDtoImpl{//
	private java.lang.Long auth_order_id;//
	private java.lang.String create_time;//
	private java.lang.Long sub_mer_id;//
	private java.lang.Short remit_type;//
	private java.lang.String real_name;//
	private java.lang.String id_num;//
	private java.lang.String face_pic_path;//
	private java.lang.String auth_status;//
	private java.lang.String serial_no;//
	private java.lang.String terminal_id;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAuth_order_id() {
		return auth_order_id;
	}
	
   /**
	* 设置 
	* @param auth_order_id
	*/
 	public void setAuth_order_id(java.lang.Long auth_order_id) {
		this.auth_order_id = auth_order_id;
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
	public java.lang.Long getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.Long sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Short getRemit_type() {
		return remit_type;
	}
	
   /**
	* 设置 
	* @param remit_type
	*/
 	public void setRemit_type(java.lang.Short remit_type) {
		this.remit_type = remit_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getReal_name() {
		return real_name;
	}
	
   /**
	* 设置 
	* @param real_name
	*/
 	public void setReal_name(java.lang.String real_name) {
		this.real_name = real_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getId_num() {
		return id_num;
	}
	
   /**
	* 设置 
	* @param id_num
	*/
 	public void setId_num(java.lang.String id_num) {
		this.id_num = id_num;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getFace_pic_path() {
		return face_pic_path;
	}
	
   /**
	* 设置 
	* @param face_pic_path
	*/
 	public void setFace_pic_path(java.lang.String face_pic_path) {
		this.face_pic_path = face_pic_path;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getAuth_status() {
		return auth_status;
	}
	
   /**
	* 设置 
	* @param auth_status
	*/
 	public void setAuth_status(java.lang.String auth_status) {
		this.auth_status = auth_status;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSerial_no() {
		return serial_no;
	}
	
   /**
	* 设置 
	* @param serial_no
	*/
 	public void setSerial_no(java.lang.String serial_no) {
		this.serial_no = serial_no;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getTerminal_id() {
		return terminal_id;
	}
	
   /**
	* 设置 
	* @param terminal_id
	*/
 	public void setTerminal_id(java.lang.String terminal_id) {
		this.terminal_id = terminal_id;
	}
}
