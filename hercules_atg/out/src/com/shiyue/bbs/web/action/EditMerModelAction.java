package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerModelDto;
import com.shiyue.bbs.service.IMerModelService;

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
 
@Controller("editMerModelAction")
@Scope("prototype")
public class EditMerModelAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerModelService merModelService;
	private MerModelDto merModelDto =new MerModelDto();;

	public String execute() throws Exception {
		try {
		    
		      MerModelDto tmpMerModelDto = new MerModelDto();
			  tmpMerModelDto.setId(merModelDto.getId());
			  tmpMerModelDto.setModel_name(merModelDto.getModel_name());
			  tmpMerModelDto.setModel_no(merModelDto.getModel_no());
			  tmpMerModelDto.setPath(merModelDto.getPath());
			  tmpMerModelDto.setDesc(merModelDto.getDesc());
			  tmpMerModelDto.setSuper_no(merModelDto.getSuper_no());
			  tmpMerModelDto.setRemark(merModelDto.getRemark());
		
			merModelService.updatePK(merModelDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerModelDto getMerModelDto() {
		return merModelDto;
	}

	public final void setStudentDto(MerModelDto merModelDto) {
		this.merModelDto = merModelDto;
	}

}
