package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerTransDto;
import com.shiyue.bbs.service.IMerTransService;

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
 
@Controller("editMerTransAction")
@Scope("prototype")
public class EditMerTransAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerTransService merTransService;
	private MerTransDto merTransDto =new MerTransDto();;

	public String execute() throws Exception {
		try {
		    
		      MerTransDto tmpMerTransDto = new MerTransDto();
			  tmpMerTransDto.setMer_sys_id(merTransDto.getMer_sys_id());
			  tmpMerTransDto.setTrans_key(merTransDto.getTrans_key());
			  tmpMerTransDto.setPublic_key(merTransDto.getPublic_key());
			  tmpMerTransDto.setPrivate_key(merTransDto.getPrivate_key());
			  tmpMerTransDto.setRules(merTransDto.getRules());
			  tmpMerTransDto.setLowest_trans_amt(merTransDto.getLowest_trans_amt());
			  tmpMerTransDto.setTerminal_type(merTransDto.getTerminal_type());
			  tmpMerTransDto.setBus_type(merTransDto.getBus_type());
			  tmpMerTransDto.setAction_list(merTransDto.getAction_list());
			  tmpMerTransDto.setAuto_approve(merTransDto.getAuto_approve());
			  tmpMerTransDto.setAuth_status(merTransDto.getAuth_status());
			  tmpMerTransDto.setT0_status(merTransDto.getT0_status());
			  tmpMerTransDto.setClear_type(merTransDto.getClear_type());
			  tmpMerTransDto.setClear_tract(merTransDto.getClear_tract());
			  tmpMerTransDto.setTrans_notify_status(merTransDto.getTrans_notify_status());
			  tmpMerTransDto.setTrans_notify_url(merTransDto.getTrans_notify_url());
			  tmpMerTransDto.setTrans_notify_action_list(merTransDto.getTrans_notify_action_list());
			  tmpMerTransDto.setBasic_rate(merTransDto.getBasic_rate());
			  tmpMerTransDto.setBasic_rate2(merTransDto.getBasic_rate2());
			  tmpMerTransDto.setBasic_highest_fee(merTransDto.getBasic_highest_fee());
			  tmpMerTransDto.setBasic_per_card_quota(merTransDto.getBasic_per_card_quota());
			  tmpMerTransDto.setBasic_card_quota(merTransDto.getBasic_card_quota());
			  tmpMerTransDto.setBaisc_card_count(merTransDto.getBaisc_card_count());
			  tmpMerTransDto.setBasic_terminal_quota(merTransDto.getBasic_terminal_quota());
			  tmpMerTransDto.setBasic_region(merTransDto.getBasic_region());
			  tmpMerTransDto.setBasic_mcc(merTransDto.getBasic_mcc());
			  tmpMerTransDto.setMer_rate_1(merTransDto.getMer_rate_1());
			  tmpMerTransDto.setMer_rate_2(merTransDto.getMer_rate_2());
			  tmpMerTransDto.setMer_highest_fee(merTransDto.getMer_highest_fee());
			  tmpMerTransDto.setMer_lowest_fee(merTransDto.getMer_lowest_fee());
			  tmpMerTransDto.setMer_profit_rate(merTransDto.getMer_profit_rate());
			  tmpMerTransDto.setMer_tsn(merTransDto.getMer_tsn());
			  tmpMerTransDto.setReserved(merTransDto.getReserved());
			  tmpMerTransDto.setRate_type(merTransDto.getRate_type());
			  tmpMerTransDto.setIs_report(merTransDto.getIs_report());
			  tmpMerTransDto.setIs_app_trans_terminal(merTransDto.getIs_app_trans_terminal());
			  tmpMerTransDto.setT0_rate(merTransDto.getT0_rate());
		
			merTransService.updatePK(merTransDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerTransDto getMerTransDto() {
		return merTransDto;
	}

	public final void setStudentDto(MerTransDto merTransDto) {
		this.merTransDto = merTransDto;
	}

}
