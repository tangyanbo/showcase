package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BankBehalfBranchDto;
import com.shiyue.bbs.service.IBankBehalfBranchService;

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
 
@Controller("editBankBehalfBranchAction")
@Scope("prototype")
public class EditBankBehalfBranchAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankBehalfBranchService bankBehalfBranchService;
	private BankBehalfBranchDto bankBehalfBranchDto =new BankBehalfBranchDto();;

	public String execute() throws Exception {
		try {
		    
		      BankBehalfBranchDto tmpBankBehalfBranchDto = new BankBehalfBranchDto();
			  tmpBankBehalfBranchDto.setBank_line_id(bankBehalfBranchDto.getBank_line_id());
			  tmpBankBehalfBranchDto.setBank_line_number(bankBehalfBranchDto.getBank_line_number());
			  tmpBankBehalfBranchDto.setBank_name(bankBehalfBranchDto.getBank_name());
			  tmpBankBehalfBranchDto.setOnline_bank_number(bankBehalfBranchDto.getOnline_bank_number());
			  tmpBankBehalfBranchDto.setSettle_line_number(bankBehalfBranchDto.getSettle_line_number());
			  tmpBankBehalfBranchDto.setStatus(bankBehalfBranchDto.getStatus());
			  tmpBankBehalfBranchDto.setInterbank_settle_status(bankBehalfBranchDto.getInterbank_settle_status());
			  tmpBankBehalfBranchDto.setBank_type(bankBehalfBranchDto.getBank_type());
			  tmpBankBehalfBranchDto.setCreate_time(bankBehalfBranchDto.getCreate_time());
			  tmpBankBehalfBranchDto.setFinish_time(bankBehalfBranchDto.getFinish_time());
			  tmpBankBehalfBranchDto.setKeyword(bankBehalfBranchDto.getKeyword());
			  tmpBankBehalfBranchDto.setCode(bankBehalfBranchDto.getCode());
			  tmpBankBehalfBranchDto.setWith_holding_code(bankBehalfBranchDto.getWith_holding_code());
		
			bankBehalfBranchService.updatePK(bankBehalfBranchDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BankBehalfBranchDto getBankBehalfBranchDto() {
		return bankBehalfBranchDto;
	}

	public final void setStudentDto(BankBehalfBranchDto bankBehalfBranchDto) {
		this.bankBehalfBranchDto = bankBehalfBranchDto;
	}

}
