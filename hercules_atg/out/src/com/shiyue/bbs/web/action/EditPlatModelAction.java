package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PlatModelDto;
import com.shiyue.bbs.service.IPlatModelService;

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
 
@Controller("editPlatModelAction")
@Scope("prototype")
public class EditPlatModelAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPlatModelService platModelService;
	private PlatModelDto platModelDto =new PlatModelDto();;

	public String execute() throws Exception {
		try {
		    
		      PlatModelDto tmpPlatModelDto = new PlatModelDto();
			  tmpPlatModelDto.setId(platModelDto.getId());
			  tmpPlatModelDto.setModel_name(platModelDto.getModel_name());
			  tmpPlatModelDto.setModel_no(platModelDto.getModel_no());
			  tmpPlatModelDto.setPath(platModelDto.getPath());
			  tmpPlatModelDto.setDesc(platModelDto.getDesc());
			  tmpPlatModelDto.setSuper_no(platModelDto.getSuper_no());
			  tmpPlatModelDto.setRemark(platModelDto.getRemark());
		
			platModelService.updatePK(platModelDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PlatModelDto getPlatModelDto() {
		return platModelDto;
	}

	public final void setStudentDto(PlatModelDto platModelDto) {
		this.platModelDto = platModelDto;
	}

}
