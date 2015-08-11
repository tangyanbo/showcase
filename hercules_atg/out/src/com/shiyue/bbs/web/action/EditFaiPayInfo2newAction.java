package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FaiPayInfo2newDto;
import com.shiyue.bbs.service.IFaiPayInfo2newService;

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
 
@Controller("editFaiPayInfo2newAction")
@Scope("prototype")
public class EditFaiPayInfo2newAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFaiPayInfo2newService faiPayInfo2newService;
	private FaiPayInfo2newDto faiPayInfo2newDto =new FaiPayInfo2newDto();;

	public String execute() throws Exception {
		try {
		    
		      FaiPayInfo2newDto tmpFaiPayInfo2newDto = new FaiPayInfo2newDto();
			  tmpFaiPayInfo2newDto.setOrder_id(faiPayInfo2newDto.getOrder_id());
			  tmpFaiPayInfo2newDto.setTrans_mer_id(faiPayInfo2newDto.getTrans_mer_id());
			  tmpFaiPayInfo2newDto.setTrans_ter_id(faiPayInfo2newDto.getTrans_ter_id());
			  tmpFaiPayInfo2newDto.setChannel_type(faiPayInfo2newDto.getChannel_type());
			  tmpFaiPayInfo2newDto.setTrans_amt(faiPayInfo2newDto.getTrans_amt());
			  tmpFaiPayInfo2newDto.setTrans_cur(faiPayInfo2newDto.getTrans_cur());
			  tmpFaiPayInfo2newDto.setTrans_time(faiPayInfo2newDto.getTrans_time());
			  tmpFaiPayInfo2newDto.setTrans_status(faiPayInfo2newDto.getTrans_status());
			  tmpFaiPayInfo2newDto.setTrans_type(faiPayInfo2newDto.getTrans_type());
			  tmpFaiPayInfo2newDto.setRes_code(faiPayInfo2newDto.getRes_code());
			  tmpFaiPayInfo2newDto.setRes_desc(faiPayInfo2newDto.getRes_desc());
			  tmpFaiPayInfo2newDto.setTrans_trace_time(faiPayInfo2newDto.getTrans_trace_time());
			  tmpFaiPayInfo2newDto.setSettle_date(faiPayInfo2newDto.getSettle_date());
			  tmpFaiPayInfo2newDto.setSettle_amt(faiPayInfo2newDto.getSettle_amt());
			  tmpFaiPayInfo2newDto.setSettle_cur(faiPayInfo2newDto.getSettle_cur());
			  tmpFaiPayInfo2newDto.setSettle_conver_rate(faiPayInfo2newDto.getSettle_conver_rate());
			  tmpFaiPayInfo2newDto.setMobile(faiPayInfo2newDto.getMobile());
			  tmpFaiPayInfo2newDto.setId_type(faiPayInfo2newDto.getId_type());
			  tmpFaiPayInfo2newDto.setId_no(faiPayInfo2newDto.getId_no());
			  tmpFaiPayInfo2newDto.setUser_name(faiPayInfo2newDto.getUser_name());
			  tmpFaiPayInfo2newDto.setBind_num(faiPayInfo2newDto.getBind_num());
			  tmpFaiPayInfo2newDto.setPan(faiPayInfo2newDto.getPan());
			  tmpFaiPayInfo2newDto.setCard_type(faiPayInfo2newDto.getCard_type());
			  tmpFaiPayInfo2newDto.setIssbank_id(faiPayInfo2newDto.getIssbank_id());
			  tmpFaiPayInfo2newDto.setIssbank_name(faiPayInfo2newDto.getIssbank_name());
			  tmpFaiPayInfo2newDto.setCh_info(faiPayInfo2newDto.getCh_info());
			  tmpFaiPayInfo2newDto.setAccount1(faiPayInfo2newDto.getAccount1());
			  tmpFaiPayInfo2newDto.setAccount2(faiPayInfo2newDto.getAccount2());
			  tmpFaiPayInfo2newDto.setOrg_order_id(faiPayInfo2newDto.getOrg_order_id());
			  tmpFaiPayInfo2newDto.setCreate_time(faiPayInfo2newDto.getCreate_time());
			  tmpFaiPayInfo2newDto.setModify_time(faiPayInfo2newDto.getModify_time());
			  tmpFaiPayInfo2newDto.setReserved(faiPayInfo2newDto.getReserved());
			  tmpFaiPayInfo2newDto.setExt(faiPayInfo2newDto.getExt());
			  tmpFaiPayInfo2newDto.setCsn(faiPayInfo2newDto.getCsn());
			  tmpFaiPayInfo2newDto.setTrans_mer_name(faiPayInfo2newDto.getTrans_mer_name());
			  tmpFaiPayInfo2newDto.setSpid(faiPayInfo2newDto.getSpid());
			  tmpFaiPayInfo2newDto.setTrack2_data(faiPayInfo2newDto.getTrack2_data());
			  tmpFaiPayInfo2newDto.setTrack3_data(faiPayInfo2newDto.getTrack3_data());
			  tmpFaiPayInfo2newDto.setIp(faiPayInfo2newDto.getIp());
			  tmpFaiPayInfo2newDto.setReference_no(faiPayInfo2newDto.getReference_no());
			  tmpFaiPayInfo2newDto.setAuth_no(faiPayInfo2newDto.getAuth_no());
			  tmpFaiPayInfo2newDto.setDate_transaction(faiPayInfo2newDto.getDate_transaction());
			  tmpFaiPayInfo2newDto.setTime_transaction(faiPayInfo2newDto.getTime_transaction());
			  tmpFaiPayInfo2newDto.setTracking_no(faiPayInfo2newDto.getTracking_no());
			  tmpFaiPayInfo2newDto.setAccount2_name(faiPayInfo2newDto.getAccount2_name());
			  tmpFaiPayInfo2newDto.setBatch_no(faiPayInfo2newDto.getBatch_no());
			  tmpFaiPayInfo2newDto.setExt1(faiPayInfo2newDto.getExt1());
			  tmpFaiPayInfo2newDto.setExt2(faiPayInfo2newDto.getExt2());
			  tmpFaiPayInfo2newDto.setExt3(faiPayInfo2newDto.getExt3());
			  tmpFaiPayInfo2newDto.setCreate_date(faiPayInfo2newDto.getCreate_date());
			  tmpFaiPayInfo2newDto.setModify_date(faiPayInfo2newDto.getModify_date());
			  tmpFaiPayInfo2newDto.setEntry_mode(faiPayInfo2newDto.getEntry_mode());
			  tmpFaiPayInfo2newDto.setCard_no(faiPayInfo2newDto.getCard_no());
			  tmpFaiPayInfo2newDto.setMer_order_id(faiPayInfo2newDto.getMer_order_id());
			  tmpFaiPayInfo2newDto.setMer_sys_id(faiPayInfo2newDto.getMer_sys_id());
			  tmpFaiPayInfo2newDto.setSub_mer_id(faiPayInfo2newDto.getSub_mer_id());
			  tmpFaiPayInfo2newDto.setResp_code(faiPayInfo2newDto.getResp_code());
			  tmpFaiPayInfo2newDto.setResp_desc(faiPayInfo2newDto.getResp_desc());
		
			faiPayInfo2newService.updatePK(faiPayInfo2newDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FaiPayInfo2newDto getFaiPayInfo2newDto() {
		return faiPayInfo2newDto;
	}

	public final void setStudentDto(FaiPayInfo2newDto faiPayInfo2newDto) {
		this.faiPayInfo2newDto = faiPayInfo2newDto;
	}

}
