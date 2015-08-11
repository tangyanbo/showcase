package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerModelDto;
import com.shiyue.bbs.service.IMerModelService;

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
 
@Controller("detailMerModelPage")
@Scope("prototype")
public class DetailMerModelPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerModelService merModelService;
	
	//入参
	private  String     pkid;
	
	//出参
	private MerModelDto merModelDto;

	
	public String execute() throws Exception {
		try {
		    MerModelDto paramMerModelDto = new MerModelDto();
		//设置主键
			paramMerModelDto.setId(pkid);
			merModelDto = merModelService.getRow(paramMerModelDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerModelDto getMerModelDto() {
		return merModelDto;
	}

	public final void setStudentDto(MerModelDto merModelDto) {
		this.merModelDto = merModelDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
