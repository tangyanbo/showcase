package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BankBranchDto;
import com.shiyue.bbs.service.IBankBranchService;

 /**
 * 类功能:自动代码生成模板删除   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("delBankBranchAction")
@Scope("prototype")
public class DelBankBranchAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankBranchService bankBranchService;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			BankBranchDto paramBankBranchDto = new BankBranchDto();
			
		//设置主键
			paramBankBranchDto.setId(pkid);
			bankBranchService.deletePK(paramBankBranchDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ERROR;
	}


	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
