package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderProfitDto;
import com.shiyue.bbs.service.IOrderProfitService;

 /**
 * 类功能:自动代码生成模板编辑   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("editOrderProfitAction")
@Scope("prototype")
public class EditOrderProfitAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderProfitService orderProfitService;
	private OrderProfitDto orderProfitDto =new OrderProfitDto();;

	public String execute() throws Exception {
		try {
		    
		      OrderProfitDto tmpOrderProfitDto = new OrderProfitDto();
			  tmpOrderProfitDto.setId(orderProfitDto.getId());
			  tmpOrderProfitDto.setOrder_id(orderProfitDto.getOrder_id());
			  tmpOrderProfitDto.setMer_sys_id(orderProfitDto.getMer_sys_id());
			  tmpOrderProfitDto.setMer_amt(orderProfitDto.getMer_amt());
			  tmpOrderProfitDto.setMer_profit(orderProfitDto.getMer_profit());
			  tmpOrderProfitDto.setMer_rate(orderProfitDto.getMer_rate());
			  tmpOrderProfitDto.setMer_hight_fee(orderProfitDto.getMer_hight_fee());
			  tmpOrderProfitDto.setAgent_l1_id(orderProfitDto.getAgent_l1_id());
			  tmpOrderProfitDto.setAgent1_profit(orderProfitDto.getAgent1_profit());
			  tmpOrderProfitDto.setAgent1_rate(orderProfitDto.getAgent1_rate());
			  tmpOrderProfitDto.setAgent1_hight_fee(orderProfitDto.getAgent1_hight_fee());
			  tmpOrderProfitDto.setAgent_l2_id(orderProfitDto.getAgent_l2_id());
			  tmpOrderProfitDto.setAgent2_profit(orderProfitDto.getAgent2_profit());
			  tmpOrderProfitDto.setAgent2_rate(orderProfitDto.getAgent2_rate());
			  tmpOrderProfitDto.setAgent2_hight_fee(orderProfitDto.getAgent2_hight_fee());
			  tmpOrderProfitDto.setPlat_id(orderProfitDto.getPlat_id());
			  tmpOrderProfitDto.setPlat_profit(orderProfitDto.getPlat_profit());
			  tmpOrderProfitDto.setBypay_profit(orderProfitDto.getBypay_profit());
			  tmpOrderProfitDto.setTract_fee(orderProfitDto.getTract_fee());
			  tmpOrderProfitDto.setTract_bypay_profit(orderProfitDto.getTract_bypay_profit());
			  tmpOrderProfitDto.setTract_acqbank_profit(orderProfitDto.getTract_acqbank_profit());
			  tmpOrderProfitDto.setTract_cost(orderProfitDto.getTract_cost());
			  tmpOrderProfitDto.setReserved(orderProfitDto.getReserved());
			  tmpOrderProfitDto.setCreate_time(orderProfitDto.getCreate_time());
			  tmpOrderProfitDto.setSub_mer_rate(orderProfitDto.getSub_mer_rate());
			  tmpOrderProfitDto.setSub_mer_hight_fee(orderProfitDto.getSub_mer_hight_fee());
			  tmpOrderProfitDto.setCreate_date(orderProfitDto.getCreate_date());
		
			orderProfitService.updatePK(orderProfitDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderProfitDto getOrderProfitDto() {
		return orderProfitDto;
	}

	public final void setStudentDto(OrderProfitDto orderProfitDto) {
		this.orderProfitDto = orderProfitDto;
	}

}
