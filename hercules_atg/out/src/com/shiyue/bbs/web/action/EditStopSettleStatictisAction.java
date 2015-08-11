package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.StopSettleStatictisDto;
import com.shiyue.bbs.service.IStopSettleStatictisService;

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
 
@Controller("editStopSettleStatictisAction")
@Scope("prototype")
public class EditStopSettleStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IStopSettleStatictisService stopSettleStatictisService;
	private StopSettleStatictisDto stopSettleStatictisDto =new StopSettleStatictisDto();;

	public String execute() throws Exception {
		try {
		    
		      StopSettleStatictisDto tmpStopSettleStatictisDto = new StopSettleStatictisDto();
			  tmpStopSettleStatictisDto.setId(stopSettleStatictisDto.getId());
			  tmpStopSettleStatictisDto.setMer_sys_id(stopSettleStatictisDto.getMer_sys_id());
			  tmpStopSettleStatictisDto.setSub_mer_id(stopSettleStatictisDto.getSub_mer_id());
			  tmpStopSettleStatictisDto.setMer_amt(stopSettleStatictisDto.getMer_amt());
			  tmpStopSettleStatictisDto.setTrans_fee(stopSettleStatictisDto.getTrans_fee());
			  tmpStopSettleStatictisDto.setClear_amt(stopSettleStatictisDto.getClear_amt());
			  tmpStopSettleStatictisDto.setSettle_date(stopSettleStatictisDto.getSettle_date());
			  tmpStopSettleStatictisDto.setReserved1(stopSettleStatictisDto.getReserved1());
			  tmpStopSettleStatictisDto.setReserved2(stopSettleStatictisDto.getReserved2());
			  tmpStopSettleStatictisDto.setReserved3(stopSettleStatictisDto.getReserved3());
			  tmpStopSettleStatictisDto.setAccount_num(stopSettleStatictisDto.getAccount_num());
			  tmpStopSettleStatictisDto.setAccount_name(stopSettleStatictisDto.getAccount_name());
			  tmpStopSettleStatictisDto.setAccount_agency_id(stopSettleStatictisDto.getAccount_agency_id());
			  tmpStopSettleStatictisDto.setReserved4(stopSettleStatictisDto.getReserved4());
			  tmpStopSettleStatictisDto.setReserved5(stopSettleStatictisDto.getReserved5());
			  tmpStopSettleStatictisDto.setMer_name(stopSettleStatictisDto.getMer_name());
			  tmpStopSettleStatictisDto.setMss_id(stopSettleStatictisDto.getMss_id());
		
			stopSettleStatictisService.updatePK(stopSettleStatictisDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final StopSettleStatictisDto getStopSettleStatictisDto() {
		return stopSettleStatictisDto;
	}

	public final void setStudentDto(StopSettleStatictisDto stopSettleStatictisDto) {
		this.stopSettleStatictisDto = stopSettleStatictisDto;
	}

}
