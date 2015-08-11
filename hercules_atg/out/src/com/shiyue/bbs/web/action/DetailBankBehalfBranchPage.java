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
 
@Controller("detailBankBehalfBranchPage")
@Scope("prototype")
public class DetailBankBehalfBranchPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankBehalfBranchService bankBehalfBranchService;
	
	//入参
	private  String     pkid;
	
	//出参
	private BankBehalfBranchDto bankBehalfBranchDto;

	
	public String execute() throws Exception {
		try {
		    BankBehalfBranchDto paramBankBehalfBranchDto = new BankBehalfBranchDto();
		//设置主键
			paramBankBehalfBranchDto.setBank_line_id(pkid);
			bankBehalfBranchDto = bankBehalfBranchService.getRow(paramBankBehalfBranchDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
