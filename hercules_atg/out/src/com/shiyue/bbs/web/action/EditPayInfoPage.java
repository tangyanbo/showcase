package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfoDto;
import com.shiyue.bbs.service.IPayInfoService;

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
 
@Controller("editPayInfoPage")
@Scope("prototype")
public class EditPayInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfoService payInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private PayInfoDto payInfoDto;

	
	public String execute() throws Exception {
		try {
		    PayInfoDto paramPayInfoDto = new PayInfoDto();
		//设置主键
			paramPayInfoDto.setOrder_id(pkid);
			payInfoDto = payInfoService.getRow(paramPayInfoDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfoDto getPayInfoDto() {
		return payInfoDto;
	}

	public final void setStudentDto(PayInfoDto payInfoDto) {
		this.payInfoDto = payInfoDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
