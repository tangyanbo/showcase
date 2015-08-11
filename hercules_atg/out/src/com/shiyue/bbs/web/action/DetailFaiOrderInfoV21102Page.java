package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV21102Dto;
import com.shiyue.bbs.service.IFaiOrderInfoV21102Service;

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
 
@Controller("detailFaiOrderInfoV21102Page")
@Scope("prototype")
public class DetailFaiOrderInfoV21102Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV21102Service faiOrderInfoV21102Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private FaiOrderInfoV21102Dto faiOrderInfoV21102Dto;

	
	public String execute() throws Exception {
		try {
		    FaiOrderInfoV21102Dto paramFaiOrderInfoV21102Dto = new FaiOrderInfoV21102Dto();
		//设置主键
			faiOrderInfoV21102Dto = faiOrderInfoV21102Service.getRow(paramFaiOrderInfoV21102Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiOrderInfoV21102Dto getFaiOrderInfoV21102Dto() {
		return faiOrderInfoV21102Dto;
	}

	public final void setStudentDto(FaiOrderInfoV21102Dto faiOrderInfoV21102Dto) {
		this.faiOrderInfoV21102Dto = faiOrderInfoV21102Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
