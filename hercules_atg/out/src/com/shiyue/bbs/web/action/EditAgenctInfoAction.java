package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AgenctInfoDto;
import com.shiyue.bbs.service.IAgenctInfoService;

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
 
@Controller("editAgenctInfoAction")
@Scope("prototype")
public class EditAgenctInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgenctInfoService agenctInfoService;
	private AgenctInfoDto agenctInfoDto =new AgenctInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      AgenctInfoDto tmpAgenctInfoDto = new AgenctInfoDto();
			  tmpAgenctInfoDto.setAgent_id(agenctInfoDto.getAgent_id());
			  tmpAgenctInfoDto.setAgent_name(agenctInfoDto.getAgent_name());
			  tmpAgenctInfoDto.setReg_no(agenctInfoDto.getReg_no());
			  tmpAgenctInfoDto.setTax_no(agenctInfoDto.getTax_no());
			  tmpAgenctInfoDto.setReg_addr(agenctInfoDto.getReg_addr());
			  tmpAgenctInfoDto.setRegion(agenctInfoDto.getRegion());
			  tmpAgenctInfoDto.setSett_account_name(agenctInfoDto.getSett_account_name());
			  tmpAgenctInfoDto.setSett_account_no(agenctInfoDto.getSett_account_no());
			  tmpAgenctInfoDto.setSett_agency(agenctInfoDto.getSett_agency());
			  tmpAgenctInfoDto.setSett_acc_type(agenctInfoDto.getSett_acc_type());
			  tmpAgenctInfoDto.setMer_sys_id(agenctInfoDto.getMer_sys_id());
			  tmpAgenctInfoDto.setLevel(agenctInfoDto.getLevel());
			  tmpAgenctInfoDto.setSuper_agent_id(agenctInfoDto.getSuper_agent_id());
			  tmpAgenctInfoDto.setBill_cycle(agenctInfoDto.getBill_cycle());
			  tmpAgenctInfoDto.setTerminal_type(agenctInfoDto.getTerminal_type());
			  tmpAgenctInfoDto.setBus_type(agenctInfoDto.getBus_type());
			  tmpAgenctInfoDto.setStatus(agenctInfoDto.getStatus());
			  tmpAgenctInfoDto.setCreate_time(agenctInfoDto.getCreate_time());
			  tmpAgenctInfoDto.setRemark(agenctInfoDto.getRemark());
			  tmpAgenctInfoDto.setReserved(agenctInfoDto.getReserved());
			  tmpAgenctInfoDto.setLogo(agenctInfoDto.getLogo());
			  tmpAgenctInfoDto.setColor(agenctInfoDto.getColor());
			  tmpAgenctInfoDto.setAgent_rate_1(agenctInfoDto.getAgent_rate_1());
			  tmpAgenctInfoDto.setAgent_highest_fee(agenctInfoDto.getAgent_highest_fee());
			  tmpAgenctInfoDto.setAgent_profit_rate(agenctInfoDto.getAgent_profit_rate());
			  tmpAgenctInfoDto.setAgent_rate_2(agenctInfoDto.getAgent_rate_2());
		
			agenctInfoService.updatePK(agenctInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AgenctInfoDto getAgenctInfoDto() {
		return agenctInfoDto;
	}

	public final void setStudentDto(AgenctInfoDto agenctInfoDto) {
		this.agenctInfoDto = agenctInfoDto;
	}

}
