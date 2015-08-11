package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderProfitDto;
import com.shiyue.bbs.service.IOrderProfitService;

 /**
 * 类功能:自动代码生成模板新增   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("addOrderProfitAction")
@Scope("prototype")
public class AddOrderProfitAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderProfitService orderProfitService;
	private OrderProfitDto orderProfitDto= new OrderProfitDto();

	public String execute() throws Exception {
		try {
			orderProfitService.save(orderProfitDto);
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
