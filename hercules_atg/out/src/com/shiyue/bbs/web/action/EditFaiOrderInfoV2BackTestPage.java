package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV2BackTestDto;
import com.shiyue.bbs.service.IFaiOrderInfoV2BackTestService;

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
 
@Controller("editFaiOrderInfoV2BackTestPage")
@Scope("prototype")
public class EditFaiOrderInfoV2BackTestPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV2BackTestService faiOrderInfoV2BackTestService;
	
	//入参
	private  String     pkid;
	
	//出参
	private FaiOrderInfoV2BackTestDto faiOrderInfoV2BackTestDto;

	
	public String execute() throws Exception {
		try {
		    FaiOrderInfoV2BackTestDto paramFaiOrderInfoV2BackTestDto = new FaiOrderInfoV2BackTestDto();
		//设置主键
			faiOrderInfoV2BackTestDto = faiOrderInfoV2BackTestService.getRow(paramFaiOrderInfoV2BackTestDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiOrderInfoV2BackTestDto getFaiOrderInfoV2BackTestDto() {
		return faiOrderInfoV2BackTestDto;
	}

	public final void setStudentDto(FaiOrderInfoV2BackTestDto faiOrderInfoV2BackTestDto) {
		this.faiOrderInfoV2BackTestDto = faiOrderInfoV2BackTestDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}