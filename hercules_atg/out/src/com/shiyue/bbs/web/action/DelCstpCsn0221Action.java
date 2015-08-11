package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0221Dto;
import com.shiyue.bbs.service.ICstpCsn0221Service;

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
 
@Controller("delCstpCsn0221Action")
@Scope("prototype")
public class DelCstpCsn0221Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0221Service cstpCsn0221Service;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			CstpCsn0221Dto paramCstpCsn0221Dto = new CstpCsn0221Dto();
			
		//设置主键
			paramCstpCsn0221Dto.setCc_id(pkid);
			cstpCsn0221Service.deletePK(paramCstpCsn0221Dto);
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
