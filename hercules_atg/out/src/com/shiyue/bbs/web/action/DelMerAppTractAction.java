package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerAppTractDto;
import com.shiyue.bbs.service.IMerAppTractService;

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
 
@Controller("delMerAppTractAction")
@Scope("prototype")
public class DelMerAppTractAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerAppTractService merAppTractService;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			MerAppTractDto paramMerAppTractDto = new MerAppTractDto();
			
		//设置主键
			paramMerAppTractDto.setId(pkid);
			merAppTractService.deletePK(paramMerAppTractDto);
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
