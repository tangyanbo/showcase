package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BankBranchTestDto;
import com.shiyue.bbs.service.IBankBranchTestService;

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
 
@Controller("editBankBranchTestAction")
@Scope("prototype")
public class EditBankBranchTestAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankBranchTestService bankBranchTestService;
	private BankBranchTestDto bankBranchTestDto =new BankBranchTestDto();;

	public String execute() throws Exception {
		try {
		    
		      BankBranchTestDto tmpBankBranchTestDto = new BankBranchTestDto();
			  tmpBankBranchTestDto.setId(bankBranchTestDto.getId());
			  tmpBankBranchTestDto.setBank_code(bankBranchTestDto.getBank_code());
			  tmpBankBranchTestDto.setBank_name(bankBranchTestDto.getBank_name());
			  tmpBankBranchTestDto.setLevel(bankBranchTestDto.getLevel());
			  tmpBankBranchTestDto.setSuper_code(bankBranchTestDto.getSuper_code());
			  tmpBankBranchTestDto.setCitycode(bankBranchTestDto.getCitycode());
		
			bankBranchTestService.updatePK(bankBranchTestDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BankBranchTestDto getBankBranchTestDto() {
		return bankBranchTestDto;
	}

	public final void setStudentDto(BankBranchTestDto bankBranchTestDto) {
		this.bankBranchTestDto = bankBranchTestDto;
	}

}
