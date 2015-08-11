package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV2Dto;
import com.shiyue.bbs.service.IFaiOrderInfoV2Service;

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
 
@Controller("addFaiOrderInfoV2Action")
@Scope("prototype")
public class AddFaiOrderInfoV2Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV2Service faiOrderInfoV2Service;
	private FaiOrderInfoV2Dto faiOrderInfoV2Dto= new FaiOrderInfoV2Dto();

	public String execute() throws Exception {
		try {
			faiOrderInfoV2Service.save(faiOrderInfoV2Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiOrderInfoV2Dto getFaiOrderInfoV2Dto() {
		return faiOrderInfoV2Dto;
	}

	public final void setStudentDto(FaiOrderInfoV2Dto faiOrderInfoV2Dto) {
		this.faiOrderInfoV2Dto = faiOrderInfoV2Dto;
	}

}
