package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV21102Dto;
import com.shiyue.bbs.service.IFaiOrderInfoV21102Service;

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
 
@Controller("delFaiOrderInfoV21102Action")
@Scope("prototype")
public class DelFaiOrderInfoV21102Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV21102Service faiOrderInfoV21102Service;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			FaiOrderInfoV21102Dto paramFaiOrderInfoV21102Dto = new FaiOrderInfoV21102Dto();
			
		//设置主键
			faiOrderInfoV21102Service.deletePK(paramFaiOrderInfoV21102Dto);
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
