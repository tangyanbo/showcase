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
 
@Controller("editBusTypeAction")
@Scope("prototype")
public class EditBusTypeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBusTypeService busTypeService;
	private BusTypeDto busTypeDto =new BusTypeDto();;

	public String execute() throws Exception {
		try {
		    
		      BusTypeDto tmpBusTypeDto = new BusTypeDto();
			  tmpBusTypeDto.setBus_id(busTypeDto.getBus_id());
			  tmpBusTypeDto.setBus_name(busTypeDto.getBus_name());
			  tmpBusTypeDto.setBus_desc(busTypeDto.getBus_desc());
			  tmpBusTypeDto.setStatus(busTypeDto.getStatus());
			  tmpBusTypeDto.setRemark(busTypeDto.getRemark());
			  tmpBusTypeDto.setType(busTypeDto.getType());
		
			busTypeService.updatePK(busTypeDto);
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

}
