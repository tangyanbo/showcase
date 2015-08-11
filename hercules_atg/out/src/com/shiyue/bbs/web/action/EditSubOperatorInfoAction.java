package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubOperatorInfoDto;
import com.shiyue.bbs.service.ISubOperatorInfoService;

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
 
@Controller("editSubOperatorInfoAction")
@Scope("prototype")
public class EditSubOperatorInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubOperatorInfoService subOperatorInfoService;
	private SubOperatorInfoDto subOperatorInfoDto =new SubOperatorInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      SubOperatorInfoDto tmpSubOperatorInfoDto = new SubOperatorInfoDto();
			  tmpSubOperatorInfoDto.setId(subOperatorInfoDto.getId());
			  tmpSubOperatorInfoDto.setSub_mer_id(subOperatorInfoDto.getSub_mer_id());
			  tmpSubOperatorInfoDto.setOperator_id(subOperatorInfoDto.getOperator_id());
			  tmpSubOperatorInfoDto.setOperator_name(subOperatorInfoDto.getOperator_name());
			  tmpSubOperatorInfoDto.setContactor(subOperatorInfoDto.getContactor());
			  tmpSubOperatorInfoDto.setContactor_phone(subOperatorInfoDto.getContactor_phone());
			  tmpSubOperatorInfoDto.setContactor_addr(subOperatorInfoDto.getContactor_addr());
			  tmpSubOperatorInfoDto.setStatus(subOperatorInfoDto.getStatus());
			  tmpSubOperatorInfoDto.setCreate_time(subOperatorInfoDto.getCreate_time());
			  tmpSubOperatorInfoDto.setRemark(subOperatorInfoDto.getRemark());
			  tmpSubOperatorInfoDto.setReserved(subOperatorInfoDto.getReserved());
		
			subOperatorInfoService.updatePK(subOperatorInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubOperatorInfoDto getSubOperatorInfoDto() {
		return subOperatorInfoDto;
	}

	public final void setStudentDto(SubOperatorInfoDto subOperatorInfoDto) {
		this.subOperatorInfoDto = subOperatorInfoDto;
	}

}
