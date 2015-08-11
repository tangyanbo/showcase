package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiOrderInfoV21102Dto;
import com.shiyue.bbs.service.IFaiOrderInfoV21102Service;

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
 
@Controller("editFaiOrderInfoV21102Action")
@Scope("prototype")
public class EditFaiOrderInfoV21102Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiOrderInfoV21102Service faiOrderInfoV21102Service;
	private FaiOrderInfoV21102Dto faiOrderInfoV21102Dto =new FaiOrderInfoV21102Dto();;

	public String execute() throws Exception {
		try {
		    
		      FaiOrderInfoV21102Dto tmpFaiOrderInfoV21102Dto = new FaiOrderInfoV21102Dto();
			  tmpFaiOrderInfoV21102Dto.setOrder_id(faiOrderInfoV21102Dto.getOrder_id());
			  tmpFaiOrderInfoV21102Dto.setTrans_mer_id(faiOrderInfoV21102Dto.getTrans_mer_id());
			  tmpFaiOrderInfoV21102Dto.setTrans_ter_id(faiOrderInfoV21102Dto.getTrans_ter_id());
			  tmpFaiOrderInfoV21102Dto.setChannel_type(faiOrderInfoV21102Dto.getChannel_type());
			  tmpFaiOrderInfoV21102Dto.setTrans_amt(faiOrderInfoV21102Dto.getTrans_amt());
			  tmpFaiOrderInfoV21102Dto.setTrans_cur(faiOrderInfoV21102Dto.getTrans_cur());
			  tmpFaiOrderInfoV21102Dto.setTrans_time(faiOrderInfoV21102Dto.getTrans_time());
			  tmpFaiOrderInfoV21102Dto.setTrans_status(faiOrderInfoV21102Dto.getTrans_status());
			  tmpFaiOrderInfoV21102Dto.setTrans_type(faiOrderInfoV21102Dto.getTrans_type());
			  tmpFaiOrderInfoV21102Dto.setRes_code(faiOrderInfoV21102Dto.getRes_code());
			  tmpFaiOrderInfoV21102Dto.setRes_desc(faiOrderInfoV21102Dto.getRes_desc());
			  tmpFaiOrderInfoV21102Dto.setTrans_qid(faiOrderInfoV21102Dto.getTrans_qid());
			  tmpFaiOrderInfoV21102Dto.setTrans_trace_number(faiOrderInfoV21102Dto.getTrans_trace_number());
			  tmpFaiOrderInfoV21102Dto.setTrans_trace_time(faiOrderInfoV21102Dto.getTrans_trace_time());
			  tmpFaiOrderInfoV21102Dto.setSettle_date(faiOrderInfoV21102Dto.getSettle_date());
			  tmpFaiOrderInfoV21102Dto.setSettle_amt(faiOrderInfoV21102Dto.getSettle_amt());
			  tmpFaiOrderInfoV21102Dto.setSettle_cur(faiOrderInfoV21102Dto.getSettle_cur());
			  tmpFaiOrderInfoV21102Dto.setSettle_conver_rate(faiOrderInfoV21102Dto.getSettle_conver_rate());
			  tmpFaiOrderInfoV21102Dto.setMobile(faiOrderInfoV21102Dto.getMobile());
			  tmpFaiOrderInfoV21102Dto.setId_type(faiOrderInfoV21102Dto.getId_type());
			  tmpFaiOrderInfoV21102Dto.setId_no(faiOrderInfoV21102Dto.getId_no());
			  tmpFaiOrderInfoV21102Dto.setUser_name(faiOrderInfoV21102Dto.getUser_name());
			  tmpFaiOrderInfoV21102Dto.setBind_num(faiOrderInfoV21102Dto.getBind_num());
			  tmpFaiOrderInfoV21102Dto.setPan(faiOrderInfoV21102Dto.getPan());
			  tmpFaiOrderInfoV21102Dto.setCard_type(faiOrderInfoV21102Dto.getCard_type());
			  tmpFaiOrderInfoV21102Dto.setIssbank_id(faiOrderInfoV21102Dto.getIssbank_id());
			  tmpFaiOrderInfoV21102Dto.setIssbank_name(faiOrderInfoV21102Dto.getIssbank_name());
			  tmpFaiOrderInfoV21102Dto.setCh_info(faiOrderInfoV21102Dto.getCh_info());
			  tmpFaiOrderInfoV21102Dto.setAccount1(faiOrderInfoV21102Dto.getAccount1());
			  tmpFaiOrderInfoV21102Dto.setAccount2(faiOrderInfoV21102Dto.getAccount2());
			  tmpFaiOrderInfoV21102Dto.setOrg_order_id(faiOrderInfoV21102Dto.getOrg_order_id());
			  tmpFaiOrderInfoV21102Dto.setCreate_time(faiOrderInfoV21102Dto.getCreate_time());
			  tmpFaiOrderInfoV21102Dto.setModify_time(faiOrderInfoV21102Dto.getModify_time());
			  tmpFaiOrderInfoV21102Dto.setReserved(faiOrderInfoV21102Dto.getReserved());
			  tmpFaiOrderInfoV21102Dto.setExt(faiOrderInfoV21102Dto.getExt());
			  tmpFaiOrderInfoV21102Dto.setCsn(faiOrderInfoV21102Dto.getCsn());
			  tmpFaiOrderInfoV21102Dto.setTrans_mer_name(faiOrderInfoV21102Dto.getTrans_mer_name());
			  tmpFaiOrderInfoV21102Dto.setSpid(faiOrderInfoV21102Dto.getSpid());
			  tmpFaiOrderInfoV21102Dto.setCard_id(faiOrderInfoV21102Dto.getCard_id());
			  tmpFaiOrderInfoV21102Dto.setSub_mer_id(faiOrderInfoV21102Dto.getSub_mer_id());
			  tmpFaiOrderInfoV21102Dto.setMer_id(faiOrderInfoV21102Dto.getMer_id());
		
			faiOrderInfoV21102Service.updatePK(faiOrderInfoV21102Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiOrderInfoV21102Dto getFaiOrderInfoV21102Dto() {
		return faiOrderInfoV21102Dto;
	}

	public final void setStudentDto(FaiOrderInfoV21102Dto faiOrderInfoV21102Dto) {
		this.faiOrderInfoV21102Dto = faiOrderInfoV21102Dto;
	}

}
