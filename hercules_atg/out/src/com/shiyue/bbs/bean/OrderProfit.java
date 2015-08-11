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
@EntityPK(Pk = "id", defaultColumn = false, tableName = "ORDER_PROFIT")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class OrderProfitDto  extends BaseDtoImpl{//
	private java.lang.Long id;//
	private java.lang.Long order_id;//
	private java.lang.Long mer_sys_id;//
	private java.lang.Long mer_amt;//
	private java.math.BigDecimal mer_profit;//
	private java.math.BigDecimal mer_rate;//
	private java.math.BigDecimal mer_hight_fee;//
	private java.lang.Long agent_l1_id;//
	private java.math.BigDecimal agent1_profit;//
	private java.math.BigDecimal agent1_rate;//
	private java.math.BigDecimal agent1_hight_fee;//
	private java.lang.Long agent_l2_id;//
	private java.math.BigDecimal agent2_profit;//
	private java.math.BigDecimal agent2_rate;//
	private java.math.BigDecimal agent2_hight_fee;//
	private java.lang.Long plat_id;//
	private java.math.BigDecimal plat_profit;//
	private java.math.BigDecimal bypay_profit;//
	private java.lang.Long tract_fee;//
	private java.math.BigDecimal tract_bypay_profit;//
	private java.math.BigDecimal tract_acqbank_profit;//
	private java.lang.Long tract_cost;//
	private java.lang.String reserved;//
	private java.lang.String create_time;//
	private java.math.BigDecimal sub_mer_rate;//
	private java.math.BigDecimal sub_mer_hight_fee;//
	private java.lang.String create_date;//

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
	public java.lang.Long getMer_amt() {
		return mer_amt;
	}
	
   /**
	* 设置 
	* @param mer_amt
	*/
 	public void setMer_amt(java.lang.Long mer_amt) {
		this.mer_amt = mer_amt;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getMer_profit() {
		return mer_profit;
	}
	
   /**
	* 设置 
	* @param mer_profit
	*/
 	public void setMer_profit(java.math.BigDecimal mer_profit) {
		this.mer_profit = mer_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getMer_rate() {
		return mer_rate;
	}
	
   /**
	* 设置 
	* @param mer_rate
	*/
 	public void setMer_rate(java.math.BigDecimal mer_rate) {
		this.mer_rate = mer_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getMer_hight_fee() {
		return mer_hight_fee;
	}
	
   /**
	* 设置 
	* @param mer_hight_fee
	*/
 	public void setMer_hight_fee(java.math.BigDecimal mer_hight_fee) {
		this.mer_hight_fee = mer_hight_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_l1_id() {
		return agent_l1_id;
	}
	
   /**
	* 设置 
	* @param agent_l1_id
	*/
 	public void setAgent_l1_id(java.lang.Long agent_l1_id) {
		this.agent_l1_id = agent_l1_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getAgent1_profit() {
		return agent1_profit;
	}
	
   /**
	* 设置 
	* @param agent1_profit
	*/
 	public void setAgent1_profit(java.math.BigDecimal agent1_profit) {
		this.agent1_profit = agent1_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getAgent1_rate() {
		return agent1_rate;
	}
	
   /**
	* 设置 
	* @param agent1_rate
	*/
 	public void setAgent1_rate(java.math.BigDecimal agent1_rate) {
		this.agent1_rate = agent1_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getAgent1_hight_fee() {
		return agent1_hight_fee;
	}
	
   /**
	* 设置 
	* @param agent1_hight_fee
	*/
 	public void setAgent1_hight_fee(java.math.BigDecimal agent1_hight_fee) {
		this.agent1_hight_fee = agent1_hight_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getAgent_l2_id() {
		return agent_l2_id;
	}
	
   /**
	* 设置 
	* @param agent_l2_id
	*/
 	public void setAgent_l2_id(java.lang.Long agent_l2_id) {
		this.agent_l2_id = agent_l2_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getAgent2_profit() {
		return agent2_profit;
	}
	
   /**
	* 设置 
	* @param agent2_profit
	*/
 	public void setAgent2_profit(java.math.BigDecimal agent2_profit) {
		this.agent2_profit = agent2_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getAgent2_rate() {
		return agent2_rate;
	}
	
   /**
	* 设置 
	* @param agent2_rate
	*/
 	public void setAgent2_rate(java.math.BigDecimal agent2_rate) {
		this.agent2_rate = agent2_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getAgent2_hight_fee() {
		return agent2_hight_fee;
	}
	
   /**
	* 设置 
	* @param agent2_hight_fee
	*/
 	public void setAgent2_hight_fee(java.math.BigDecimal agent2_hight_fee) {
		this.agent2_hight_fee = agent2_hight_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getPlat_id() {
		return plat_id;
	}
	
   /**
	* 设置 
	* @param plat_id
	*/
 	public void setPlat_id(java.lang.Long plat_id) {
		this.plat_id = plat_id;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getPlat_profit() {
		return plat_profit;
	}
	
   /**
	* 设置 
	* @param plat_profit
	*/
 	public void setPlat_profit(java.math.BigDecimal plat_profit) {
		this.plat_profit = plat_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getBypay_profit() {
		return bypay_profit;
	}
	
   /**
	* 设置 
	* @param bypay_profit
	*/
 	public void setBypay_profit(java.math.BigDecimal bypay_profit) {
		this.bypay_profit = bypay_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTract_fee() {
		return tract_fee;
	}
	
   /**
	* 设置 
	* @param tract_fee
	*/
 	public void setTract_fee(java.lang.Long tract_fee) {
		this.tract_fee = tract_fee;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getTract_bypay_profit() {
		return tract_bypay_profit;
	}
	
   /**
	* 设置 
	* @param tract_bypay_profit
	*/
 	public void setTract_bypay_profit(java.math.BigDecimal tract_bypay_profit) {
		this.tract_bypay_profit = tract_bypay_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getTract_acqbank_profit() {
		return tract_acqbank_profit;
	}
	
   /**
	* 设置 
	* @param tract_acqbank_profit
	*/
 	public void setTract_acqbank_profit(java.math.BigDecimal tract_acqbank_profit) {
		this.tract_acqbank_profit = tract_acqbank_profit;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTract_cost() {
		return tract_cost;
	}
	
   /**
	* 设置 
	* @param tract_cost
	*/
 	public void setTract_cost(java.lang.Long tract_cost) {
		this.tract_cost = tract_cost;
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
	public java.math.BigDecimal getSub_mer_rate() {
		return sub_mer_rate;
	}
	
   /**
	* 设置 
	* @param sub_mer_rate
	*/
 	public void setSub_mer_rate(java.math.BigDecimal sub_mer_rate) {
		this.sub_mer_rate = sub_mer_rate;
	}
   /**
	* 获取 
	* @return
	*/
	public java.math.BigDecimal getSub_mer_hight_fee() {
		return sub_mer_hight_fee;
	}
	
   /**
	* 设置 
	* @param sub_mer_hight_fee
	*/
 	public void setSub_mer_hight_fee(java.math.BigDecimal sub_mer_hight_fee) {
		this.sub_mer_hight_fee = sub_mer_hight_fee;
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
}
