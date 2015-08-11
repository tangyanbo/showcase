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
 
@Controller("editBankCodePage")
@Scope("prototype")
public class EditBankCodePage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBankCodeService bankCodeService;
	
	//入参
	private  String     pkid;
	
	//出参
	private BankCodeDto bankCodeDto;

	
	public String execute() throws Exception {
		try {
		    BankCodeDto paramBankCodeDto = new BankCodeDto();
		//设置主键
			bankCodeDto = bankCodeService.getRow(paramBankCodeDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
