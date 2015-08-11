package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2OrderInfoDto;
import com.shiyue.bbs.service.IV2OrderInfoService;

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
 
@Controller("delV2OrderInfoAction")
@Scope("prototype")
public class DelV2OrderInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2OrderInfoService v2OrderInfoService;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			V2OrderInfoDto paramV2OrderInfoDto = new V2OrderInfoDto();
			
		//设置主键
			v2OrderInfoService.deletePK(paramV2OrderInfoDto);
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
