package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderRiskDto;
import com.shiyue.bbs.service.IOrderRiskService;

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
 
@Controller("editOrderRiskAction")
@Scope("prototype")
public class EditOrderRiskAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderRiskService orderRiskService;
	private OrderRiskDto orderRiskDto =new OrderRiskDto();;

	public String execute() throws Exception {
		try {
		    
		      OrderRiskDto tmpOrderRiskDto = new OrderRiskDto();
			  tmpOrderRiskDto.setOrder_id(orderRiskDto.getOrder_id());
			  tmpOrderRiskDto.setSub_mer_id(orderRiskDto.getSub_mer_id());
			  tmpOrderRiskDto.setOrder_risk_type(orderRiskDto.getOrder_risk_type());
			  tmpOrderRiskDto.setOrder_risk_proctype(orderRiskDto.getOrder_risk_proctype());
			  tmpOrderRiskDto.setOrder_risk_proctime(orderRiskDto.getOrder_risk_proctime());
			  tmpOrderRiskDto.setReserved1(orderRiskDto.getReserved1());
			  tmpOrderRiskDto.setReserved2(orderRiskDto.getReserved2());
			  tmpOrderRiskDto.setReserved3(orderRiskDto.getReserved3());
			  tmpOrderRiskDto.setExt(orderRiskDto.getExt());
		
			orderRiskService.updatePK(orderRiskDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderRiskDto getOrderRiskDto() {
		return orderRiskDto;
	}

	public final void setStudentDto(OrderRiskDto orderRiskDto) {
		this.orderRiskDto = orderRiskDto;
	}

}
