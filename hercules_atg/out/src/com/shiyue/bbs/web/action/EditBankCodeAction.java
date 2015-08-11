package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BankCodeDto;
import com.shiyue.bbs.service.IBankCodeService;

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
 
@Controller("editBankCodeAction")
@Scope("prototype")
public class EditBankCodeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankCodeService bankCodeService;
	private BankCodeDto bankCodeDto =new BankCodeDto();;

	public String execute() throws Exception {
		try {
		    
		      BankCodeDto tmpBankCodeDto = new BankCodeDto();
			  tmpBankCodeDto.setId(bankCodeDto.getId());
			  tmpBankCodeDto.setBank_branch_name(bankCodeDto.getBank_branch_name());
			  tmpBankCodeDto.setBank_branch_code(bankCodeDto.getBank_branch_code());
			  tmpBankCodeDto.setBank_name(bankCodeDto.getBank_name());
			  tmpBankCodeDto.setBank_code(bankCodeDto.getBank_code());
			  tmpBankCodeDto.setCity(bankCodeDto.getCity());
			  tmpBankCodeDto.setProvince_code(bankCodeDto.getProvince_code());
			  tmpBankCodeDto.setProvince(bankCodeDto.getProvince());
			  tmpBankCodeDto.setCity_code(bankCodeDto.getCity_code());
			  tmpBankCodeDto.setReserved1(bankCodeDto.getReserved1());
			  tmpBankCodeDto.setReserved2(bankCodeDto.getReserved2());
			  tmpBankCodeDto.setReserved3(bankCodeDto.getReserved3());
		
			bankCodeService.updatePK(bankCodeDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BankCodeDto getBankCodeDto() {
		return bankCodeDto;
	}

	public final void setStudentDto(BankCodeDto bankCodeDto) {
		this.bankCodeDto = bankCodeDto;
	}

}
