package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CssConfigDto;
import com.shiyue.bbs.service.ICssConfigService;

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
 
@Controller("editCssConfigPage")
@Scope("prototype")
public class EditCssConfigPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICssConfigService cssConfigService;
	
	//入参
	private  String     pkid;
	
	//出参
	private CssConfigDto cssConfigDto;

	
	public String execute() throws Exception {
		try {
		    CssConfigDto paramCssConfigDto = new CssConfigDto();
		//设置主键
			paramCssConfigDto.setId(pkid);
			cssConfigDto = cssConfigService.getRow(paramCssConfigDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CssConfigDto getCssConfigDto() {
		return cssConfigDto;
	}

	public final void setStudentDto(CssConfigDto cssConfigDto) {
		this.cssConfigDto = cssConfigDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
