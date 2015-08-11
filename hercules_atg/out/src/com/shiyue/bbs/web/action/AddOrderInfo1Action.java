package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderInfo1Dto;
import com.shiyue.bbs.service.IOrderInfo1Service;

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
 
@Controller("addOrderInfo1Action")
@Scope("prototype")
public class AddOrderInfo1Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderInfo1Service orderInfo1Service;
	private OrderInfo1Dto orderInfo1Dto= new OrderInfo1Dto();

	public String execute() throws Exception {
		try {
			orderInfo1Service.save(orderInfo1Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderInfo1Dto getOrderInfo1Dto() {
		return orderInfo1Dto;
	}

	public final void setStudentDto(OrderInfo1Dto orderInfo1Dto) {
		this.orderInfo1Dto = orderInfo1Dto;
	}

}
