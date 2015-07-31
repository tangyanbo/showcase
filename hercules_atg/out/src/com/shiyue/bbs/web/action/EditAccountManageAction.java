package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AccountManageDto;
import com.shiyue.bbs.service.IAccountManageService;

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
 
@Controller("editAccountManageAction")
@Scope("prototype")
public class EditAccountManageAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAccountManageService accountManageService;
	private AccountManageDto accountManageDto =new AccountManageDto();;

	public String execute() throws Exception {
		try {
		    
		      AccountManageDto tmpAccountManageDto = new AccountManageDto();
			  tmpAccountManageDto.setId(accountManageDto.getId());
			  tmpAccountManageDto.setMer_sys_id(accountManageDto.getMer_sys_id());
			  tmpAccountManageDto.setMer_amt(accountManageDto.getMer_amt());
			  tmpAccountManageDto.setFee_amt(accountManageDto.getFee_amt());
			  tmpAccountManageDto.setAccount_type(accountManageDto.getAccount_type());
			  tmpAccountManageDto.setStatus(accountManageDto.getStatus());
			  tmpAccountManageDto.setSettle_date(accountManageDto.getSettle_date());
			  tmpAccountManageDto.setCreate_time(accountManageDto.getCreate_time());
			  tmpAccountManageDto.setUpdate_time(accountManageDto.getUpdate_time());
			  tmpAccountManageDto.setUpdate_oper_id(accountManageDto.getUpdate_oper_id());
			  tmpAccountManageDto.setChange_status(accountManageDto.getChange_status());
			  tmpAccountManageDto.setChange_amt(accountManageDto.getChange_amt());
			  tmpAccountManageDto.setChange_oper_id(accountManageDto.getChange_oper_id());
			  tmpAccountManageDto.setChange_reason(accountManageDto.getChange_reason());
			  tmpAccountManageDto.setReserved1(accountManageDto.getReserved1());
			  tmpAccountManageDto.setReserved2(accountManageDto.getReserved2());
			  tmpAccountManageDto.setReserved3(accountManageDto.getReserved3());
		
			accountManageService.updatePK(accountManageDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AccountManageDto getAccountManageDto() {
		return accountManageDto;
	}

	public final void setStudentDto(AccountManageDto accountManageDto) {
		this.accountManageDto = accountManageDto;
	}

}
