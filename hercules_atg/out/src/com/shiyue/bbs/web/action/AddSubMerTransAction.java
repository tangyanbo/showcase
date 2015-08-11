package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerTransDto;
import com.shiyue.bbs.service.ISubMerTransService;

 /**
 * 类功能:自动代码生成模板新增   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("addSubMerTransAction")
@Scope("prototype")
public class AddSubMerTransAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerTransService subMerTransService;
	private SubMerTransDto subMerTransDto= new SubMerTransDto();

	public String execute() throws Exception {
		try {
			subMerTransService.save(subMerTransDto);
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
