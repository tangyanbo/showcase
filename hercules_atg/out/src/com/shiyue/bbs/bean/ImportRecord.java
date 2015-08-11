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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "IMPORT_RECORD")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class ImportRecordDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String tract_err_name;//
	private java.lang.String subinfo_name;//
	private java.lang.String signin_err_name;//
	private java.lang.String sub_err_name;//
	private java.lang.String err_name;//
	private java.lang.String download_url;//
	private java.lang.String create_time;//
	private java.lang.String batch_id;//
	private java.lang.String file_type;//文件类型 0单边帐文件 1 结算退单文件

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
	public java.lang.String getTract_err_name() {
		return tract_err_name;
	}
	
   /**
	* 设置 
	* @param tract_err_name
	*/
 	public void setTract_err_name(java.lang.String tract_err_name) {
		this.tract_err_name = tract_err_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSubinfo_name() {
		return subinfo_name;
	}
	
   /**
	* 设置 
	* @param subinfo_name
	*/
 	public void setSubinfo_name(java.lang.String subinfo_name) {
		this.subinfo_name = subinfo_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSignin_err_name() {
		return signin_err_name;
	}
	
   /**
	* 设置 
	* @param signin_err_name
	*/
 	public void setSignin_err_name(java.lang.String signin_err_name) {
		this.signin_err_name = signin_err_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getSub_err_name() {
		return sub_err_name;
	}
	
   /**
	* 设置 
	* @param sub_err_name
	*/
 	public void setSub_err_name(java.lang.String sub_err_name) {
		this.sub_err_name = sub_err_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getErr_name() {
		return err_name;
	}
	
   /**
	* 设置 
	* @param err_name
	*/
 	public void setErr_name(java.lang.String err_name) {
		this.err_name = err_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getDownload_url() {
		return download_url;
	}
	
   /**
	* 设置 
	* @param download_url
	*/
 	public void setDownload_url(java.lang.String download_url) {
		this.download_url = download_url;
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
	public java.lang.String getBatch_id() {
		return batch_id;
	}
	
   /**
	* 设置 
	* @param batch_id
	*/
 	public void setBatch_id(java.lang.String batch_id) {
		this.batch_id = batch_id;
	}
   /**
	* 获取 文件类型 0单边帐文件 1 结算退单文件
	* @return
	*/
	public java.lang.String getFile_type() {
		return file_type;
	}
	
   /**
	* 设置 文件类型 0单边帐文件 1 结算退单文件
	* @param file_type
	*/
 	public void setFile_type(java.lang.String file_type) {
		this.file_type = file_type;
	}
}
