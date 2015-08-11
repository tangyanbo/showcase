package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BusTypeDto;
import com.shiyue.bbs.service.IBusTypeService;

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
 
@Controller("editBusTypePage")
@Scope("prototype")
public class EditBusTypePage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBusTypeService busTypeService;
	
	//入参
	private  String     pkid;
	
	//出参
	private BusTypeDto busTypeDto;

	
	public String execute() throws Exception {
		try {
		    BusTypeDto paramBusTypeDto = new BusTypeDto();
		//设置主键
			paramBusTypeDto.setBus_id(pkid);
			busTypeDto = busTypeService.getRow(paramBusTypeDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BusTypeDto getBusTypeDto() {
		return busTypeDto;
	}

	public final void setStudentDto(BusTypeDto busTypeDto) {
		this.busTypeDto = busTypeDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
