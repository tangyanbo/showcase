package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiPayInfo2new1102Dto;
import com.shiyue.bbs.service.IFaiPayInfo2new1102Service;

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
 
@Controller("editFaiPayInfo2new1102Action")
@Scope("prototype")
public class EditFaiPayInfo2new1102Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiPayInfo2new1102Service faiPayInfo2new1102Service;
	private FaiPayInfo2new1102Dto faiPayInfo2new1102Dto =new FaiPayInfo2new1102Dto();;

	public String execute() throws Exception {
		try {
		    
		      FaiPayInfo2new1102Dto tmpFaiPayInfo2new1102Dto = new FaiPayInfo2new1102Dto();
			  tmpFaiPayInfo2new1102Dto.setOrder_id(faiPayInfo2new1102Dto.getOrder_id());
			  tmpFaiPayInfo2new1102Dto.setTrans_mer_id(faiPayInfo2new1102Dto.getTrans_mer_id());
			  tmpFaiPayInfo2new1102Dto.setTrans_ter_id(faiPayInfo2new1102Dto.getTrans_ter_id());
			  tmpFaiPayInfo2new1102Dto.setChannel_type(faiPayInfo2new1102Dto.getChannel_type());
			  tmpFaiPayInfo2new1102Dto.setTrans_amt(faiPayInfo2new1102Dto.getTrans_amt());
			  tmpFaiPayInfo2new1102Dto.setTrans_cur(faiPayInfo2new1102Dto.getTrans_cur());
			  tmpFaiPayInfo2new1102Dto.setTrans_time(faiPayInfo2new1102Dto.getTrans_time());
			  tmpFaiPayInfo2new1102Dto.setTrans_status(faiPayInfo2new1102Dto.getTrans_status());
			  tmpFaiPayInfo2new1102Dto.setTrans_type(faiPayInfo2new1102Dto.getTrans_type());
			  tmpFaiPayInfo2new1102Dto.setRes_code(faiPayInfo2new1102Dto.getRes_code());
			  tmpFaiPayInfo2new1102Dto.setRes_desc(faiPayInfo2new1102Dto.getRes_desc());
			  tmpFaiPayInfo2new1102Dto.setTrans_trace_time(faiPayInfo2new1102Dto.getTrans_trace_time());
			  tmpFaiPayInfo2new1102Dto.setSettle_date(faiPayInfo2new1102Dto.getSettle_date());
			  tmpFaiPayInfo2new1102Dto.setSettle_amt(faiPayInfo2new1102Dto.getSettle_amt());
			  tmpFaiPayInfo2new1102Dto.setSettle_cur(faiPayInfo2new1102Dto.getSettle_cur());
			  tmpFaiPayInfo2new1102Dto.setSettle_conver_rate(faiPayInfo2new1102Dto.getSettle_conver_rate());
			  tmpFaiPayInfo2new1102Dto.setMobile(faiPayInfo2new1102Dto.getMobile());
			  tmpFaiPayInfo2new1102Dto.setId_type(faiPayInfo2new1102Dto.getId_type());
			  tmpFaiPayInfo2new1102Dto.setId_no(faiPayInfo2new1102Dto.getId_no());
			  tmpFaiPayInfo2new1102Dto.setUser_name(faiPayInfo2new1102Dto.getUser_name());
			  tmpFaiPayInfo2new1102Dto.setBind_num(faiPayInfo2new1102Dto.getBind_num());
			  tmpFaiPayInfo2new1102Dto.setPan(faiPayInfo2new1102Dto.getPan());
			  tmpFaiPayInfo2new1102Dto.setCard_type(faiPayInfo2new1102Dto.getCard_type());
			  tmpFaiPayInfo2new1102Dto.setIssbank_id(faiPayInfo2new1102Dto.getIssbank_id());
			  tmpFaiPayInfo2new1102Dto.setIssbank_name(faiPayInfo2new1102Dto.getIssbank_name());
			  tmpFaiPayInfo2new1102Dto.setCh_info(faiPayInfo2new1102Dto.getCh_info());
			  tmpFaiPayInfo2new1102Dto.setAccount1(faiPayInfo2new1102Dto.getAccount1());
			  tmpFaiPayInfo2new1102Dto.setAccount2(faiPayInfo2new1102Dto.getAccount2());
			  tmpFaiPayInfo2new1102Dto.setOrg_order_id(faiPayInfo2new1102Dto.getOrg_order_id());
			  tmpFaiPayInfo2new1102Dto.setCreate_time(faiPayInfo2new1102Dto.getCreate_time());
			  tmpFaiPayInfo2new1102Dto.setModify_time(faiPayInfo2new1102Dto.getModify_time());
			  tmpFaiPayInfo2new1102Dto.setReserved(faiPayInfo2new1102Dto.getReserved());
			  tmpFaiPayInfo2new1102Dto.setExt(faiPayInfo2new1102Dto.getExt());
			  tmpFaiPayInfo2new1102Dto.setCsn(faiPayInfo2new1102Dto.getCsn());
			  tmpFaiPayInfo2new1102Dto.setTrans_mer_name(faiPayInfo2new1102Dto.getTrans_mer_name());
			  tmpFaiPayInfo2new1102Dto.setSpid(faiPayInfo2new1102Dto.getSpid());
			  tmpFaiPayInfo2new1102Dto.setTrack2_data(faiPayInfo2new1102Dto.getTrack2_data());
			  tmpFaiPayInfo2new1102Dto.setTrack3_data(faiPayInfo2new1102Dto.getTrack3_data());
			  tmpFaiPayInfo2new1102Dto.setIp(faiPayInfo2new1102Dto.getIp());
			  tmpFaiPayInfo2new1102Dto.setReference_no(faiPayInfo2new1102Dto.getReference_no());
			  tmpFaiPayInfo2new1102Dto.setAuth_no(faiPayInfo2new1102Dto.getAuth_no());
			  tmpFaiPayInfo2new1102Dto.setDate_transaction(faiPayInfo2new1102Dto.getDate_transaction());
			  tmpFaiPayInfo2new1102Dto.setTime_transaction(faiPayInfo2new1102Dto.getTime_transaction());
			  tmpFaiPayInfo2new1102Dto.setTracking_no(faiPayInfo2new1102Dto.getTracking_no());
			  tmpFaiPayInfo2new1102Dto.setAccount2_name(faiPayInfo2new1102Dto.getAccount2_name());
			  tmpFaiPayInfo2new1102Dto.setBatch_no(faiPayInfo2new1102Dto.getBatch_no());
			  tmpFaiPayInfo2new1102Dto.setExt1(faiPayInfo2new1102Dto.getExt1());
			  tmpFaiPayInfo2new1102Dto.setExt2(faiPayInfo2new1102Dto.getExt2());
			  tmpFaiPayInfo2new1102Dto.setExt3(faiPayInfo2new1102Dto.getExt3());
			  tmpFaiPayInfo2new1102Dto.setCreate_date(faiPayInfo2new1102Dto.getCreate_date());
			  tmpFaiPayInfo2new1102Dto.setModify_date(faiPayInfo2new1102Dto.getModify_date());
			  tmpFaiPayInfo2new1102Dto.setEntry_mode(faiPayInfo2new1102Dto.getEntry_mode());
			  tmpFaiPayInfo2new1102Dto.setCard_no(faiPayInfo2new1102Dto.getCard_no());
			  tmpFaiPayInfo2new1102Dto.setMer_order_id(faiPayInfo2new1102Dto.getMer_order_id());
			  tmpFaiPayInfo2new1102Dto.setMer_sys_id(faiPayInfo2new1102Dto.getMer_sys_id());
			  tmpFaiPayInfo2new1102Dto.setSub_mer_id(faiPayInfo2new1102Dto.getSub_mer_id());
			  tmpFaiPayInfo2new1102Dto.setResp_code(faiPayInfo2new1102Dto.getResp_code());
			  tmpFaiPayInfo2new1102Dto.setResp_desc(faiPayInfo2new1102Dto.getResp_desc());
		
			faiPayInfo2new1102Service.updatePK(faiPayInfo2new1102Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiPayInfo2new1102Dto getFaiPayInfo2new1102Dto() {
		return faiPayInfo2new1102Dto;
	}

	public final void setStudentDto(FaiPayInfo2new1102Dto faiPayInfo2new1102Dto) {
		this.faiPayInfo2new1102Dto = faiPayInfo2new1102Dto;
	}

}
