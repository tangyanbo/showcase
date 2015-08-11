package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerSignSettleProfitDto;
import com.shiyue.bbs.service.ISubMerSignSettleProfitService;

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
 
@Controller("addSubMerSignSettleProfitAction")
@Scope("prototype")
public class AddSubMerSignSettleProfitAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerSignSettleProfitService subMerSignSettleProfitService;
	private SubMerSignSettleProfitDto subMerSignSettleProfitDto= new SubMerSignSettleProfitDto();

	public String execute() throws Exception {
		try {
			subMerSignSettleProfitService.save(subMerSignSettleProfitDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerSignSettleProfitDto getSubMerSignSettleProfitDto() {
		return subMerSignSettleProfitDto;
	}

	public final void setStudentDto(SubMerSignSettleProfitDto subMerSignSettleProfitDto) {
		this.subMerSignSettleProfitDto = subMerSignSettleProfitDto;
	}

}
