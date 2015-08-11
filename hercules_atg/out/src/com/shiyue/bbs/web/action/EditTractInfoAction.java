package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.TractInfoDto;
import com.shiyue.bbs.service.ITractInfoService;

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
 
@Controller("editTractInfoAction")
@Scope("prototype")
public class EditTractInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITractInfoService tractInfoService;
	private TractInfoDto tractInfoDto =new TractInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      TractInfoDto tmpTractInfoDto = new TractInfoDto();
			  tmpTractInfoDto.setTract_id(tractInfoDto.getTract_id());
			  tmpTractInfoDto.setTract_name(tractInfoDto.getTract_name());
			  tmpTractInfoDto.setTrans_mer_id(tractInfoDto.getTrans_mer_id());
			  tmpTractInfoDto.setTract_agency(tractInfoDto.getTract_agency());
			  tmpTractInfoDto.setRates_type(tractInfoDto.getRates_type());
			  tmpTractInfoDto.setAcq_agency_id(tractInfoDto.getAcq_agency_id());
			  tmpTractInfoDto.setAcq_agency_name(tractInfoDto.getAcq_agency_name());
			  tmpTractInfoDto.setPay_tract(tractInfoDto.getPay_tract());
			  tmpTractInfoDto.setTract_rate(tractInfoDto.getTract_rate());
			  tmpTractInfoDto.setTract_highest_fee(tractInfoDto.getTract_highest_fee());
			  tmpTractInfoDto.setCredit_rate_cost(tractInfoDto.getCredit_rate_cost());
			  tmpTractInfoDto.setDebit_rate_cost(tractInfoDto.getDebit_rate_cost());
			  tmpTractInfoDto.setCredit_highest_cost(tractInfoDto.getCredit_highest_cost());
			  tmpTractInfoDto.setDebit_highest_cost(tractInfoDto.getDebit_highest_cost());
			  tmpTractInfoDto.setLowest_cost(tractInfoDto.getLowest_cost());
			  tmpTractInfoDto.setBypay_profit(tractInfoDto.getBypay_profit());
			  tmpTractInfoDto.setStatus(tractInfoDto.getStatus());
			  tmpTractInfoDto.setCreate_time(tractInfoDto.getCreate_time());
			  tmpTractInfoDto.setPer_card_quota(tractInfoDto.getPer_card_quota());
			  tmpTractInfoDto.setCard_quota(tractInfoDto.getCard_quota());
			  tmpTractInfoDto.setCard_count(tractInfoDto.getCard_count());
			  tmpTractInfoDto.setRemark(tractInfoDto.getRemark());
			  tmpTractInfoDto.setReserved(tractInfoDto.getReserved());
			  tmpTractInfoDto.setTrans_time_begin(tractInfoDto.getTrans_time_begin());
			  tmpTractInfoDto.setTrans_time_end(tractInfoDto.getTrans_time_end());
			  tmpTractInfoDto.setMcc(tractInfoDto.getMcc());
			  tmpTractInfoDto.setNight_flag(tractInfoDto.getNight_flag());
			  tmpTractInfoDto.setIntegral(tractInfoDto.getIntegral());
			  tmpTractInfoDto.setTract_quota(tractInfoDto.getTract_quota());
			  tmpTractInfoDto.setTract_flag(tractInfoDto.getTract_flag());
			  tmpTractInfoDto.setTerminal_id(tractInfoDto.getTerminal_id());
			  tmpTractInfoDto.setSpid(tractInfoDto.getSpid());
			  tmpTractInfoDto.setCard_flag(tractInfoDto.getCard_flag());
			  tmpTractInfoDto.setTract_num(tractInfoDto.getTract_num());
		
			tractInfoService.updatePK(tractInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final TractInfoDto getTractInfoDto() {
		return tractInfoDto;
	}

	public final void setStudentDto(TractInfoDto tractInfoDto) {
		this.tractInfoDto = tractInfoDto;
	}

}
