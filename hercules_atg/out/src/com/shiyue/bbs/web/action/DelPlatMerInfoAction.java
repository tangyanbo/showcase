package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PlatMerInfoDto;
import com.shiyue.bbs.service.IPlatMerInfoService;

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
 
@Controller("delPlatMerInfoAction")
@Scope("prototype")
public class DelPlatMerInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPlatMerInfoService platMerInfoService;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			PlatMerInfoDto paramPlatMerInfoDto = new PlatMerInfoDto();
			
		//设置主键
			paramPlatMerInfoDto.setPlat_mer_id(pkid);
			platMerInfoService.deletePK(paramPlatMerInfoDto);
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
