package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderInfo1Dto;
import com.shiyue.bbs.service.IOrderInfo1Service;

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
 
@Controller("detailOrderInfo1Page")
@Scope("prototype")
public class DetailOrderInfo1Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderInfo1Service orderInfo1Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private OrderInfo1Dto orderInfo1Dto;

	
	public String execute() throws Exception {
		try {
		    OrderInfo1Dto paramOrderInfo1Dto = new OrderInfo1Dto();
		//设置主键
			paramOrderInfo1Dto.setOrder_id(pkid);
			orderInfo1Dto = orderInfo1Service.getRow(paramOrderInfo1Dto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
