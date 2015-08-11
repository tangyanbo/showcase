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
 
@Controller("detailPlatModelPage")
@Scope("prototype")
public class DetailPlatModelPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPlatModelService platModelService;
	
	//入参
	private  String     pkid;
	
	//出参
	private PlatModelDto platModelDto;

	
	public String execute() throws Exception {
		try {
		    PlatModelDto paramPlatModelDto = new PlatModelDto();
		//设置主键
			paramPlatModelDto.setId(pkid);
			platModelDto = platModelService.getRow(paramPlatModelDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
