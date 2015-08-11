package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2CstpCsnDto;
import com.shiyue.bbs.service.IV2CstpCsnService;

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
 
@Controller("editV2CstpCsnPage")
@Scope("prototype")
public class EditV2CstpCsnPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2CstpCsnService v2CstpCsnService;
	
	//入参
	private  String     pkid;
	
	//出参
	private V2CstpCsnDto v2CstpCsnDto;

	
	public String execute() throws Exception {
		try {
		    V2CstpCsnDto paramV2CstpCsnDto = new V2CstpCsnDto();
		//设置主键
			v2CstpCsnDto = v2CstpCsnService.getRow(paramV2CstpCsnDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2CstpCsnDto getV2CstpCsnDto() {
		return v2CstpCsnDto;
	}

	public final void setStudentDto(V2CstpCsnDto v2CstpCsnDto) {
		this.v2CstpCsnDto = v2CstpCsnDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
