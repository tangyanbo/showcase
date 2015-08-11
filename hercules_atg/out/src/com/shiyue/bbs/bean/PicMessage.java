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
@EntityPK(Pk = "", defaultColumn = false, tableName = "PIC_MESSAGE")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class PicMessageDto  extends BaseDtoImpl{//
	private java.lang.Long sub_mer_id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.String pic_name;//
	private java.lang.String pic_type;//
	private java.lang.String mer_order_id;//
	private java.lang.String linux_path;//
	private java.lang.String pic_path;//
	private java.lang.String create_time;//
	private java.lang.String update_time;//

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
	public java.lang.String getPic_name() {
		return pic_name;
	}
	
   /**
	* 设置 
	* @param pic_name
	*/
 	public void setPic_name(java.lang.String pic_name) {
		this.pic_name = pic_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPic_type() {
		return pic_type;
	}
	
   /**
	* 设置 
	* @param pic_type
	*/
 	public void setPic_type(java.lang.String pic_type) {
		this.pic_type = pic_type;
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
	public java.lang.String getLinux_path() {
		return linux_path;
	}
	
   /**
	* 设置 
	* @param linux_path
	*/
 	public void setLinux_path(java.lang.String linux_path) {
		this.linux_path = linux_path;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getPic_path() {
		return pic_path;
	}
	
   /**
	* 设置 
	* @param pic_path
	*/
 	public void setPic_path(java.lang.String pic_path) {
		this.pic_path = pic_path;
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
	public java.lang.String getUpdate_time() {
		return update_time;
	}
	
   /**
	* 设置 
	* @param update_time
	*/
 	public void setUpdate_time(java.lang.String update_time) {
		this.update_time = update_time;
	}
}
