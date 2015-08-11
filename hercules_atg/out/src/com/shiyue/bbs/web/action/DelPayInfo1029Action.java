package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfo1029Dto;
import com.shiyue.bbs.service.IPayInfo1029Service;

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
 
@Controller("delPayInfo1029Action")
@Scope("prototype")
public class DelPayInfo1029Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfo1029Service payInfo1029Service;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			PayInfo1029Dto paramPayInfo1029Dto = new PayInfo1029Dto();
			
		//设置主键
			paramPayInfo1029Dto.setOrder_id(pkid);
			payInfo1029Service.deletePK(paramPayInfo1029Dto);
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
