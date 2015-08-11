package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV2BackTestDto;
import com.shiyue.bbs.service.IFaiOrderInfoV2BackTestService;

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
 
@Controller("editFaiOrderInfoV2BackTestAction")
@Scope("prototype")
public class EditFaiOrderInfoV2BackTestAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV2BackTestService faiOrderInfoV2BackTestService;
	private FaiOrderInfoV2BackTestDto faiOrderInfoV2BackTestDto =new FaiOrderInfoV2BackTestDto();;

	public String execute() throws Exception {
		try {
		    
		      FaiOrderInfoV2BackTestDto tmpFaiOrderInfoV2BackTestDto = new FaiOrderInfoV2BackTestDto();
			  tmpFaiOrderInfoV2BackTestDto.setOrder_id(faiOrderInfoV2BackTestDto.getOrder_id());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_mer_id(faiOrderInfoV2BackTestDto.getTrans_mer_id());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_ter_id(faiOrderInfoV2BackTestDto.getTrans_ter_id());
			  tmpFaiOrderInfoV2BackTestDto.setChannel_type(faiOrderInfoV2BackTestDto.getChannel_type());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_amt(faiOrderInfoV2BackTestDto.getTrans_amt());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_cur(faiOrderInfoV2BackTestDto.getTrans_cur());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_time(faiOrderInfoV2BackTestDto.getTrans_time());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_status(faiOrderInfoV2BackTestDto.getTrans_status());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_type(faiOrderInfoV2BackTestDto.getTrans_type());
			  tmpFaiOrderInfoV2BackTestDto.setRes_code(faiOrderInfoV2BackTestDto.getRes_code());
			  tmpFaiOrderInfoV2BackTestDto.setRes_desc(faiOrderInfoV2BackTestDto.getRes_desc());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_qid(faiOrderInfoV2BackTestDto.getTrans_qid());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_trace_number(faiOrderInfoV2BackTestDto.getTrans_trace_number());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_trace_time(faiOrderInfoV2BackTestDto.getTrans_trace_time());
			  tmpFaiOrderInfoV2BackTestDto.setSettle_date(faiOrderInfoV2BackTestDto.getSettle_date());
			  tmpFaiOrderInfoV2BackTestDto.setSettle_amt(faiOrderInfoV2BackTestDto.getSettle_amt());
			  tmpFaiOrderInfoV2BackTestDto.setSettle_cur(faiOrderInfoV2BackTestDto.getSettle_cur());
			  tmpFaiOrderInfoV2BackTestDto.setSettle_conver_rate(faiOrderInfoV2BackTestDto.getSettle_conver_rate());
			  tmpFaiOrderInfoV2BackTestDto.setMobile(faiOrderInfoV2BackTestDto.getMobile());
			  tmpFaiOrderInfoV2BackTestDto.setId_type(faiOrderInfoV2BackTestDto.getId_type());
			  tmpFaiOrderInfoV2BackTestDto.setId_no(faiOrderInfoV2BackTestDto.getId_no());
			  tmpFaiOrderInfoV2BackTestDto.setUser_name(faiOrderInfoV2BackTestDto.getUser_name());
			  tmpFaiOrderInfoV2BackTestDto.setBind_num(faiOrderInfoV2BackTestDto.getBind_num());
			  tmpFaiOrderInfoV2BackTestDto.setPan(faiOrderInfoV2BackTestDto.getPan());
			  tmpFaiOrderInfoV2BackTestDto.setCard_type(faiOrderInfoV2BackTestDto.getCard_type());
			  tmpFaiOrderInfoV2BackTestDto.setIssbank_id(faiOrderInfoV2BackTestDto.getIssbank_id());
			  tmpFaiOrderInfoV2BackTestDto.setIssbank_name(faiOrderInfoV2BackTestDto.getIssbank_name());
			  tmpFaiOrderInfoV2BackTestDto.setCh_info(faiOrderInfoV2BackTestDto.getCh_info());
			  tmpFaiOrderInfoV2BackTestDto.setAccount1(faiOrderInfoV2BackTestDto.getAccount1());
			  tmpFaiOrderInfoV2BackTestDto.setAccount2(faiOrderInfoV2BackTestDto.getAccount2());
			  tmpFaiOrderInfoV2BackTestDto.setOrg_order_id(faiOrderInfoV2BackTestDto.getOrg_order_id());
			  tmpFaiOrderInfoV2BackTestDto.setCreate_time(faiOrderInfoV2BackTestDto.getCreate_time());
			  tmpFaiOrderInfoV2BackTestDto.setModify_time(faiOrderInfoV2BackTestDto.getModify_time());
			  tmpFaiOrderInfoV2BackTestDto.setReserved(faiOrderInfoV2BackTestDto.getReserved());
			  tmpFaiOrderInfoV2BackTestDto.setExt(faiOrderInfoV2BackTestDto.getExt());
			  tmpFaiOrderInfoV2BackTestDto.setCsn(faiOrderInfoV2BackTestDto.getCsn());
			  tmpFaiOrderInfoV2BackTestDto.setTrans_mer_name(faiOrderInfoV2BackTestDto.getTrans_mer_name());
			  tmpFaiOrderInfoV2BackTestDto.setSpid(faiOrderInfoV2BackTestDto.getSpid());
			  tmpFaiOrderInfoV2BackTestDto.setCard_id(faiOrderInfoV2BackTestDto.getCard_id());
			  tmpFaiOrderInfoV2BackTestDto.setSub_mer_id(faiOrderInfoV2BackTestDto.getSub_mer_id());
			  tmpFaiOrderInfoV2BackTestDto.setMer_id(faiOrderInfoV2BackTestDto.getMer_id());
		
			faiOrderInfoV2BackTestService.updatePK(faiOrderInfoV2BackTestDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiOrderInfoV2BackTestDto getFaiOrderInfoV2BackTestDto() {
		return faiOrderInfoV2BackTestDto;
	}

	public final void setStudentDto(FaiOrderInfoV2BackTestDto faiOrderInfoV2BackTestDto) {
		this.faiOrderInfoV2BackTestDto = faiOrderInfoV2BackTestDto;
	}

}
