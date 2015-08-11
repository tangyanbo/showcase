package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiPayInfoBackTestDto;
import com.shiyue.bbs.service.IFaiPayInfoBackTestService;

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
 
@Controller("editFaiPayInfoBackTestAction")
@Scope("prototype")
public class EditFaiPayInfoBackTestAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiPayInfoBackTestService faiPayInfoBackTestService;
	private FaiPayInfoBackTestDto faiPayInfoBackTestDto =new FaiPayInfoBackTestDto();;

	public String execute() throws Exception {
		try {
		    
		      FaiPayInfoBackTestDto tmpFaiPayInfoBackTestDto = new FaiPayInfoBackTestDto();
			  tmpFaiPayInfoBackTestDto.setOrder_id(faiPayInfoBackTestDto.getOrder_id());
			  tmpFaiPayInfoBackTestDto.setTrans_mer_id(faiPayInfoBackTestDto.getTrans_mer_id());
			  tmpFaiPayInfoBackTestDto.setTrans_ter_id(faiPayInfoBackTestDto.getTrans_ter_id());
			  tmpFaiPayInfoBackTestDto.setChannel_type(faiPayInfoBackTestDto.getChannel_type());
			  tmpFaiPayInfoBackTestDto.setTrans_amt(faiPayInfoBackTestDto.getTrans_amt());
			  tmpFaiPayInfoBackTestDto.setTrans_cur(faiPayInfoBackTestDto.getTrans_cur());
			  tmpFaiPayInfoBackTestDto.setTrans_time(faiPayInfoBackTestDto.getTrans_time());
			  tmpFaiPayInfoBackTestDto.setTrans_status(faiPayInfoBackTestDto.getTrans_status());
			  tmpFaiPayInfoBackTestDto.setTrans_type(faiPayInfoBackTestDto.getTrans_type());
			  tmpFaiPayInfoBackTestDto.setRes_code(faiPayInfoBackTestDto.getRes_code());
			  tmpFaiPayInfoBackTestDto.setRes_desc(faiPayInfoBackTestDto.getRes_desc());
			  tmpFaiPayInfoBackTestDto.setTrans_trace_time(faiPayInfoBackTestDto.getTrans_trace_time());
			  tmpFaiPayInfoBackTestDto.setSettle_date(faiPayInfoBackTestDto.getSettle_date());
			  tmpFaiPayInfoBackTestDto.setSettle_amt(faiPayInfoBackTestDto.getSettle_amt());
			  tmpFaiPayInfoBackTestDto.setSettle_cur(faiPayInfoBackTestDto.getSettle_cur());
			  tmpFaiPayInfoBackTestDto.setSettle_conver_rate(faiPayInfoBackTestDto.getSettle_conver_rate());
			  tmpFaiPayInfoBackTestDto.setMobile(faiPayInfoBackTestDto.getMobile());
			  tmpFaiPayInfoBackTestDto.setId_type(faiPayInfoBackTestDto.getId_type());
			  tmpFaiPayInfoBackTestDto.setId_no(faiPayInfoBackTestDto.getId_no());
			  tmpFaiPayInfoBackTestDto.setUser_name(faiPayInfoBackTestDto.getUser_name());
			  tmpFaiPayInfoBackTestDto.setBind_num(faiPayInfoBackTestDto.getBind_num());
			  tmpFaiPayInfoBackTestDto.setPan(faiPayInfoBackTestDto.getPan());
			  tmpFaiPayInfoBackTestDto.setCard_type(faiPayInfoBackTestDto.getCard_type());
			  tmpFaiPayInfoBackTestDto.setIssbank_id(faiPayInfoBackTestDto.getIssbank_id());
			  tmpFaiPayInfoBackTestDto.setIssbank_name(faiPayInfoBackTestDto.getIssbank_name());
			  tmpFaiPayInfoBackTestDto.setCh_info(faiPayInfoBackTestDto.getCh_info());
			  tmpFaiPayInfoBackTestDto.setAccount1(faiPayInfoBackTestDto.getAccount1());
			  tmpFaiPayInfoBackTestDto.setAccount2(faiPayInfoBackTestDto.getAccount2());
			  tmpFaiPayInfoBackTestDto.setOrg_order_id(faiPayInfoBackTestDto.getOrg_order_id());
			  tmpFaiPayInfoBackTestDto.setCreate_time(faiPayInfoBackTestDto.getCreate_time());
			  tmpFaiPayInfoBackTestDto.setModify_time(faiPayInfoBackTestDto.getModify_time());
			  tmpFaiPayInfoBackTestDto.setReserved(faiPayInfoBackTestDto.getReserved());
			  tmpFaiPayInfoBackTestDto.setExt(faiPayInfoBackTestDto.getExt());
			  tmpFaiPayInfoBackTestDto.setCsn(faiPayInfoBackTestDto.getCsn());
			  tmpFaiPayInfoBackTestDto.setTrans_mer_name(faiPayInfoBackTestDto.getTrans_mer_name());
			  tmpFaiPayInfoBackTestDto.setSpid(faiPayInfoBackTestDto.getSpid());
			  tmpFaiPayInfoBackTestDto.setTrack2_data(faiPayInfoBackTestDto.getTrack2_data());
			  tmpFaiPayInfoBackTestDto.setTrack3_data(faiPayInfoBackTestDto.getTrack3_data());
			  tmpFaiPayInfoBackTestDto.setIp(faiPayInfoBackTestDto.getIp());
			  tmpFaiPayInfoBackTestDto.setReference_no(faiPayInfoBackTestDto.getReference_no());
			  tmpFaiPayInfoBackTestDto.setAuth_no(faiPayInfoBackTestDto.getAuth_no());
			  tmpFaiPayInfoBackTestDto.setDate_transaction(faiPayInfoBackTestDto.getDate_transaction());
			  tmpFaiPayInfoBackTestDto.setTime_transaction(faiPayInfoBackTestDto.getTime_transaction());
			  tmpFaiPayInfoBackTestDto.setTracking_no(faiPayInfoBackTestDto.getTracking_no());
			  tmpFaiPayInfoBackTestDto.setAccount2_name(faiPayInfoBackTestDto.getAccount2_name());
			  tmpFaiPayInfoBackTestDto.setBatch_no(faiPayInfoBackTestDto.getBatch_no());
			  tmpFaiPayInfoBackTestDto.setExt1(faiPayInfoBackTestDto.getExt1());
			  tmpFaiPayInfoBackTestDto.setExt2(faiPayInfoBackTestDto.getExt2());
			  tmpFaiPayInfoBackTestDto.setExt3(faiPayInfoBackTestDto.getExt3());
			  tmpFaiPayInfoBackTestDto.setCreate_date(faiPayInfoBackTestDto.getCreate_date());
			  tmpFaiPayInfoBackTestDto.setModify_date(faiPayInfoBackTestDto.getModify_date());
			  tmpFaiPayInfoBackTestDto.setEntry_mode(faiPayInfoBackTestDto.getEntry_mode());
			  tmpFaiPayInfoBackTestDto.setCard_no(faiPayInfoBackTestDto.getCard_no());
			  tmpFaiPayInfoBackTestDto.setMer_order_id(faiPayInfoBackTestDto.getMer_order_id());
			  tmpFaiPayInfoBackTestDto.setMer_sys_id(faiPayInfoBackTestDto.getMer_sys_id());
			  tmpFaiPayInfoBackTestDto.setSub_mer_id(faiPayInfoBackTestDto.getSub_mer_id());
			  tmpFaiPayInfoBackTestDto.setResp_code(faiPayInfoBackTestDto.getResp_code());
			  tmpFaiPayInfoBackTestDto.setResp_desc(faiPayInfoBackTestDto.getResp_desc());
		
			faiPayInfoBackTestService.updatePK(faiPayInfoBackTestDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiPayInfoBackTestDto getFaiPayInfoBackTestDto() {
		return faiPayInfoBackTestDto;
	}

	public final void setStudentDto(FaiPayInfoBackTestDto faiPayInfoBackTestDto) {
		this.faiPayInfoBackTestDto = faiPayInfoBackTestDto;
	}

}
