package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV2Dto;
import com.shiyue.bbs.service.IFaiOrderInfoV2Service;

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
 
@Controller("detailFaiOrderInfoV2Page")
@Scope("prototype")
public class DetailFaiOrderInfoV2Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV2Service faiOrderInfoV2Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private FaiOrderInfoV2Dto faiOrderInfoV2Dto;

	
	public String execute() throws Exception {
		try {
		    FaiOrderInfoV2Dto paramFaiOrderInfoV2Dto = new FaiOrderInfoV2Dto();
		//设置主键
			faiOrderInfoV2Dto = faiOrderInfoV2Service.getRow(paramFaiOrderInfoV2Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiOrderInfoV2Dto getFaiOrderInfoV2Dto() {
		return faiOrderInfoV2Dto;
	}

	public final void setStudentDto(FaiOrderInfoV2Dto faiOrderInfoV2Dto) {
		this.faiOrderInfoV2Dto = faiOrderInfoV2Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
