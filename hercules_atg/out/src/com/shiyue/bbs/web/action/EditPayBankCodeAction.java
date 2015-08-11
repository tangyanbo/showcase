package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayBankCodeDto;
import com.shiyue.bbs.service.IPayBankCodeService;

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
 
@Controller("editPayBankCodeAction")
@Scope("prototype")
public class EditPayBankCodeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayBankCodeService payBankCodeService;
	private PayBankCodeDto payBankCodeDto =new PayBankCodeDto();;

	public String execute() throws Exception {
		try {
		    
		      PayBankCodeDto tmpPayBankCodeDto = new PayBankCodeDto();
			  tmpPayBankCodeDto.setId(payBankCodeDto.getId());
			  tmpPayBankCodeDto.setPay_bank_name(payBankCodeDto.getPay_bank_name());
			  tmpPayBankCodeDto.setPay_bank_id(payBankCodeDto.getPay_bank_id());
			  tmpPayBankCodeDto.setReserved1(payBankCodeDto.getReserved1());
			  tmpPayBankCodeDto.setReserved2(payBankCodeDto.getReserved2());
			  tmpPayBankCodeDto.setReserved3(payBankCodeDto.getReserved3());
		
			payBankCodeService.updatePK(payBankCodeDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayBankCodeDto getPayBankCodeDto() {
		return payBankCodeDto;
	}

	public final void setStudentDto(PayBankCodeDto payBankCodeDto) {
		this.payBankCodeDto = payBankCodeDto;
	}

}
