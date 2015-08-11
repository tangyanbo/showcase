package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PlatMerInfoDto;
import com.shiyue.bbs.service.IPlatMerInfoService;

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
 
@Controller("editPlatMerInfoPage")
@Scope("prototype")
public class EditPlatMerInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPlatMerInfoService platMerInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private PlatMerInfoDto platMerInfoDto;

	
	public String execute() throws Exception {
		try {
		    PlatMerInfoDto paramPlatMerInfoDto = new PlatMerInfoDto();
		//设置主键
			paramPlatMerInfoDto.setPlat_mer_id(pkid);
			platMerInfoDto = platMerInfoService.getRow(paramPlatMerInfoDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PlatMerInfoDto getPlatMerInfoDto() {
		return platMerInfoDto;
	}

	public final void setStudentDto(PlatMerInfoDto platMerInfoDto) {
		this.platMerInfoDto = platMerInfoDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
