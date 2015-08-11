package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfo1029Dto;
import com.shiyue.bbs.service.IPayInfo1029Service;

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
 
@Controller("addPayInfo1029Action")
@Scope("prototype")
public class AddPayInfo1029Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfo1029Service payInfo1029Service;
	private PayInfo1029Dto payInfo1029Dto= new PayInfo1029Dto();

	public String execute() throws Exception {
		try {
			payInfo1029Service.save(payInfo1029Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfo1029Dto getPayInfo1029Dto() {
		return payInfo1029Dto;
	}

	public final void setStudentDto(PayInfo1029Dto payInfo1029Dto) {
		this.payInfo1029Dto = payInfo1029Dto;
	}

}
