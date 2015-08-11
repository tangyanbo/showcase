package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerTransDto;
import com.shiyue.bbs.service.ISubMerTransService;

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
 
@Controller("editSubMerTransAction")
@Scope("prototype")
public class EditSubMerTransAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerTransService subMerTransService;
	private SubMerTransDto subMerTransDto =new SubMerTransDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerTransDto tmpSubMerTransDto = new SubMerTransDto();
			  tmpSubMerTransDto.setSub_mer_id(subMerTransDto.getSub_mer_id());
			  tmpSubMerTransDto.setDisp_mer_id(subMerTransDto.getDisp_mer_id());
			  tmpSubMerTransDto.setDisp_mer_name(subMerTransDto.getDisp_mer_name());
			  tmpSubMerTransDto.setTerminal_type(subMerTransDto.getTerminal_type());
			  tmpSubMerTransDto.setBus_type(subMerTransDto.getBus_type());
			  tmpSubMerTransDto.setClear_time(subMerTransDto.getClear_time());
			  tmpSubMerTransDto.setAuth_status(subMerTransDto.getAuth_status());
			  tmpSubMerTransDto.setAuth_time(subMerTransDto.getAuth_time());
			  tmpSubMerTransDto.setCreate_time(subMerTransDto.getCreate_time());
			  tmpSubMerTransDto.setSub_mer_tract_r1(subMerTransDto.getSub_mer_tract_r1());
			  tmpSubMerTransDto.setSub_mer_tract_r2(subMerTransDto.getSub_mer_tract_r2());
			  tmpSubMerTransDto.setReserved(subMerTransDto.getReserved());
			  tmpSubMerTransDto.setSub_access_type(subMerTransDto.getSub_access_type());
		
			subMerTransService.updatePK(subMerTransDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerTransDto getSubMerTransDto() {
		return subMerTransDto;
	}

	public final void setStudentDto(SubMerTransDto subMerTransDto) {
		this.subMerTransDto = subMerTransDto;
	}

}
