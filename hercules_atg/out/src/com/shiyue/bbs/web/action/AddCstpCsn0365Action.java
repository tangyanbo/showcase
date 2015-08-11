package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0365Dto;
import com.shiyue.bbs.service.ICstpCsn0365Service;

 /**
 * 类功能:自动代码生成模板新增   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("addCstpCsn0365Action")
@Scope("prototype")
public class AddCstpCsn0365Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0365Service cstpCsn0365Service;
	private CstpCsn0365Dto cstpCsn0365Dto= new CstpCsn0365Dto();

	public String execute() throws Exception {
		try {
			cstpCsn0365Service.save(cstpCsn0365Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0365Dto getCstpCsn0365Dto() {
		return cstpCsn0365Dto;
	}

	public final void setStudentDto(CstpCsn0365Dto cstpCsn0365Dto) {
		this.cstpCsn0365Dto = cstpCsn0365Dto;
	}

}
