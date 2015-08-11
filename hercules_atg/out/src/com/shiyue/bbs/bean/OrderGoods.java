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
@EntityPK(Pk = "", defaultColumn = false, tableName = "ORDER_GOODS")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class OrderGoodsDto  extends BaseDtoImpl{//
	private java.lang.Long order_id;//
	private java.lang.String goods_type;//
	private java.lang.String carrier_oprator;//
	private java.lang.String goods_name;//
	private java.lang.String goods_desc;//
	private java.lang.String quantity;//
	private java.lang.Long price;//
	private java.lang.Long discount_price;//
	private java.lang.Long trans_fee;//
	private java.lang.String status;//
	private java.lang.String serial_num;//

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
	public java.lang.String getGoods_type() {
		return goods_type;
	}
	
   /**
	* 设置 
	* @param goods_type
	*/
 	public void setGoods_type(java.lang.String goods_type) {
		this.goods_type = goods_type;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getCarrier_oprator() {
		return carrier_oprator;
	}
	
   /**
	* 设置 
	* @param carrier_oprator
	*/
 	public void setCarrier_oprator(java.lang.String carrier_oprator) {
		this.carrier_oprator = carrier_oprator;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getGoods_name() {
		return goods_name;
	}
	
   /**
	* 设置 
	* @param goods_name
	*/
 	public void setGoods_name(java.lang.String goods_name) {
		this.goods_name = goods_name;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getGoods_desc() {
		return goods_desc;
	}
	
   /**
	* 设置 
	* @param goods_desc
	*/
 	public void setGoods_desc(java.lang.String goods_desc) {
		this.goods_desc = goods_desc;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getQuantity() {
		return quantity;
	}
	
   /**
	* 设置 
	* @param quantity
	*/
 	public void setQuantity(java.lang.String quantity) {
		this.quantity = quantity;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getPrice() {
		return price;
	}
	
   /**
	* 设置 
	* @param price
	*/
 	public void setPrice(java.lang.Long price) {
		this.price = price;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getDiscount_price() {
		return discount_price;
	}
	
   /**
	* 设置 
	* @param discount_price
	*/
 	public void setDiscount_price(java.lang.Long discount_price) {
		this.discount_price = discount_price;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTrans_fee() {
		return trans_fee;
	}
	
   /**
	* 设置 
	* @param trans_fee
	*/
 	public void setTrans_fee(java.lang.Long trans_fee) {
		this.trans_fee = trans_fee;
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
	public java.lang.String getSerial_num() {
		return serial_num;
	}
	
   /**
	* 设置 
	* @param serial_num
	*/
 	public void setSerial_num(java.lang.String serial_num) {
		this.serial_num = serial_num;
	}
}
