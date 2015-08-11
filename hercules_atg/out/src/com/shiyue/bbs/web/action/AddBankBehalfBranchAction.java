package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BankBehalfBranchDto;
import com.shiyue.bbs.service.IBankBehalfBranchService;

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
 
@Controller("addBankBehalfBranchAction")
@Scope("prototype")
public class AddBankBehalfBranchAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankBehalfBranchService bankBehalfBranchService;
	private BankBehalfBranchDto bankBehalfBranchDto= new BankBehalfBranchDto();

	public String execute() throws Exception {
		try {
			bankBehalfBranchService.save(bankBehalfBranchDto);
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
