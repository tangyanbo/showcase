package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SucOrderInfoV2Dto;
import com.shiyue.bbs.service.ISucOrderInfoV2Service;

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
 
@Controller("editSucOrderInfoV2Page")
@Scope("prototype")
public class EditSucOrderInfoV2Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISucOrderInfoV2Service sucOrderInfoV2Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private SucOrderInfoV2Dto sucOrderInfoV2Dto;

	
	public String execute() throws Exception {
		try {
		    SucOrderInfoV2Dto paramSucOrderInfoV2Dto = new SucOrderInfoV2Dto();
		//设置主键
			paramSucOrderInfoV2Dto.setOrder_id(pkid);
			sucOrderInfoV2Dto = sucOrderInfoV2Service.getRow(paramSucOrderInfoV2Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SucOrderInfoV2Dto getSucOrderInfoV2Dto() {
		return sucOrderInfoV2Dto;
	}

	public final void setStudentDto(SucOrderInfoV2Dto sucOrderInfoV2Dto) {
		this.sucOrderInfoV2Dto = sucOrderInfoV2Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
