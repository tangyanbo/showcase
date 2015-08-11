package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0331Dto;
import com.shiyue.bbs.service.ICstpCsn0331Service;

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
 
@Controller("detailCstpCsn0331Page")
@Scope("prototype")
public class DetailCstpCsn0331Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0331Service cstpCsn0331Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private CstpCsn0331Dto cstpCsn0331Dto;

	
	public String execute() throws Exception {
		try {
		    CstpCsn0331Dto paramCstpCsn0331Dto = new CstpCsn0331Dto();
		//设置主键
			paramCstpCsn0331Dto.setCc_id(pkid);
			cstpCsn0331Dto = cstpCsn0331Service.getRow(paramCstpCsn0331Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0331Dto getCstpCsn0331Dto() {
		return cstpCsn0331Dto;
	}

	public final void setStudentDto(CstpCsn0331Dto cstpCsn0331Dto) {
		this.cstpCsn0331Dto = cstpCsn0331Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
