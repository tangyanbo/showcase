package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfo0703Dto;
import com.shiyue.bbs.service.IPayInfo0703Service;

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
 
@Controller("detailPayInfo0703Page")
@Scope("prototype")
public class DetailPayInfo0703Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfo0703Service payInfo0703Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private PayInfo0703Dto payInfo0703Dto;

	
	public String execute() throws Exception {
		try {
		    PayInfo0703Dto paramPayInfo0703Dto = new PayInfo0703Dto();
		//设置主键
			paramPayInfo0703Dto.setOrder_id(pkid);
			payInfo0703Dto = payInfo0703Service.getRow(paramPayInfo0703Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfo0703Dto getPayInfo0703Dto() {
		return payInfo0703Dto;
	}

	public final void setStudentDto(PayInfo0703Dto payInfo0703Dto) {
		this.payInfo0703Dto = payInfo0703Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
