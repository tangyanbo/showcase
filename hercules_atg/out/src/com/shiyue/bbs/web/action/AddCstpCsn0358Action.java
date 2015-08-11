package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0358Dto;
import com.shiyue.bbs.service.ICstpCsn0358Service;

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
 
@Controller("addCstpCsn0358Action")
@Scope("prototype")
public class AddCstpCsn0358Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0358Service cstpCsn0358Service;
	private CstpCsn0358Dto cstpCsn0358Dto= new CstpCsn0358Dto();

	public String execute() throws Exception {
		try {
			cstpCsn0358Service.save(cstpCsn0358Dto);
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

}
