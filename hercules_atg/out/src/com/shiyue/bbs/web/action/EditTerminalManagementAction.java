package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.TerminalManagementDto;
import com.shiyue.bbs.service.ITerminalManagementService;

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
 
@Controller("editTerminalManagementAction")
@Scope("prototype")
public class EditTerminalManagementAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITerminalManagementService terminalManagementService;
	private TerminalManagementDto terminalManagementDto =new TerminalManagementDto();;

	public String execute() throws Exception {
		try {
		    
		      TerminalManagementDto tmpTerminalManagementDto = new TerminalManagementDto();
			  tmpTerminalManagementDto.setId(terminalManagementDto.getId());
			  tmpTerminalManagementDto.setMerchant_no(terminalManagementDto.getMerchant_no());
			  tmpTerminalManagementDto.setTerminal_no(terminalManagementDto.getTerminal_no());
			  tmpTerminalManagementDto.setTmk(terminalManagementDto.getTmk());
			  tmpTerminalManagementDto.setChannel_type(terminalManagementDto.getChannel_type());
			  tmpTerminalManagementDto.setTmk_local(terminalManagementDto.getTmk_local());
			  tmpTerminalManagementDto.setPin_key(terminalManagementDto.getPin_key());
			  tmpTerminalManagementDto.setMac_key(terminalManagementDto.getMac_key());
			  tmpTerminalManagementDto.setTrack_key(terminalManagementDto.getTrack_key());
			  tmpTerminalManagementDto.setLot_no(terminalManagementDto.getLot_no());
			  tmpTerminalManagementDto.setCreate_date(terminalManagementDto.getCreate_date());
			  tmpTerminalManagementDto.setCreate_time(terminalManagementDto.getCreate_time());
			  tmpTerminalManagementDto.setNetwork_no(terminalManagementDto.getNetwork_no());
			  tmpTerminalManagementDto.setExt(terminalManagementDto.getExt());
			  tmpTerminalManagementDto.setExt1(terminalManagementDto.getExt1());
		
			terminalManagementService.updatePK(terminalManagementDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final TerminalManagementDto getTerminalManagementDto() {
		return terminalManagementDto;
	}

	public final void setStudentDto(TerminalManagementDto terminalManagementDto) {
		this.terminalManagementDto = terminalManagementDto;
	}

}
