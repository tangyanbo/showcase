package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PlatMerInfoDto;
import com.shiyue.bbs.service.IPlatMerInfoService;

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
 
@Controller("editPlatMerInfoAction")
@Scope("prototype")
public class EditPlatMerInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPlatMerInfoService platMerInfoService;
	private PlatMerInfoDto platMerInfoDto =new PlatMerInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      PlatMerInfoDto tmpPlatMerInfoDto = new PlatMerInfoDto();
			  tmpPlatMerInfoDto.setPlat_mer_id(platMerInfoDto.getPlat_mer_id());
			  tmpPlatMerInfoDto.setPlat_mer_name(platMerInfoDto.getPlat_mer_name());
			  tmpPlatMerInfoDto.setMer_reg_no(platMerInfoDto.getMer_reg_no());
			  tmpPlatMerInfoDto.setMer_tax_no(platMerInfoDto.getMer_tax_no());
			  tmpPlatMerInfoDto.setLegal_person(platMerInfoDto.getLegal_person());
			  tmpPlatMerInfoDto.setLegal_idcard(platMerInfoDto.getLegal_idcard());
			  tmpPlatMerInfoDto.setContactor(platMerInfoDto.getContactor());
			  tmpPlatMerInfoDto.setContact_phone(platMerInfoDto.getContact_phone());
			  tmpPlatMerInfoDto.setContact_email(platMerInfoDto.getContact_email());
			  tmpPlatMerInfoDto.setContact_addr(platMerInfoDto.getContact_addr());
			  tmpPlatMerInfoDto.setCreate_time(platMerInfoDto.getCreate_time());
			  tmpPlatMerInfoDto.setStatus(platMerInfoDto.getStatus());
			  tmpPlatMerInfoDto.setRemark(platMerInfoDto.getRemark());
			  tmpPlatMerInfoDto.setReserved(platMerInfoDto.getReserved());
			  tmpPlatMerInfoDto.setLogo(platMerInfoDto.getLogo());
			  tmpPlatMerInfoDto.setColor(platMerInfoDto.getColor());
		
			platMerInfoService.updatePK(platMerInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PlatMerInfoDto getPlatMerInfoDto() {
		return platMerInfoDto;
	}

	public final void setStudentDto(PlatMerInfoDto platMerInfoDto) {
		this.platMerInfoDto = platMerInfoDto;
	}

}
