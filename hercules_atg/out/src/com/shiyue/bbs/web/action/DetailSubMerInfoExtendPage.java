package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerInfoExtendDto;
import com.shiyue.bbs.service.ISubMerInfoExtendService;

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
 
@Controller("detailSubMerInfoExtendPage")
@Scope("prototype")
public class DetailSubMerInfoExtendPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerInfoExtendService subMerInfoExtendService;
	
	//入参
	private  String     pkid;
	
	//出参
	private SubMerInfoExtendDto subMerInfoExtendDto;

	
	public String execute() throws Exception {
		try {
		    SubMerInfoExtendDto paramSubMerInfoExtendDto = new SubMerInfoExtendDto();
		//设置主键
			paramSubMerInfoExtendDto.setSub_mer_id(pkid);
			subMerInfoExtendDto = subMerInfoExtendService.getRow(paramSubMerInfoExtendDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerInfoExtendDto getSubMerInfoExtendDto() {
		return subMerInfoExtendDto;
	}

	public final void setStudentDto(SubMerInfoExtendDto subMerInfoExtendDto) {
		this.subMerInfoExtendDto = subMerInfoExtendDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
