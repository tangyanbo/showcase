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
 
@Controller("editBankBranchTestPage")
@Scope("prototype")
public class EditBankBranchTestPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankBranchTestService bankBranchTestService;
	
	//入参
	private  String     pkid;
	
	//出参
	private BankBranchTestDto bankBranchTestDto;

	
	public String execute() throws Exception {
		try {
		    BankBranchTestDto paramBankBranchTestDto = new BankBranchTestDto();
		//设置主键
			paramBankBranchTestDto.setId(pkid);
			bankBranchTestDto = bankBranchTestService.getRow(paramBankBranchTestDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
