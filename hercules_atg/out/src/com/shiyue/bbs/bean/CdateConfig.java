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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "CDATE_CONFIG")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class CdateConfigDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long cdate;//
	private java.lang.String weekdy;//
	private java.lang.String is_work;//
	private java.lang.String is_xend;//
	private java.lang.String is_mend;//
	private java.lang.String is_qend;//
	private java.lang.String is_hend;//
	private java.lang.String is_yend;//
	private java.lang.String reserved1;//

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
	public java.lang.Long getCdate() {
		return cdate;
	}
	
   /**
	* 设置 
	* @param cdate
	*/
 	public void setCdate(java.lang.Long cdate) {
		this.cdate = cdate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getWeekdy() {
		return weekdy;
	}
	
   /**
	* 设置 
	* @param weekdy
	*/
 	public void setWeekdy(java.lang.String weekdy) {
		this.weekdy = weekdy;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_work() {
		return is_work;
	}
	
   /**
	* 设置 
	* @param is_work
	*/
 	public void setIs_work(java.lang.String is_work) {
		this.is_work = is_work;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_xend() {
		return is_xend;
	}
	
   /**
	* 设置 
	* @param is_xend
	*/
 	public void setIs_xend(java.lang.String is_xend) {
		this.is_xend = is_xend;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_mend() {
		return is_mend;
	}
	
   /**
	* 设置 
	* @param is_mend
	*/
 	public void setIs_mend(java.lang.String is_mend) {
		this.is_mend = is_mend;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_qend() {
		return is_qend;
	}
	
   /**
	* 设置 
	* @param is_qend
	*/
 	public void setIs_qend(java.lang.String is_qend) {
		this.is_qend = is_qend;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_hend() {
		return is_hend;
	}
	
   /**
	* 设置 
	* @param is_hend
	*/
 	public void setIs_hend(java.lang.String is_hend) {
		this.is_hend = is_hend;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getIs_yend() {
		return is_yend;
	}
	
   /**
	* 设置 
	* @param is_yend
	*/
 	public void setIs_yend(java.lang.String is_yend) {
		this.is_yend = is_yend;
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
}
