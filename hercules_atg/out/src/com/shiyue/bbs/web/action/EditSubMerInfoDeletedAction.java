package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerInfoDeletedDto;
import com.shiyue.bbs.service.ISubMerInfoDeletedService;

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
 
@Controller("editSubMerInfoDeletedAction")
@Scope("prototype")
public class EditSubMerInfoDeletedAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerInfoDeletedService subMerInfoDeletedService;
	private SubMerInfoDeletedDto subMerInfoDeletedDto =new SubMerInfoDeletedDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerInfoDeletedDto tmpSubMerInfoDeletedDto = new SubMerInfoDeletedDto();
			  tmpSubMerInfoDeletedDto.setId(subMerInfoDeletedDto.getId());
			  tmpSubMerInfoDeletedDto.setSub_mer_id(subMerInfoDeletedDto.getSub_mer_id());
			  tmpSubMerInfoDeletedDto.setPrefix_id(subMerInfoDeletedDto.getPrefix_id());
			  tmpSubMerInfoDeletedDto.setSuffix_id(subMerInfoDeletedDto.getSuffix_id());
			  tmpSubMerInfoDeletedDto.setReserved(subMerInfoDeletedDto.getReserved());
		
			subMerInfoDeletedService.updatePK(subMerInfoDeletedDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerInfoDeletedDto getSubMerInfoDeletedDto() {
		return subMerInfoDeletedDto;
	}

	public final void setStudentDto(SubMerInfoDeletedDto subMerInfoDeletedDto) {
		this.subMerInfoDeletedDto = subMerInfoDeletedDto;
	}

}
