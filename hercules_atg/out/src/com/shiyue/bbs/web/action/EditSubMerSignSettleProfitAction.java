package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerSignSettleProfitDto;
import com.shiyue.bbs.service.ISubMerSignSettleProfitService;

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
 
@Controller("editSubMerSignSettleProfitAction")
@Scope("prototype")
public class EditSubMerSignSettleProfitAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerSignSettleProfitService subMerSignSettleProfitService;
	private SubMerSignSettleProfitDto subMerSignSettleProfitDto =new SubMerSignSettleProfitDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerSignSettleProfitDto tmpSubMerSignSettleProfitDto = new SubMerSignSettleProfitDto();
			  tmpSubMerSignSettleProfitDto.setId(subMerSignSettleProfitDto.getId());
			  tmpSubMerSignSettleProfitDto.setOrder_id(subMerSignSettleProfitDto.getOrder_id());
			  tmpSubMerSignSettleProfitDto.setSub_mer_id(subMerSignSettleProfitDto.getSub_mer_id());
			  tmpSubMerSignSettleProfitDto.setMer_sys_id(subMerSignSettleProfitDto.getMer_sys_id());
			  tmpSubMerSignSettleProfitDto.setSub_mer_sign_rate(subMerSignSettleProfitDto.getSub_mer_sign_rate());
			  tmpSubMerSignSettleProfitDto.setSub_mer_sign_high_fee(subMerSignSettleProfitDto.getSub_mer_sign_high_fee());
			  tmpSubMerSignSettleProfitDto.setSub_mer_trans_rate(subMerSignSettleProfitDto.getSub_mer_trans_rate());
			  tmpSubMerSignSettleProfitDto.setSub_mer_trans_high_fee(subMerSignSettleProfitDto.getSub_mer_trans_high_fee());
			  tmpSubMerSignSettleProfitDto.setCreate_date(subMerSignSettleProfitDto.getCreate_date());
			  tmpSubMerSignSettleProfitDto.setCreate_time(subMerSignSettleProfitDto.getCreate_time());
			  tmpSubMerSignSettleProfitDto.setProfit_date(subMerSignSettleProfitDto.getProfit_date());
			  tmpSubMerSignSettleProfitDto.setProfit_time(subMerSignSettleProfitDto.getProfit_time());
			  tmpSubMerSignSettleProfitDto.setProfit(subMerSignSettleProfitDto.getProfit());
			  tmpSubMerSignSettleProfitDto.setTrans_type(subMerSignSettleProfitDto.getTrans_type());
			  tmpSubMerSignSettleProfitDto.setStatus(subMerSignSettleProfitDto.getStatus());
			  tmpSubMerSignSettleProfitDto.setDesc(subMerSignSettleProfitDto.getDesc());
			  tmpSubMerSignSettleProfitDto.setReserved(subMerSignSettleProfitDto.getReserved());
		
			subMerSignSettleProfitService.updatePK(subMerSignSettleProfitDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerSignSettleProfitDto getSubMerSignSettleProfitDto() {
		return subMerSignSettleProfitDto;
	}

	public final void setStudentDto(SubMerSignSettleProfitDto subMerSignSettleProfitDto) {
		this.subMerSignSettleProfitDto = subMerSignSettleProfitDto;
	}

}
