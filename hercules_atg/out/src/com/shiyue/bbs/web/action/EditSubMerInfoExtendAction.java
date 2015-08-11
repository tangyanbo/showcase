package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerInfoExtendDto;
import com.shiyue.bbs.service.ISubMerInfoExtendService;

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
 
@Controller("editSubMerInfoExtendAction")
@Scope("prototype")
public class EditSubMerInfoExtendAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerInfoExtendService subMerInfoExtendService;
	private SubMerInfoExtendDto subMerInfoExtendDto =new SubMerInfoExtendDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerInfoExtendDto tmpSubMerInfoExtendDto = new SubMerInfoExtendDto();
			  tmpSubMerInfoExtendDto.setSub_mer_id(subMerInfoExtendDto.getSub_mer_id());
			  tmpSubMerInfoExtendDto.setReg_cap(subMerInfoExtendDto.getReg_cap());
			  tmpSubMerInfoExtendDto.setSett_bank_code(subMerInfoExtendDto.getSett_bank_code());
			  tmpSubMerInfoExtendDto.setSett_bank_name(subMerInfoExtendDto.getSett_bank_name());
			  tmpSubMerInfoExtendDto.setChannel(subMerInfoExtendDto.getChannel());
			  tmpSubMerInfoExtendDto.setSign_date(subMerInfoExtendDto.getSign_date());
			  tmpSubMerInfoExtendDto.setSign_person(subMerInfoExtendDto.getSign_person());
			  tmpSubMerInfoExtendDto.setProvince(subMerInfoExtendDto.getProvince());
			  tmpSubMerInfoExtendDto.setCity(subMerInfoExtendDto.getCity());
			  tmpSubMerInfoExtendDto.setSett_bank_pro(subMerInfoExtendDto.getSett_bank_pro());
			  tmpSubMerInfoExtendDto.setSett_bank_city(subMerInfoExtendDto.getSett_bank_city());
			  tmpSubMerInfoExtendDto.setSett_super_bank_code(subMerInfoExtendDto.getSett_super_bank_code());
			  tmpSubMerInfoExtendDto.setSett_super_bank_name(subMerInfoExtendDto.getSett_super_bank_name());
		
			subMerInfoExtendService.updatePK(subMerInfoExtendDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerInfoExtendDto getSubMerInfoExtendDto() {
		return subMerInfoExtendDto;
	}

	public final void setStudentDto(SubMerInfoExtendDto subMerInfoExtendDto) {
		this.subMerInfoExtendDto = subMerInfoExtendDto;
	}

}
