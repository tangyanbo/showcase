package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiPayInfo2newDto;
import com.shiyue.bbs.service.IFaiPayInfo2newService;

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
 
@Controller("detailFaiPayInfo2newPage")
@Scope("prototype")
public class DetailFaiPayInfo2newPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiPayInfo2newService faiPayInfo2newService;
	
	//入参
	private  String     pkid;
	
	//出参
	private FaiPayInfo2newDto faiPayInfo2newDto;

	
	public String execute() throws Exception {
		try {
		    FaiPayInfo2newDto paramFaiPayInfo2newDto = new FaiPayInfo2newDto();
		//设置主键
			paramFaiPayInfo2newDto.setOrder_id(pkid);
			faiPayInfo2newDto = faiPayInfo2newService.getRow(paramFaiPayInfo2newDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiPayInfo2newDto getFaiPayInfo2newDto() {
		return faiPayInfo2newDto;
	}

	public final void setStudentDto(FaiPayInfo2newDto faiPayInfo2newDto) {
		this.faiPayInfo2newDto = faiPayInfo2newDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
