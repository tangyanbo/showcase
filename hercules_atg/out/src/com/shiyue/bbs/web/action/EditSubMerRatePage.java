package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerRateDto;
import com.shiyue.bbs.service.ISubMerRateService;

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
 
@Controller("editSubMerRatePage")
@Scope("prototype")
public class EditSubMerRatePage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerRateService subMerRateService;
	
	//入参
	private  String     pkid;
	
	//出参
	private SubMerRateDto subMerRateDto;

	
	public String execute() throws Exception {
		try {
		    SubMerRateDto paramSubMerRateDto = new SubMerRateDto();
		//设置主键
			subMerRateDto = subMerRateService.getRow(paramSubMerRateDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerRateDto getSubMerRateDto() {
		return subMerRateDto;
	}

	public final void setStudentDto(SubMerRateDto subMerRateDto) {
		this.subMerRateDto = subMerRateDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
