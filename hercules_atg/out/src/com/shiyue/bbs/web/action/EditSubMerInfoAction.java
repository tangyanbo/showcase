package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerInfoDto;
import com.shiyue.bbs.service.ISubMerInfoService;

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
 
@Controller("editSubMerInfoAction")
@Scope("prototype")
public class EditSubMerInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerInfoService subMerInfoService;
	private SubMerInfoDto subMerInfoDto =new SubMerInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerInfoDto tmpSubMerInfoDto = new SubMerInfoDto();
			  tmpSubMerInfoDto.setSub_mer_id(subMerInfoDto.getSub_mer_id());
			  tmpSubMerInfoDto.setSub_mer_name(subMerInfoDto.getSub_mer_name());
			  tmpSubMerInfoDto.setShort_name(subMerInfoDto.getShort_name());
			  tmpSubMerInfoDto.setReg_no(subMerInfoDto.getReg_no());
			  tmpSubMerInfoDto.setTax_no(subMerInfoDto.getTax_no());
			  tmpSubMerInfoDto.setOrganization_code(subMerInfoDto.getOrganization_code());
			  tmpSubMerInfoDto.setReg_addr(subMerInfoDto.getReg_addr());
			  tmpSubMerInfoDto.setLegal_person(subMerInfoDto.getLegal_person());
			  tmpSubMerInfoDto.setLegal_idcard(subMerInfoDto.getLegal_idcard());
			  tmpSubMerInfoDto.setMer_kind(subMerInfoDto.getMer_kind());
			  tmpSubMerInfoDto.setContactor(subMerInfoDto.getContactor());
			  tmpSubMerInfoDto.setContactor_phone(subMerInfoDto.getContactor_phone());
			  tmpSubMerInfoDto.setContactor_addr(subMerInfoDto.getContactor_addr());
			  tmpSubMerInfoDto.setContactor_email(subMerInfoDto.getContactor_email());
			  tmpSubMerInfoDto.setSett_account_name(subMerInfoDto.getSett_account_name());
			  tmpSubMerInfoDto.setSett_account_no(subMerInfoDto.getSett_account_no());
			  tmpSubMerInfoDto.setSett_agency(subMerInfoDto.getSett_agency());
			  tmpSubMerInfoDto.setMer_sys_id(subMerInfoDto.getMer_sys_id());
			  tmpSubMerInfoDto.setAgent_id_l1(subMerInfoDto.getAgent_id_l1());
			  tmpSubMerInfoDto.setAgent_id_l2(subMerInfoDto.getAgent_id_l2());
			  tmpSubMerInfoDto.setMcc(subMerInfoDto.getMcc());
			  tmpSubMerInfoDto.setRealmcc(subMerInfoDto.getRealmcc());
			  tmpSubMerInfoDto.setRegion(subMerInfoDto.getRegion());
			  tmpSubMerInfoDto.setBill_cycle(subMerInfoDto.getBill_cycle());
			  tmpSubMerInfoDto.setStatus(subMerInfoDto.getStatus());
			  tmpSubMerInfoDto.setCreate_time(subMerInfoDto.getCreate_time());
			  tmpSubMerInfoDto.setRemark(subMerInfoDto.getRemark());
			  tmpSubMerInfoDto.setReserved(subMerInfoDto.getReserved());
			  tmpSubMerInfoDto.setLogo(subMerInfoDto.getLogo());
			  tmpSubMerInfoDto.setColor(subMerInfoDto.getColor());
			  tmpSubMerInfoDto.setSett_acc_type(subMerInfoDto.getSett_acc_type());
			  tmpSubMerInfoDto.setSub_mer_tract(subMerInfoDto.getSub_mer_tract());
			  tmpSubMerInfoDto.setSettle_status(subMerInfoDto.getSettle_status());
			  tmpSubMerInfoDto.setBalance(subMerInfoDto.getBalance());
			  tmpSubMerInfoDto.setWithdrawals(subMerInfoDto.getWithdrawals());
			  tmpSubMerInfoDto.setIs_t0(subMerInfoDto.getIs_t0());
		
			subMerInfoService.updatePK(subMerInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerInfoDto getSubMerInfoDto() {
		return subMerInfoDto;
	}

	public final void setStudentDto(SubMerInfoDto subMerInfoDto) {
		this.subMerInfoDto = subMerInfoDto;
	}

}
