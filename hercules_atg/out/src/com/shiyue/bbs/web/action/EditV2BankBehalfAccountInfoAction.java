package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2BankBehalfAccountInfoDto;
import com.shiyue.bbs.service.IV2BankBehalfAccountInfoService;

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
 
@Controller("editV2BankBehalfAccountInfoAction")
@Scope("prototype")
public class EditV2BankBehalfAccountInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfAccountInfoService v2BankBehalfAccountInfoService;
	private V2BankBehalfAccountInfoDto v2BankBehalfAccountInfoDto =new V2BankBehalfAccountInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      V2BankBehalfAccountInfoDto tmpV2BankBehalfAccountInfoDto = new V2BankBehalfAccountInfoDto();
			  tmpV2BankBehalfAccountInfoDto.setBankid(v2BankBehalfAccountInfoDto.getBankid());
			  tmpV2BankBehalfAccountInfoDto.setPay_branch_no(v2BankBehalfAccountInfoDto.getPay_branch_no());
			  tmpV2BankBehalfAccountInfoDto.setBalance(v2BankBehalfAccountInfoDto.getBalance());
			  tmpV2BankBehalfAccountInfoDto.setPay_bank_name(v2BankBehalfAccountInfoDto.getPay_bank_name());
			  tmpV2BankBehalfAccountInfoDto.setPay_account_type(v2BankBehalfAccountInfoDto.getPay_account_type());
			  tmpV2BankBehalfAccountInfoDto.setCreate_time(v2BankBehalfAccountInfoDto.getCreate_time());
			  tmpV2BankBehalfAccountInfoDto.setFinish_time(v2BankBehalfAccountInfoDto.getFinish_time());
			  tmpV2BankBehalfAccountInfoDto.setAccount1_no(v2BankBehalfAccountInfoDto.getAccount1_no());
			  tmpV2BankBehalfAccountInfoDto.setAccount1_name(v2BankBehalfAccountInfoDto.getAccount1_name());
			  tmpV2BankBehalfAccountInfoDto.setStatus(v2BankBehalfAccountInfoDto.getStatus());
			  tmpV2BankBehalfAccountInfoDto.setAcc_available_balance(v2BankBehalfAccountInfoDto.getAcc_available_balance());
			  tmpV2BankBehalfAccountInfoDto.setAcc_blocked_balances(v2BankBehalfAccountInfoDto.getAcc_blocked_balances());
		
			v2BankBehalfAccountInfoService.updatePK(v2BankBehalfAccountInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2BankBehalfAccountInfoDto getV2BankBehalfAccountInfoDto() {
		return v2BankBehalfAccountInfoDto;
	}

	public final void setStudentDto(V2BankBehalfAccountInfoDto v2BankBehalfAccountInfoDto) {
		this.v2BankBehalfAccountInfoDto = v2BankBehalfAccountInfoDto;
	}

}
