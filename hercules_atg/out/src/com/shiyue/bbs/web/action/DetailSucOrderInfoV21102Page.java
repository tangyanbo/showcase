package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SucOrderInfoV21102Dto;
import com.shiyue.bbs.service.ISucOrderInfoV21102Service;

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
 
@Controller("detailSucOrderInfoV21102Page")
@Scope("prototype")
public class DetailSucOrderInfoV21102Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISucOrderInfoV21102Service sucOrderInfoV21102Service;
	
	//入参
	private  String     pkid;
	
	//出参
	private SucOrderInfoV21102Dto sucOrderInfoV21102Dto;

	
	public String execute() throws Exception {
		try {
		    SucOrderInfoV21102Dto paramSucOrderInfoV21102Dto = new SucOrderInfoV21102Dto();
		//设置主键
			sucOrderInfoV21102Dto = sucOrderInfoV21102Service.getRow(paramSucOrderInfoV21102Dto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SucOrderInfoV21102Dto getSucOrderInfoV21102Dto() {
		return sucOrderInfoV21102Dto;
	}

	public final void setStudentDto(SucOrderInfoV21102Dto sucOrderInfoV21102Dto) {
		this.sucOrderInfoV21102Dto = sucOrderInfoV21102Dto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
