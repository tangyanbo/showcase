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
 
@Controller("editV2BankBehalfOrderAction")
@Scope("prototype")
public class EditV2BankBehalfOrderAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfOrderService v2BankBehalfOrderService;
	private V2BankBehalfOrderDto v2BankBehalfOrderDto =new V2BankBehalfOrderDto();;

	public String execute() throws Exception {
		try {
		    
		      V2BankBehalfOrderDto tmpV2BankBehalfOrderDto = new V2BankBehalfOrderDto();
			  tmpV2BankBehalfOrderDto.setBehalf_order_id(v2BankBehalfOrderDto.getBehalf_order_id());
			  tmpV2BankBehalfOrderDto.setMer_order_id(v2BankBehalfOrderDto.getMer_order_id());
			  tmpV2BankBehalfOrderDto.setMer_order_time(v2BankBehalfOrderDto.getMer_order_time());
			  tmpV2BankBehalfOrderDto.setBus_mer_id(v2BankBehalfOrderDto.getBus_mer_id());
			  tmpV2BankBehalfOrderDto.setStatus(v2BankBehalfOrderDto.getStatus());
			  tmpV2BankBehalfOrderDto.setCreate_time(v2BankBehalfOrderDto.getCreate_time());
			  tmpV2BankBehalfOrderDto.setFinish_time(v2BankBehalfOrderDto.getFinish_time());
			  tmpV2BankBehalfOrderDto.setTotal_number(v2BankBehalfOrderDto.getTotal_number());
			  tmpV2BankBehalfOrderDto.setSuccess_mumber(v2BankBehalfOrderDto.getSuccess_mumber());
			  tmpV2BankBehalfOrderDto.setFail_number(v2BankBehalfOrderDto.getFail_number());
			  tmpV2BankBehalfOrderDto.setAmount(v2BankBehalfOrderDto.getAmount());
			  tmpV2BankBehalfOrderDto.setTrans_amount(v2BankBehalfOrderDto.getTrans_amount());
			  tmpV2BankBehalfOrderDto.setBack_url(v2BankBehalfOrderDto.getBack_url());
			  tmpV2BankBehalfOrderDto.setOrder_id(v2BankBehalfOrderDto.getOrder_id());
			  tmpV2BankBehalfOrderDto.setMer_name(v2BankBehalfOrderDto.getMer_name());
			  tmpV2BankBehalfOrderDto.setSub_mer_id(v2BankBehalfOrderDto.getSub_mer_id());
		
			v2BankBehalfOrderService.updatePK(v2BankBehalfOrderDto);
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
