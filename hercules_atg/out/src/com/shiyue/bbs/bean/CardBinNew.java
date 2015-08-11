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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "CARD_BIN_NEW")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class CardBinNewDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.String bank_id;//
	private java.lang.String bank_name;//
	private java.lang.String card_no_length;//
	private java.lang.String card_bin;//
	private java.lang.String upop_flag;//
	private java.lang.String card_type;//
	private java.lang.String bank_short_name;//

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
	public java.lang.String getBank_id() {
		return bank_id;
	}
	
   /**
	* 设置 
	* @param bank_id
	*/
 	public void setBank_id(java.lang.String bank_id) {
		this.bank_id = bank_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getBank_name() {
		return bank_name;
	}
	
   /**
	* 设置 
	* @param bank_name
	*/
 	public void setBank_name(java.lang.String bank_name) {
		this.bank_name = bank_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_no_length() {
		return card_no_length;
	}
	
   /**
	* 设置 
	* @param card_no_length
	*/
 	public void setCard_no_length(java.lang.String card_no_length) {
		this.card_no_length = card_no_length;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCard_bin() {
		return card_bin;
	}
	
   /**
	* 设置 
	* @param card_bin
	*/
 	public void setCard_bin(java.lang.String card_bin) {
		this.card_bin = card_bin;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getUpop_flag() {
		return upop_flag;
	}
	
   /**
	* 设置 
	* @param upop_flag
	*/
 	public void setUpop_flag(java.lang.String upop_flag) {
		this.upop_flag = upop_flag;
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
	public java.lang.String getBank_short_name() {
		return bank_short_name;
	}
	
   /**
	* 设置 
	* @param bank_short_name
	*/
 	public void setBank_short_name(java.lang.String bank_short_name) {
		this.bank_short_name = bank_short_name;
	}
}
