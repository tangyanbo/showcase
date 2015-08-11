package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerTerminalInfoDto;
import com.shiyue.bbs.service.ISubMerTerminalInfoService;

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
 
@Controller("editSubMerTerminalInfoAction")
@Scope("prototype")
public class EditSubMerTerminalInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerTerminalInfoService subMerTerminalInfoService;
	private SubMerTerminalInfoDto subMerTerminalInfoDto =new SubMerTerminalInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerTerminalInfoDto tmpSubMerTerminalInfoDto = new SubMerTerminalInfoDto();
			  tmpSubMerTerminalInfoDto.setId(subMerTerminalInfoDto.getId());
			  tmpSubMerTerminalInfoDto.setTerminal_id(subMerTerminalInfoDto.getTerminal_id());
			  tmpSubMerTerminalInfoDto.setSub_mer_id(subMerTerminalInfoDto.getSub_mer_id());
			  tmpSubMerTerminalInfoDto.setTsn(subMerTerminalInfoDto.getTsn());
			  tmpSubMerTerminalInfoDto.setTerminal_type(subMerTerminalInfoDto.getTerminal_type());
			  tmpSubMerTerminalInfoDto.setReserved1(subMerTerminalInfoDto.getReserved1());
			  tmpSubMerTerminalInfoDto.setReserved2(subMerTerminalInfoDto.getReserved2());
			  tmpSubMerTerminalInfoDto.setReserved3(subMerTerminalInfoDto.getReserved3());
			  tmpSubMerTerminalInfoDto.setFactory_id(subMerTerminalInfoDto.getFactory_id());
		
			subMerTerminalInfoService.updatePK(subMerTerminalInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerTerminalInfoDto getSubMerTerminalInfoDto() {
		return subMerTerminalInfoDto;
	}

	public final void setStudentDto(SubMerTerminalInfoDto subMerTerminalInfoDto) {
		this.subMerTerminalInfoDto = subMerTerminalInfoDto;
	}

}
