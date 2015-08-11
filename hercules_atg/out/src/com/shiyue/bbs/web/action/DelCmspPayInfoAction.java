package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CmspPayInfoDto;
import com.shiyue.bbs.service.ICmspPayInfoService;

 /**
 * 类功能:自动代码生成模板删除   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("delCmspPayInfoAction")
@Scope("prototype")
public class DelCmspPayInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICmspPayInfoService cmspPayInfoService;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			CmspPayInfoDto paramCmspPayInfoDto = new CmspPayInfoDto();
			
		//设置主键
			paramCmspPayInfoDto.setOrder_id(pkid);
			cmspPayInfoService.deletePK(paramCmspPayInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ERROR;
	}


	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
