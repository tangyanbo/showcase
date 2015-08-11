package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CardBin1103Dto;
import com.shiyue.bbs.service.ICardBin1103Service;

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
 
@Controller("delCardBin1103Action")
@Scope("prototype")
public class DelCardBin1103Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICardBin1103Service cardBin1103Service;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			CardBin1103Dto paramCardBin1103Dto = new CardBin1103Dto();
			
		//设置主键
			paramCardBin1103Dto.setId(pkid);
			cardBin1103Service.deletePK(paramCardBin1103Dto);
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
