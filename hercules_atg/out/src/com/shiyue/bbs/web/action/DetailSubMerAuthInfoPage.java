package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerAuthInfoDto;
import com.shiyue.bbs.service.ISubMerAuthInfoService;

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
 
@Controller("detailSubMerAuthInfoPage")
@Scope("prototype")
public class DetailSubMerAuthInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerAuthInfoService subMerAuthInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private SubMerAuthInfoDto subMerAuthInfoDto;

	
	public String execute() throws Exception {
		try {
		    SubMerAuthInfoDto paramSubMerAuthInfoDto = new SubMerAuthInfoDto();
		//设置主键
			paramSubMerAuthInfoDto.setAuth_order_id(pkid);
			subMerAuthInfoDto = subMerAuthInfoService.getRow(paramSubMerAuthInfoDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerAuthInfoDto getSubMerAuthInfoDto() {
		return subMerAuthInfoDto;
	}

	public final void setStudentDto(SubMerAuthInfoDto subMerAuthInfoDto) {
		this.subMerAuthInfoDto = subMerAuthInfoDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
