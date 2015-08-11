package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BankCardFeeDto;
import com.shiyue.bbs.service.IBankCardFeeService;

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
 
@Controller("editBankCardFeeAction")
@Scope("prototype")
public class EditBankCardFeeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankCardFeeService bankCardFeeService;
	private BankCardFeeDto bankCardFeeDto =new BankCardFeeDto();;

	public String execute() throws Exception {
		try {
		    
		      BankCardFeeDto tmpBankCardFeeDto = new BankCardFeeDto();
			  tmpBankCardFeeDto.setBank_id(bankCardFeeDto.getBank_id());
			  tmpBankCardFeeDto.setBank_code(bankCardFeeDto.getBank_code());
			  tmpBankCardFeeDto.setBank_name(bankCardFeeDto.getBank_name());
			  tmpBankCardFeeDto.setFee(bankCardFeeDto.getFee());
			  tmpBankCardFeeDto.setArrive_time(bankCardFeeDto.getArrive_time());
			  tmpBankCardFeeDto.setCreate_time(bankCardFeeDto.getCreate_time());
		
			bankCardFeeService.updatePK(bankCardFeeDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BankCardFeeDto getBankCardFeeDto() {
		return bankCardFeeDto;
	}

	public final void setStudentDto(BankCardFeeDto bankCardFeeDto) {
		this.bankCardFeeDto = bankCardFeeDto;
	}

}
