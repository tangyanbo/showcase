package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV2Dto;
import com.shiyue.bbs.service.IFaiOrderInfoV2Service;

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
 
@Controller("editFaiOrderInfoV2Action")
@Scope("prototype")
public class EditFaiOrderInfoV2Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV2Service faiOrderInfoV2Service;
	private FaiOrderInfoV2Dto faiOrderInfoV2Dto =new FaiOrderInfoV2Dto();;

	public String execute() throws Exception {
		try {
		    
		      FaiOrderInfoV2Dto tmpFaiOrderInfoV2Dto = new FaiOrderInfoV2Dto();
			  tmpFaiOrderInfoV2Dto.setOrder_id(faiOrderInfoV2Dto.getOrder_id());
			  tmpFaiOrderInfoV2Dto.setTrans_mer_id(faiOrderInfoV2Dto.getTrans_mer_id());
			  tmpFaiOrderInfoV2Dto.setTrans_ter_id(faiOrderInfoV2Dto.getTrans_ter_id());
			  tmpFaiOrderInfoV2Dto.setChannel_type(faiOrderInfoV2Dto.getChannel_type());
			  tmpFaiOrderInfoV2Dto.setTrans_amt(faiOrderInfoV2Dto.getTrans_amt());
			  tmpFaiOrderInfoV2Dto.setTrans_cur(faiOrderInfoV2Dto.getTrans_cur());
			  tmpFaiOrderInfoV2Dto.setTrans_time(faiOrderInfoV2Dto.getTrans_time());
			  tmpFaiOrderInfoV2Dto.setTrans_status(faiOrderInfoV2Dto.getTrans_status());
			  tmpFaiOrderInfoV2Dto.setTrans_type(faiOrderInfoV2Dto.getTrans_type());
			  tmpFaiOrderInfoV2Dto.setRes_code(faiOrderInfoV2Dto.getRes_code());
			  tmpFaiOrderInfoV2Dto.setRes_desc(faiOrderInfoV2Dto.getRes_desc());
			  tmpFaiOrderInfoV2Dto.setTrans_qid(faiOrderInfoV2Dto.getTrans_qid());
			  tmpFaiOrderInfoV2Dto.setTrans_trace_number(faiOrderInfoV2Dto.getTrans_trace_number());
			  tmpFaiOrderInfoV2Dto.setTrans_trace_time(faiOrderInfoV2Dto.getTrans_trace_time());
			  tmpFaiOrderInfoV2Dto.setSettle_date(faiOrderInfoV2Dto.getSettle_date());
			  tmpFaiOrderInfoV2Dto.setSettle_amt(faiOrderInfoV2Dto.getSettle_amt());
			  tmpFaiOrderInfoV2Dto.setSettle_cur(faiOrderInfoV2Dto.getSettle_cur());
			  tmpFaiOrderInfoV2Dto.setSettle_conver_rate(faiOrderInfoV2Dto.getSettle_conver_rate());
			  tmpFaiOrderInfoV2Dto.setMobile(faiOrderInfoV2Dto.getMobile());
			  tmpFaiOrderInfoV2Dto.setId_type(faiOrderInfoV2Dto.getId_type());
			  tmpFaiOrderInfoV2Dto.setId_no(faiOrderInfoV2Dto.getId_no());
			  tmpFaiOrderInfoV2Dto.setUser_name(faiOrderInfoV2Dto.getUser_name());
			  tmpFaiOrderInfoV2Dto.setBind_num(faiOrderInfoV2Dto.getBind_num());
			  tmpFaiOrderInfoV2Dto.setPan(faiOrderInfoV2Dto.getPan());
			  tmpFaiOrderInfoV2Dto.setCard_type(faiOrderInfoV2Dto.getCard_type());
			  tmpFaiOrderInfoV2Dto.setIssbank_id(faiOrderInfoV2Dto.getIssbank_id());
			  tmpFaiOrderInfoV2Dto.setIssbank_name(faiOrderInfoV2Dto.getIssbank_name());
			  tmpFaiOrderInfoV2Dto.setCh_info(faiOrderInfoV2Dto.getCh_info());
			  tmpFaiOrderInfoV2Dto.setAccount1(faiOrderInfoV2Dto.getAccount1());
			  tmpFaiOrderInfoV2Dto.setAccount2(faiOrderInfoV2Dto.getAccount2());
			  tmpFaiOrderInfoV2Dto.setOrg_order_id(faiOrderInfoV2Dto.getOrg_order_id());
			  tmpFaiOrderInfoV2Dto.setCreate_time(faiOrderInfoV2Dto.getCreate_time());
			  tmpFaiOrderInfoV2Dto.setModify_time(faiOrderInfoV2Dto.getModify_time());
			  tmpFaiOrderInfoV2Dto.setReserved(faiOrderInfoV2Dto.getReserved());
			  tmpFaiOrderInfoV2Dto.setExt(faiOrderInfoV2Dto.getExt());
			  tmpFaiOrderInfoV2Dto.setCsn(faiOrderInfoV2Dto.getCsn());
			  tmpFaiOrderInfoV2Dto.setTrans_mer_name(faiOrderInfoV2Dto.getTrans_mer_name());
			  tmpFaiOrderInfoV2Dto.setSpid(faiOrderInfoV2Dto.getSpid());
			  tmpFaiOrderInfoV2Dto.setCard_id(faiOrderInfoV2Dto.getCard_id());
			  tmpFaiOrderInfoV2Dto.setSub_mer_id(faiOrderInfoV2Dto.getSub_mer_id());
			  tmpFaiOrderInfoV2Dto.setMer_id(faiOrderInfoV2Dto.getMer_id());
		
			faiOrderInfoV2Service.updatePK(faiOrderInfoV2Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiOrderInfoV2Dto getFaiOrderInfoV2Dto() {
		return faiOrderInfoV2Dto;
	}

	public final void setStudentDto(FaiOrderInfoV2Dto faiOrderInfoV2Dto) {
		this.faiOrderInfoV2Dto = faiOrderInfoV2Dto;
	}

}
