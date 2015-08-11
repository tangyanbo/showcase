package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfo0708Dto;
import com.shiyue.bbs.service.IPayInfo0708Service;

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
 
@Controller("detailPayInfo0708Page")
@Scope("prototype")
public class DetailPayInfo0708Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfo0708Service payInfo0708Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private PayInfo0708Dto payInfo0708Dto;

	
	public String execute() throws Exception {
		try {
		    PayInfo0708Dto paramPayInfo0708Dto = new PayInfo0708Dto();
		//设置主键
			paramPayInfo0708Dto.setOrder_id(pkid);
			payInfo0708Dto = payInfo0708Service.getRow(paramPayInfo0708Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfo0708Dto getPayInfo0708Dto() {
		return payInfo0708Dto;
	}

	public final void setStudentDto(PayInfo0708Dto payInfo0708Dto) {
		this.payInfo0708Dto = payInfo0708Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
