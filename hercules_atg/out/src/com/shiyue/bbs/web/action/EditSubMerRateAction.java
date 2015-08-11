package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerRateDto;
import com.shiyue.bbs.service.ISubMerRateService;

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
 
@Controller("editSubMerRateAction")
@Scope("prototype")
public class EditSubMerRateAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerRateService subMerRateService;
	private SubMerRateDto subMerRateDto =new SubMerRateDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerRateDto tmpSubMerRateDto = new SubMerRateDto();
			  tmpSubMerRateDto.setSub_mer_id(subMerRateDto.getSub_mer_id());
			  tmpSubMerRateDto.setRate_type(subMerRateDto.getRate_type());
			  tmpSubMerRateDto.setTrans_rate(subMerRateDto.getTrans_rate());
			  tmpSubMerRateDto.setTrans_rate_h(subMerRateDto.getTrans_rate_h());
			  tmpSubMerRateDto.setTrans_highest_fee(subMerRateDto.getTrans_highest_fee());
			  tmpSubMerRateDto.setLowest_fee(subMerRateDto.getLowest_fee());
			  tmpSubMerRateDto.setAgent_l1_rate(subMerRateDto.getAgent_l1_rate());
			  tmpSubMerRateDto.setAgent_l1_rate_h(subMerRateDto.getAgent_l1_rate_h());
			  tmpSubMerRateDto.setAgent_l1_highest_fee(subMerRateDto.getAgent_l1_highest_fee());
			  tmpSubMerRateDto.setAgent_l1_profit_rate(subMerRateDto.getAgent_l1_profit_rate());
			  tmpSubMerRateDto.setAgent_l2_rate(subMerRateDto.getAgent_l2_rate());
			  tmpSubMerRateDto.setAgent_l2_rate_h(subMerRateDto.getAgent_l2_rate_h());
			  tmpSubMerRateDto.setAgent_l2_highest_fee(subMerRateDto.getAgent_l2_highest_fee());
			  tmpSubMerRateDto.setAgent_l2_profit_rate(subMerRateDto.getAgent_l2_profit_rate());
			  tmpSubMerRateDto.setCreate_time(subMerRateDto.getCreate_time());
			  tmpSubMerRateDto.setStatus(subMerRateDto.getStatus());
			  tmpSubMerRateDto.setReserved(subMerRateDto.getReserved());
			  tmpSubMerRateDto.setSub_mer_tract(subMerRateDto.getSub_mer_tract());
			  tmpSubMerRateDto.setMcc_category_id(subMerRateDto.getMcc_category_id());
			  tmpSubMerRateDto.setSign_rate(subMerRateDto.getSign_rate());
			  tmpSubMerRateDto.setSign_rate_h(subMerRateDto.getSign_rate_h());
			  tmpSubMerRateDto.setSign_highest_fee(subMerRateDto.getSign_highest_fee());
			  tmpSubMerRateDto.setSign_lowest_fee(subMerRateDto.getSign_lowest_fee());
		
			subMerRateService.updatePK(subMerRateDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerRateDto getSubMerRateDto() {
		return subMerRateDto;
	}

	public final void setStudentDto(SubMerRateDto subMerRateDto) {
		this.subMerRateDto = subMerRateDto;
	}

}
