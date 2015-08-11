package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2BankBehalfOrderDto;
import com.shiyue.bbs.service.IV2BankBehalfOrderService;

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
 
@Controller("addV2BankBehalfOrderAction")
@Scope("prototype")
public class AddV2BankBehalfOrderAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfOrderService v2BankBehalfOrderService;
	private V2BankBehalfOrderDto v2BankBehalfOrderDto= new V2BankBehalfOrderDto();

	public String execute() throws Exception {
		try {
			v2BankBehalfOrderService.save(v2BankBehalfOrderDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2BankBehalfOrderDto getV2BankBehalfOrderDto() {
		return v2BankBehalfOrderDto;
	}

	public final void setStudentDto(V2BankBehalfOrderDto v2BankBehalfOrderDto) {
		this.v2BankBehalfOrderDto = v2BankBehalfOrderDto;
	}

}
