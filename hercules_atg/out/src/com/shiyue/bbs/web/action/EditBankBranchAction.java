package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BankBranchDto;
import com.shiyue.bbs.service.IBankBranchService;

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
 
@Controller("editBankBranchAction")
@Scope("prototype")
public class EditBankBranchAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankBranchService bankBranchService;
	private BankBranchDto bankBranchDto =new BankBranchDto();;

	public String execute() throws Exception {
		try {
		    
		      BankBranchDto tmpBankBranchDto = new BankBranchDto();
			  tmpBankBranchDto.setId(bankBranchDto.getId());
			  tmpBankBranchDto.setBank_code(bankBranchDto.getBank_code());
			  tmpBankBranchDto.setBank_name(bankBranchDto.getBank_name());
			  tmpBankBranchDto.setLevel(bankBranchDto.getLevel());
			  tmpBankBranchDto.setSuper_code(bankBranchDto.getSuper_code());
			  tmpBankBranchDto.setCitycode(bankBranchDto.getCitycode());
		
			bankBranchService.updatePK(bankBranchDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BankBranchDto getBankBranchDto() {
		return bankBranchDto;
	}

	public final void setStudentDto(BankBranchDto bankBranchDto) {
		this.bankBranchDto = bankBranchDto;
	}

}
