package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerInfoDto;
import com.shiyue.bbs.service.ISubMerInfoService;

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
 
@Controller("editSubMerInfoPage")
@Scope("prototype")
public class EditSubMerInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerInfoService subMerInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private SubMerInfoDto subMerInfoDto;

	
	public String execute() throws Exception {
		try {
		    SubMerInfoDto paramSubMerInfoDto = new SubMerInfoDto();
		//设置主键
			paramSubMerInfoDto.setSub_mer_id(pkid);
			subMerInfoDto = subMerInfoService.getRow(paramSubMerInfoDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerInfoDto getSubMerInfoDto() {
		return subMerInfoDto;
	}

	public final void setStudentDto(SubMerInfoDto subMerInfoDto) {
		this.subMerInfoDto = subMerInfoDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
