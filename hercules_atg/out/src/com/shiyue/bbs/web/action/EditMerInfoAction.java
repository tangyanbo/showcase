package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerInfoDto;
import com.shiyue.bbs.service.IMerInfoService;

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
 
@Controller("editMerInfoAction")
@Scope("prototype")
public class EditMerInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerInfoService merInfoService;
	private MerInfoDto merInfoDto =new MerInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      MerInfoDto tmpMerInfoDto = new MerInfoDto();
			  tmpMerInfoDto.setMer_sys_id(merInfoDto.getMer_sys_id());
			  tmpMerInfoDto.setMer_name(merInfoDto.getMer_name());
			  tmpMerInfoDto.setMer_reg_no(merInfoDto.getMer_reg_no());
			  tmpMerInfoDto.setMer_tax_no(merInfoDto.getMer_tax_no());
			  tmpMerInfoDto.setOrganization_code(merInfoDto.getOrganization_code());
			  tmpMerInfoDto.setMer_reg_addr(merInfoDto.getMer_reg_addr());
			  tmpMerInfoDto.setMer_legal_person(merInfoDto.getMer_legal_person());
			  tmpMerInfoDto.setMer_legal_idcard(merInfoDto.getMer_legal_idcard());
			  tmpMerInfoDto.setReg_capital(merInfoDto.getReg_capital());
			  tmpMerInfoDto.setMer_kind(merInfoDto.getMer_kind());
			  tmpMerInfoDto.setContactor(merInfoDto.getContactor());
			  tmpMerInfoDto.setContactor_phone(merInfoDto.getContactor_phone());
			  tmpMerInfoDto.setContactor_addr(merInfoDto.getContactor_addr());
			  tmpMerInfoDto.setContactor_email(merInfoDto.getContactor_email());
			  tmpMerInfoDto.setSett_account_name(merInfoDto.getSett_account_name());
			  tmpMerInfoDto.setSett_account_no(merInfoDto.getSett_account_no());
			  tmpMerInfoDto.setSett_agency(merInfoDto.getSett_agency());
			  tmpMerInfoDto.setSign_date(merInfoDto.getSign_date());
			  tmpMerInfoDto.setSign_person(merInfoDto.getSign_person());
			  tmpMerInfoDto.setDisp_name(merInfoDto.getDisp_name());
			  tmpMerInfoDto.setPlat_mer_id(merInfoDto.getPlat_mer_id());
			  tmpMerInfoDto.setCreate_time(merInfoDto.getCreate_time());
			  tmpMerInfoDto.setStatus(merInfoDto.getStatus());
			  tmpMerInfoDto.setAuth_status(merInfoDto.getAuth_status());
			  tmpMerInfoDto.setLogo(merInfoDto.getLogo());
			  tmpMerInfoDto.setColor(merInfoDto.getColor());
			  tmpMerInfoDto.setBill_cycle(merInfoDto.getBill_cycle());
			  tmpMerInfoDto.setRemark(merInfoDto.getRemark());
			  tmpMerInfoDto.setReserved(merInfoDto.getReserved());
			  tmpMerInfoDto.setSett_acc_type(merInfoDto.getSett_acc_type());
			  tmpMerInfoDto.setAccess_type(merInfoDto.getAccess_type());
			  tmpMerInfoDto.setMer_type(merInfoDto.getMer_type());
		
			merInfoService.updatePK(merInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerInfoDto getMerInfoDto() {
		return merInfoDto;
	}

	public final void setStudentDto(MerInfoDto merInfoDto) {
		this.merInfoDto = merInfoDto;
	}

}
