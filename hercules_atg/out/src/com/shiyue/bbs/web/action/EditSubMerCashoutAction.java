package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerCashoutDto;
import com.shiyue.bbs.service.ISubMerCashoutService;

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
 
@Controller("editSubMerCashoutAction")
@Scope("prototype")
public class EditSubMerCashoutAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerCashoutService subMerCashoutService;
	private SubMerCashoutDto subMerCashoutDto =new SubMerCashoutDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerCashoutDto tmpSubMerCashoutDto = new SubMerCashoutDto();
			  tmpSubMerCashoutDto.setId(subMerCashoutDto.getId());
			  tmpSubMerCashoutDto.setSub_mer_id(subMerCashoutDto.getSub_mer_id());
			  tmpSubMerCashoutDto.setMer_sys_id(subMerCashoutDto.getMer_sys_id());
			  tmpSubMerCashoutDto.setOrder_amt(subMerCashoutDto.getOrder_amt());
			  tmpSubMerCashoutDto.setDaifa_amt(subMerCashoutDto.getDaifa_amt());
			  tmpSubMerCashoutDto.setOrder_status(subMerCashoutDto.getOrder_status());
			  tmpSubMerCashoutDto.setCreate_time(subMerCashoutDto.getCreate_time());
			  tmpSubMerCashoutDto.setFinish_time(subMerCashoutDto.getFinish_time());
			  tmpSubMerCashoutDto.setTrans_id(subMerCashoutDto.getTrans_id());
			  tmpSubMerCashoutDto.setTrans_qid(subMerCashoutDto.getTrans_qid());
			  tmpSubMerCashoutDto.setTrans_fee(subMerCashoutDto.getTrans_fee());
			  tmpSubMerCashoutDto.setBatch_id(subMerCashoutDto.getBatch_id());
			  tmpSubMerCashoutDto.setT0_mer_rate(subMerCashoutDto.getT0_mer_rate());
			  tmpSubMerCashoutDto.setT0_mer_profit(subMerCashoutDto.getT0_mer_profit());
			  tmpSubMerCashoutDto.setT0_mer_gain(subMerCashoutDto.getT0_mer_gain());
			  tmpSubMerCashoutDto.setT0_hx_profit(subMerCashoutDto.getT0_hx_profit());
			  tmpSubMerCashoutDto.setReserved1(subMerCashoutDto.getReserved1());
			  tmpSubMerCashoutDto.setReserved2(subMerCashoutDto.getReserved2());
			  tmpSubMerCashoutDto.setReserved3(subMerCashoutDto.getReserved3());
		
			subMerCashoutService.updatePK(subMerCashoutDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerCashoutDto getSubMerCashoutDto() {
		return subMerCashoutDto;
	}

	public final void setStudentDto(SubMerCashoutDto subMerCashoutDto) {
		this.subMerCashoutDto = subMerCashoutDto;
	}

}
