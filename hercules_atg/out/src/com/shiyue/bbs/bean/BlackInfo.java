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
@EntityPK(Pk = "", defaultColumn = false, tableName = "BLACK_INFO")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class BlackInfoDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String create_time;//
	private java.lang.Long sub_mer_id;//
	private java.lang.String card_no;//
	private java.lang.String card_type;//
	private java.lang.String real_name;//
	private java.lang.String id_num;//
	private java.lang.String phone;//
	private java.lang.String level;//
	private java.lang.String black_type;//
	private java.lang.String status;//
	private java.lang.String terminal_id;//
	private java.lang.String reserved1;//
	private java.lang.String reserved2;//
	private java.lang.String reserved3;//
	private java.lang.String remark;//

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
	public java.lang.String getCard_no() {
		return card_no;
	}
	
   /**
	* 设置 
	* @param card_no
	*/
 	public void setCard_no(java.lang.String card_no) {
		this.card_no = card_no;
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
	public java.lang.String getPhone() {
		return phone;
	}
	
   /**
	* 设置 
	* @param phone
	*/
 	public void setPhone(java.lang.String phone) {
		this.phone = phone;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getLevel() {
		return level;
	}
	
   /**
	* 设置 
	* @param level
	*/
 	public void setLevel(java.lang.String level) {
		this.level = level;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBlack_type() {
		return black_type;
	}
	
   /**
	* 设置 
	* @param black_type
	*/
 	public void setBlack_type(java.lang.String black_type) {
		this.black_type = black_type;
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
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getRemark() {
		return remark;
	}
	
   /**
	* 设置 
	* @param remark
	*/
 	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}
}
