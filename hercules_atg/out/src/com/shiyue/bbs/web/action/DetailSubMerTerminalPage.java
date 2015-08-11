package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerTerminalDto;
import com.shiyue.bbs.service.ISubMerTerminalService;

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
 
@Controller("detailSubMerTerminalPage")
@Scope("prototype")
public class DetailSubMerTerminalPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerTerminalService subMerTerminalService;
	
	//入参
	private  String     pkid;
	
	//出参
	private SubMerTerminalDto subMerTerminalDto;

	
	public String execute() throws Exception {
		try {
		    SubMerTerminalDto paramSubMerTerminalDto = new SubMerTerminalDto();
		//设置主键
			paramSubMerTerminalDto.setId(pkid);
			subMerTerminalDto = subMerTerminalService.getRow(paramSubMerTerminalDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerTerminalDto getSubMerTerminalDto() {
		return subMerTerminalDto;
	}

	public final void setStudentDto(SubMerTerminalDto subMerTerminalDto) {
		this.subMerTerminalDto = subMerTerminalDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
