package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerAccountDto;
import com.shiyue.bbs.service.IMerAccountService;

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
 
@Controller("editMerAccountAction")
@Scope("prototype")
public class EditMerAccountAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerAccountService merAccountService;
	private MerAccountDto merAccountDto =new MerAccountDto();;

	public String execute() throws Exception {
		try {
		    
		      MerAccountDto tmpMerAccountDto = new MerAccountDto();
			  tmpMerAccountDto.setId(merAccountDto.getId());
			  tmpMerAccountDto.setMer_sys_id(merAccountDto.getMer_sys_id());
			  tmpMerAccountDto.setSett_account_name(merAccountDto.getSett_account_name());
			  tmpMerAccountDto.setSett_account_no(merAccountDto.getSett_account_no());
			  tmpMerAccountDto.setSett_agency(merAccountDto.getSett_agency());
			  tmpMerAccountDto.setSett_acc_type(merAccountDto.getSett_acc_type());
			  tmpMerAccountDto.setStatus(merAccountDto.getStatus());
			  tmpMerAccountDto.setReserved1(merAccountDto.getReserved1());
			  tmpMerAccountDto.setReserved2(merAccountDto.getReserved2());
			  tmpMerAccountDto.setReserved3(merAccountDto.getReserved3());
			  tmpMerAccountDto.setReserved4(merAccountDto.getReserved4());
			  tmpMerAccountDto.setReserved5(merAccountDto.getReserved5());
			  tmpMerAccountDto.setSett_agency_name(merAccountDto.getSett_agency_name());
			  tmpMerAccountDto.setDeduction_type(merAccountDto.getDeduction_type());
		
			merAccountService.updatePK(merAccountDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerAccountDto getMerAccountDto() {
		return merAccountDto;
	}

	public final void setStudentDto(MerAccountDto merAccountDto) {
		this.merAccountDto = merAccountDto;
	}

}
