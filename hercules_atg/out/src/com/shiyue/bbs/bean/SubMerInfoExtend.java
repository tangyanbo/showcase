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
@EntityPK(Pk = "sub_mer_id", defaultColumn = false, tableName = "SUB_MER_INFO_EXTEND")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class SubMerInfoExtendDto  extends BaseDtoImpl{//
	private java.lang.Long sub_mer_id;//商户号
	private java.lang.String reg_cap;//注册资本
	private java.lang.String sett_bank_code;//结算支行代码
	private java.lang.String sett_bank_name;//支行信息
	private java.lang.String channel;//所属渠道
	private java.lang.String sign_date;//签约日期
	private java.lang.String sign_person;//签约人
	private java.lang.String province;//省
	private java.lang.String city;//市
	private java.lang.String sett_bank_pro;//结算银行所在省
	private java.lang.String sett_bank_city;//结算银行所在市
	private java.lang.String sett_super_bank_code;//结算银行大行代码
	private java.lang.String sett_super_bank_name;//结算银行大行名称

   /**
	* 获取 商户号
	* @return
	*/
	public java.lang.Long getSub_mer_id() {
		return sub_mer_id;
	}
	
   /**
	* 设置 商户号
	* @param sub_mer_id
	*/
 	public void setSub_mer_id(java.lang.Long sub_mer_id) {
		this.sub_mer_id = sub_mer_id;
	}
   /**
	* 获取 注册资本
	* @return
	*/
	public java.lang.String getReg_cap() {
		return reg_cap;
	}
	
   /**
	* 设置 注册资本
	* @param reg_cap
	*/
 	public void setReg_cap(java.lang.String reg_cap) {
		this.reg_cap = reg_cap;
	}
   /**
	* 获取 结算支行代码
	* @return
	*/
	public java.lang.String getSett_bank_code() {
		return sett_bank_code;
	}
	
   /**
	* 设置 结算支行代码
	* @param sett_bank_code
	*/
 	public void setSett_bank_code(java.lang.String sett_bank_code) {
		this.sett_bank_code = sett_bank_code;
	}
   /**
	* 获取 支行信息
	* @return
	*/
	public java.lang.String getSett_bank_name() {
		return sett_bank_name;
	}
	
   /**
	* 设置 支行信息
	* @param sett_bank_name
	*/
 	public void setSett_bank_name(java.lang.String sett_bank_name) {
		this.sett_bank_name = sett_bank_name;
	}
   /**
	* 获取 所属渠道
	* @return
	*/
	public java.lang.String getChannel() {
		return channel;
	}
	
   /**
	* 设置 所属渠道
	* @param channel
	*/
 	public void setChannel(java.lang.String channel) {
		this.channel = channel;
	}
   /**
	* 获取 签约日期
	* @return
	*/
	public java.lang.String getSign_date() {
		return sign_date;
	}
	
   /**
	* 设置 签约日期
	* @param sign_date
	*/
 	public void setSign_date(java.lang.String sign_date) {
		this.sign_date = sign_date;
	}
   /**
	* 获取 签约人
	* @return
	*/
	public java.lang.String getSign_person() {
		return sign_person;
	}
	
   /**
	* 设置 签约人
	* @param sign_person
	*/
 	public void setSign_person(java.lang.String sign_person) {
		this.sign_person = sign_person;
	}
   /**
	* 获取 省
	* @return
	*/
	public java.lang.String getProvince() {
		return province;
	}
	
   /**
	* 设置 省
	* @param province
	*/
 	public void setProvince(java.lang.String province) {
		this.province = province;
	}
   /**
	* 获取 市
	* @return
	*/
	public java.lang.String getCity() {
		return city;
	}
	
   /**
	* 设置 市
	* @param city
	*/
 	public void setCity(java.lang.String city) {
		this.city = city;
	}
   /**
	* 获取 结算银行所在省
	* @return
	*/
	public java.lang.String getSett_bank_pro() {
		return sett_bank_pro;
	}
	
   /**
	* 设置 结算银行所在省
	* @param sett_bank_pro
	*/
 	public void setSett_bank_pro(java.lang.String sett_bank_pro) {
		this.sett_bank_pro = sett_bank_pro;
	}
   /**
	* 获取 结算银行所在市
	* @return
	*/
	public java.lang.String getSett_bank_city() {
		return sett_bank_city;
	}
	
   /**
	* 设置 结算银行所在市
	* @param sett_bank_city
	*/
 	public void setSett_bank_city(java.lang.String sett_bank_city) {
		this.sett_bank_city = sett_bank_city;
	}
   /**
	* 获取 结算银行大行代码
	* @return
	*/
	public java.lang.String getSett_super_bank_code() {
		return sett_super_bank_code;
	}
	
   /**
	* 设置 结算银行大行代码
	* @param sett_super_bank_code
	*/
 	public void setSett_super_bank_code(java.lang.String sett_super_bank_code) {
		this.sett_super_bank_code = sett_super_bank_code;
	}
   /**
	* 获取 结算银行大行名称
	* @return
	*/
	public java.lang.String getSett_super_bank_name() {
		return sett_super_bank_name;
	}
	
   /**
	* 设置 结算银行大行名称
	* @param sett_super_bank_name
	*/
 	public void setSett_super_bank_name(java.lang.String sett_super_bank_name) {
		this.sett_super_bank_name = sett_super_bank_name;
	}
}
