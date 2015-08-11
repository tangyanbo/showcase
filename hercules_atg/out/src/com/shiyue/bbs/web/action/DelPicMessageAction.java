package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PicMessageDto;
import com.shiyue.bbs.service.IPicMessageService;

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
 
@Controller("delPicMessageAction")
@Scope("prototype")
public class DelPicMessageAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPicMessageService picMessageService;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			PicMessageDto paramPicMessageDto = new PicMessageDto();
			
		//设置主键
			picMessageService.deletePK(paramPicMessageDto);
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
