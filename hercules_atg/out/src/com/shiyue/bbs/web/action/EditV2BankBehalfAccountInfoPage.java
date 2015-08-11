package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2BankBehalfAccountInfoDto;
import com.shiyue.bbs.service.IV2BankBehalfAccountInfoService;

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
 
@Controller("editV2BankBehalfAccountInfoPage")
@Scope("prototype")
public class EditV2BankBehalfAccountInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfAccountInfoService v2BankBehalfAccountInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private V2BankBehalfAccountInfoDto v2BankBehalfAccountInfoDto;

	
	public String execute() throws Exception {
		try {
		    V2BankBehalfAccountInfoDto paramV2BankBehalfAccountInfoDto = new V2BankBehalfAccountInfoDto();
		//设置主键
			paramV2BankBehalfAccountInfoDto.setBankid(pkid);
			v2BankBehalfAccountInfoDto = v2BankBehalfAccountInfoService.getRow(paramV2BankBehalfAccountInfoDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2BankBehalfAccountInfoDto getV2BankBehalfAccountInfoDto() {
		return v2BankBehalfAccountInfoDto;
	}

	public final void setStudentDto(V2BankBehalfAccountInfoDto v2BankBehalfAccountInfoDto) {
		this.v2BankBehalfAccountInfoDto = v2BankBehalfAccountInfoDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
