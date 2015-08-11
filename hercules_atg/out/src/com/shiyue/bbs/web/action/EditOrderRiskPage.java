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
 
@Controller("editOrderRiskPage")
@Scope("prototype")
public class EditOrderRiskPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderRiskService orderRiskService;
	
	//入参
	private  String     pkid;
	
	//出参
	private OrderRiskDto orderRiskDto;

	
	public String execute() throws Exception {
		try {
		    OrderRiskDto paramOrderRiskDto = new OrderRiskDto();
		//设置主键
			orderRiskDto = orderRiskService.getRow(paramOrderRiskDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
