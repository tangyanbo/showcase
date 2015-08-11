package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpTerminalDto;
import com.shiyue.bbs.service.ICstpTerminalService;

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
 
@Controller("delCstpTerminalAction")
@Scope("prototype")
public class DelCstpTerminalAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpTerminalService cstpTerminalService;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			CstpTerminalDto paramCstpTerminalDto = new CstpTerminalDto();
			
		//设置主键
			paramCstpTerminalDto.setCt_id(pkid);
			cstpTerminalService.deletePK(paramCstpTerminalDto);
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
