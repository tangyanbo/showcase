package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0013Dto;
import com.shiyue.bbs.service.ICstpCsn0013Service;

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
 
@Controller("editCstpCsn0013Page")
@Scope("prototype")
public class EditCstpCsn0013Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0013Service cstpCsn0013Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private CstpCsn0013Dto cstpCsn0013Dto;

	
	public String execute() throws Exception {
		try {
		    CstpCsn0013Dto paramCstpCsn0013Dto = new CstpCsn0013Dto();
		//设置主键
			paramCstpCsn0013Dto.setCc_id(pkid);
			cstpCsn0013Dto = cstpCsn0013Service.getRow(paramCstpCsn0013Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0013Dto getCstpCsn0013Dto() {
		return cstpCsn0013Dto;
	}

	public final void setStudentDto(CstpCsn0013Dto cstpCsn0013Dto) {
		this.cstpCsn0013Dto = cstpCsn0013Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
