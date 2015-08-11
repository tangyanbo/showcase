package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.TractInfoDto;
import com.shiyue.bbs.service.ITractInfoService;

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
 
@Controller("editTractInfoPage")
@Scope("prototype")
public class EditTractInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITractInfoService tractInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private TractInfoDto tractInfoDto;

	
	public String execute() throws Exception {
		try {
		    TractInfoDto paramTractInfoDto = new TractInfoDto();
		//设置主键
			paramTractInfoDto.setTract_id(pkid);
			tractInfoDto = tractInfoService.getRow(paramTractInfoDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final TractInfoDto getTractInfoDto() {
		return tractInfoDto;
	}

	public final void setStudentDto(TractInfoDto tractInfoDto) {
		this.tractInfoDto = tractInfoDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
