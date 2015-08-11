package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpTerminalDto;
import com.shiyue.bbs.service.ICstpTerminalService;

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
 
@Controller("editCstpTerminalAction")
@Scope("prototype")
public class EditCstpTerminalAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpTerminalService cstpTerminalService;
	private CstpTerminalDto cstpTerminalDto =new CstpTerminalDto();;

	public String execute() throws Exception {
		try {
		    
		      CstpTerminalDto tmpCstpTerminalDto = new CstpTerminalDto();
			  tmpCstpTerminalDto.setCt_id(cstpTerminalDto.getCt_id());
			  tmpCstpTerminalDto.setMerchant_id(cstpTerminalDto.getMerchant_id());
			  tmpCstpTerminalDto.setTerminal_id(cstpTerminalDto.getTerminal_id());
			  tmpCstpTerminalDto.setCreate_time(cstpTerminalDto.getCreate_time());
			  tmpCstpTerminalDto.setSign_in_date(cstpTerminalDto.getSign_in_date());
			  tmpCstpTerminalDto.setMac_key(cstpTerminalDto.getMac_key());
			  tmpCstpTerminalDto.setPin_key(cstpTerminalDto.getPin_key());
		
			cstpTerminalService.updatePK(cstpTerminalDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpTerminalDto getCstpTerminalDto() {
		return cstpTerminalDto;
	}

	public final void setStudentDto(CstpTerminalDto cstpTerminalDto) {
		this.cstpTerminalDto = cstpTerminalDto;
	}

}
