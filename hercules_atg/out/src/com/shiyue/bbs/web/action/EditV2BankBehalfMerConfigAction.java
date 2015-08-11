package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2BankBehalfMerConfigDto;
import com.shiyue.bbs.service.IV2BankBehalfMerConfigService;

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
 
@Controller("editV2BankBehalfMerConfigAction")
@Scope("prototype")
public class EditV2BankBehalfMerConfigAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfMerConfigService v2BankBehalfMerConfigService;
	private V2BankBehalfMerConfigDto v2BankBehalfMerConfigDto =new V2BankBehalfMerConfigDto();;

	public String execute() throws Exception {
		try {
		    
		      V2BankBehalfMerConfigDto tmpV2BankBehalfMerConfigDto = new V2BankBehalfMerConfigDto();
			  tmpV2BankBehalfMerConfigDto.setMer_id(v2BankBehalfMerConfigDto.getMer_id());
			  tmpV2BankBehalfMerConfigDto.setBalance(v2BankBehalfMerConfigDto.getBalance());
			  tmpV2BankBehalfMerConfigDto.setFee(v2BankBehalfMerConfigDto.getFee());
			  tmpV2BankBehalfMerConfigDto.setRate(v2BankBehalfMerConfigDto.getRate());
			  tmpV2BankBehalfMerConfigDto.setStatus(v2BankBehalfMerConfigDto.getStatus());
			  tmpV2BankBehalfMerConfigDto.setCreate_time(v2BankBehalfMerConfigDto.getCreate_time());
			  tmpV2BankBehalfMerConfigDto.setFinish_time(v2BankBehalfMerConfigDto.getFinish_time());
			  tmpV2BankBehalfMerConfigDto.setBack_url(v2BankBehalfMerConfigDto.getBack_url());
			  tmpV2BankBehalfMerConfigDto.setMer_name(v2BankBehalfMerConfigDto.getMer_name());
			  tmpV2BankBehalfMerConfigDto.setAvailable_balance(v2BankBehalfMerConfigDto.getAvailable_balance());
			  tmpV2BankBehalfMerConfigDto.setBlocked_balances(v2BankBehalfMerConfigDto.getBlocked_balances());
			  tmpV2BankBehalfMerConfigDto.setAvailable_fee(v2BankBehalfMerConfigDto.getAvailable_fee());
			  tmpV2BankBehalfMerConfigDto.setBlocked_fee(v2BankBehalfMerConfigDto.getBlocked_fee());
			  tmpV2BankBehalfMerConfigDto.setPay_tract(v2BankBehalfMerConfigDto.getPay_tract());
			  tmpV2BankBehalfMerConfigDto.setMer_sys_id(v2BankBehalfMerConfigDto.getMer_sys_id());
			  tmpV2BankBehalfMerConfigDto.setMer_type(v2BankBehalfMerConfigDto.getMer_type());
			  tmpV2BankBehalfMerConfigDto.setTrans_mer_id(v2BankBehalfMerConfigDto.getTrans_mer_id());
			  tmpV2BankBehalfMerConfigDto.setAccount_no(v2BankBehalfMerConfigDto.getAccount_no());
		
			v2BankBehalfMerConfigService.updatePK(v2BankBehalfMerConfigDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2BankBehalfMerConfigDto getV2BankBehalfMerConfigDto() {
		return v2BankBehalfMerConfigDto;
	}

	public final void setStudentDto(V2BankBehalfMerConfigDto v2BankBehalfMerConfigDto) {
		this.v2BankBehalfMerConfigDto = v2BankBehalfMerConfigDto;
	}

}
