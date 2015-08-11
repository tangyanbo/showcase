package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerRiskDto;
import com.shiyue.bbs.service.IMerRiskService;

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
 
@Controller("editMerRiskAction")
@Scope("prototype")
public class EditMerRiskAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerRiskService merRiskService;
	private MerRiskDto merRiskDto =new MerRiskDto();;

	public String execute() throws Exception {
		try {
		    
		      MerRiskDto tmpMerRiskDto = new MerRiskDto();
			  tmpMerRiskDto.setMid(merRiskDto.getMid());
			  tmpMerRiskDto.setMer_type(merRiskDto.getMer_type());
			  tmpMerRiskDto.setMer_sys_id(merRiskDto.getMer_sys_id());
			  tmpMerRiskDto.setSub_mer_name(merRiskDto.getSub_mer_name());
			  tmpMerRiskDto.setDebit_per_card_quota(merRiskDto.getDebit_per_card_quota());
			  tmpMerRiskDto.setDebit_card_quota(merRiskDto.getDebit_card_quota());
			  tmpMerRiskDto.setDebit_card_count(merRiskDto.getDebit_card_count());
			  tmpMerRiskDto.setCredit_per_card_quota(merRiskDto.getCredit_per_card_quota());
			  tmpMerRiskDto.setCredit_card_quota(merRiskDto.getCredit_card_quota());
			  tmpMerRiskDto.setCredit_card_count(merRiskDto.getCredit_card_count());
			  tmpMerRiskDto.setTerminal_card_quota(merRiskDto.getTerminal_card_quota());
			  tmpMerRiskDto.setTransfer_per_card_quota(merRiskDto.getTransfer_per_card_quota());
			  tmpMerRiskDto.setTransfer_card_quota(merRiskDto.getTransfer_card_quota());
			  tmpMerRiskDto.setTransfer_card_count(merRiskDto.getTransfer_card_count());
			  tmpMerRiskDto.setTerminal_transfer_card_quota(merRiskDto.getTerminal_transfer_card_quota());
			  tmpMerRiskDto.setPay_credit_per_card_quota(merRiskDto.getPay_credit_per_card_quota());
			  tmpMerRiskDto.setPay_credit_card_quota(merRiskDto.getPay_credit_card_quota());
			  tmpMerRiskDto.setPay_credit_card_count(merRiskDto.getPay_credit_card_count());
			  tmpMerRiskDto.setTrans_time_begin(merRiskDto.getTrans_time_begin());
			  tmpMerRiskDto.setTrans_time_end(merRiskDto.getTrans_time_end());
			  tmpMerRiskDto.setTrans_rules(merRiskDto.getTrans_rules());
			  tmpMerRiskDto.setQuery_credit_card_count(merRiskDto.getQuery_credit_card_count());
			  tmpMerRiskDto.setQuery_debit_card_count(merRiskDto.getQuery_debit_card_count());
			  tmpMerRiskDto.setMer_trans_quota(merRiskDto.getMer_trans_quota());
		
			merRiskService.updatePK(merRiskDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerRiskDto getMerRiskDto() {
		return merRiskDto;
	}

	public final void setStudentDto(MerRiskDto merRiskDto) {
		this.merRiskDto = merRiskDto;
	}

}
