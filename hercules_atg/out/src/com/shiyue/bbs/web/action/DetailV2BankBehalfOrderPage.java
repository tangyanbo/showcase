package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2BankBehalfOrderDto;
import com.shiyue.bbs.service.IV2BankBehalfOrderService;

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
 
@Controller("detailV2BankBehalfOrderPage")
@Scope("prototype")
public class DetailV2BankBehalfOrderPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfOrderService v2BankBehalfOrderService;
	
	//入参
	private  String     pkid;
	
	//出参
	private V2BankBehalfOrderDto v2BankBehalfOrderDto;

	
	public String execute() throws Exception {
		try {
		    V2BankBehalfOrderDto paramV2BankBehalfOrderDto = new V2BankBehalfOrderDto();
		//设置主键
			paramV2BankBehalfOrderDto.setBehalf_order_id(pkid);
			v2BankBehalfOrderDto = v2BankBehalfOrderService.getRow(paramV2BankBehalfOrderDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
