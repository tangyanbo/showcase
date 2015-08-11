package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerSettleStatictisDto;
import com.shiyue.bbs.service.IMerSettleStatictisService;

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
 
@Controller("editMerSettleStatictisAction")
@Scope("prototype")
public class EditMerSettleStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerSettleStatictisService merSettleStatictisService;
	private MerSettleStatictisDto merSettleStatictisDto =new MerSettleStatictisDto();;

	public String execute() throws Exception {
		try {
		    
		      MerSettleStatictisDto tmpMerSettleStatictisDto = new MerSettleStatictisDto();
			  tmpMerSettleStatictisDto.setId(merSettleStatictisDto.getId());
			  tmpMerSettleStatictisDto.setMid(merSettleStatictisDto.getMid());
			  tmpMerSettleStatictisDto.setMer_type(merSettleStatictisDto.getMer_type());
			  tmpMerSettleStatictisDto.setMer_sys_id(merSettleStatictisDto.getMer_sys_id());
			  tmpMerSettleStatictisDto.setMer_name(merSettleStatictisDto.getMer_name());
			  tmpMerSettleStatictisDto.setAccount_num(merSettleStatictisDto.getAccount_num());
			  tmpMerSettleStatictisDto.setAccount_name(merSettleStatictisDto.getAccount_name());
			  tmpMerSettleStatictisDto.setAccount_agency_id(merSettleStatictisDto.getAccount_agency_id());
			  tmpMerSettleStatictisDto.setSettle_date(merSettleStatictisDto.getSettle_date());
			  tmpMerSettleStatictisDto.setSum_amt(merSettleStatictisDto.getSum_amt());
			  tmpMerSettleStatictisDto.setSum_trans_fee(merSettleStatictisDto.getSum_trans_fee());
			  tmpMerSettleStatictisDto.setClear_amt(merSettleStatictisDto.getClear_amt());
			  tmpMerSettleStatictisDto.setCreate_date(merSettleStatictisDto.getCreate_date());
			  tmpMerSettleStatictisDto.setCreate_time(merSettleStatictisDto.getCreate_time());
			  tmpMerSettleStatictisDto.setClear_status(merSettleStatictisDto.getClear_status());
			  tmpMerSettleStatictisDto.setClear_order_id(merSettleStatictisDto.getClear_order_id());
			  tmpMerSettleStatictisDto.setFaile_amt(merSettleStatictisDto.getFaile_amt());
			  tmpMerSettleStatictisDto.setBp_serial_number(merSettleStatictisDto.getBp_serial_number());
			  tmpMerSettleStatictisDto.setCount_fee(merSettleStatictisDto.getCount_fee());
			  tmpMerSettleStatictisDto.setClear_desc(merSettleStatictisDto.getClear_desc());
			  tmpMerSettleStatictisDto.setReserved(merSettleStatictisDto.getReserved());
			  tmpMerSettleStatictisDto.setStop_clear_amt(merSettleStatictisDto.getStop_clear_amt());
		
			merSettleStatictisService.updatePK(merSettleStatictisDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerSettleStatictisDto getMerSettleStatictisDto() {
		return merSettleStatictisDto;
	}

	public final void setStudentDto(MerSettleStatictisDto merSettleStatictisDto) {
		this.merSettleStatictisDto = merSettleStatictisDto;
	}

}
