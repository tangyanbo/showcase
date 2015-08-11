package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiPayInfoBackTestDto;
import com.shiyue.bbs.service.IFaiPayInfoBackTestService;

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
 
@Controller("editFaiPayInfoBackTestPage")
@Scope("prototype")
public class EditFaiPayInfoBackTestPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiPayInfoBackTestService faiPayInfoBackTestService;
	
	//入参
	private  String     pkid;
	
	//出参
	private FaiPayInfoBackTestDto faiPayInfoBackTestDto;

	
	public String execute() throws Exception {
		try {
		    FaiPayInfoBackTestDto paramFaiPayInfoBackTestDto = new FaiPayInfoBackTestDto();
		//设置主键
			paramFaiPayInfoBackTestDto.setOrder_id(pkid);
			faiPayInfoBackTestDto = faiPayInfoBackTestService.getRow(paramFaiPayInfoBackTestDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiPayInfoBackTestDto getFaiPayInfoBackTestDto() {
		return faiPayInfoBackTestDto;
	}

	public final void setStudentDto(FaiPayInfoBackTestDto faiPayInfoBackTestDto) {
		this.faiPayInfoBackTestDto = faiPayInfoBackTestDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
