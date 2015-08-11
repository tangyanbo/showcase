package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0358Dto;
import com.shiyue.bbs.service.ICstpCsn0358Service;

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
 
@Controller("detailCstpCsn0358Page")
@Scope("prototype")
public class DetailCstpCsn0358Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0358Service cstpCsn0358Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private CstpCsn0358Dto cstpCsn0358Dto;

	
	public String execute() throws Exception {
		try {
		    CstpCsn0358Dto paramCstpCsn0358Dto = new CstpCsn0358Dto();
		//设置主键
			paramCstpCsn0358Dto.setCc_id(pkid);
			cstpCsn0358Dto = cstpCsn0358Service.getRow(paramCstpCsn0358Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0358Dto getCstpCsn0358Dto() {
		return cstpCsn0358Dto;
	}

	public final void setStudentDto(CstpCsn0358Dto cstpCsn0358Dto) {
		this.cstpCsn0358Dto = cstpCsn0358Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
