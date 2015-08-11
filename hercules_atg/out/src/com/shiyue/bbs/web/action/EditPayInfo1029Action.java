package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfo1029Dto;
import com.shiyue.bbs.service.IPayInfo1029Service;

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
 
@Controller("editPayInfo1029Action")
@Scope("prototype")
public class EditPayInfo1029Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfo1029Service payInfo1029Service;
	private PayInfo1029Dto payInfo1029Dto =new PayInfo1029Dto();;

	public String execute() throws Exception {
		try {
		    
		      PayInfo1029Dto tmpPayInfo1029Dto = new PayInfo1029Dto();
			  tmpPayInfo1029Dto.setOrder_id(payInfo1029Dto.getOrder_id());
			  tmpPayInfo1029Dto.setTrans_mer_id(payInfo1029Dto.getTrans_mer_id());
			  tmpPayInfo1029Dto.setTrans_ter_id(payInfo1029Dto.getTrans_ter_id());
			  tmpPayInfo1029Dto.setChannel_type(payInfo1029Dto.getChannel_type());
			  tmpPayInfo1029Dto.setTrans_amt(payInfo1029Dto.getTrans_amt());
			  tmpPayInfo1029Dto.setTrans_cur(payInfo1029Dto.getTrans_cur());
			  tmpPayInfo1029Dto.setTrans_time(payInfo1029Dto.getTrans_time());
			  tmpPayInfo1029Dto.setTrans_status(payInfo1029Dto.getTrans_status());
			  tmpPayInfo1029Dto.setTrans_type(payInfo1029Dto.getTrans_type());
			  tmpPayInfo1029Dto.setRes_code(payInfo1029Dto.getRes_code());
			  tmpPayInfo1029Dto.setRes_desc(payInfo1029Dto.getRes_desc());
			  tmpPayInfo1029Dto.setTrans_trace_time(payInfo1029Dto.getTrans_trace_time());
			  tmpPayInfo1029Dto.setSettle_date(payInfo1029Dto.getSettle_date());
			  tmpPayInfo1029Dto.setSettle_amt(payInfo1029Dto.getSettle_amt());
			  tmpPayInfo1029Dto.setSettle_cur(payInfo1029Dto.getSettle_cur());
			  tmpPayInfo1029Dto.setSettle_conver_rate(payInfo1029Dto.getSettle_conver_rate());
			  tmpPayInfo1029Dto.setMobile(payInfo1029Dto.getMobile());
			  tmpPayInfo1029Dto.setId_type(payInfo1029Dto.getId_type());
			  tmpPayInfo1029Dto.setId_no(payInfo1029Dto.getId_no());
			  tmpPayInfo1029Dto.setUser_name(payInfo1029Dto.getUser_name());
			  tmpPayInfo1029Dto.setBind_num(payInfo1029Dto.getBind_num());
			  tmpPayInfo1029Dto.setPan(payInfo1029Dto.getPan());
			  tmpPayInfo1029Dto.setCard_type(payInfo1029Dto.getCard_type());
			  tmpPayInfo1029Dto.setIssbank_id(payInfo1029Dto.getIssbank_id());
			  tmpPayInfo1029Dto.setIssbank_name(payInfo1029Dto.getIssbank_name());
			  tmpPayInfo1029Dto.setCh_info(payInfo1029Dto.getCh_info());
			  tmpPayInfo1029Dto.setAccount1(payInfo1029Dto.getAccount1());
			  tmpPayInfo1029Dto.setAccount2(payInfo1029Dto.getAccount2());
			  tmpPayInfo1029Dto.setOrg_order_id(payInfo1029Dto.getOrg_order_id());
			  tmpPayInfo1029Dto.setCreate_time(payInfo1029Dto.getCreate_time());
			  tmpPayInfo1029Dto.setModify_time(payInfo1029Dto.getModify_time());
			  tmpPayInfo1029Dto.setReserved(payInfo1029Dto.getReserved());
			  tmpPayInfo1029Dto.setExt(payInfo1029Dto.getExt());
			  tmpPayInfo1029Dto.setCsn(payInfo1029Dto.getCsn());
			  tmpPayInfo1029Dto.setTrans_mer_name(payInfo1029Dto.getTrans_mer_name());
			  tmpPayInfo1029Dto.setSpid(payInfo1029Dto.getSpid());
			  tmpPayInfo1029Dto.setTrack2_data(payInfo1029Dto.getTrack2_data());
			  tmpPayInfo1029Dto.setTrack3_data(payInfo1029Dto.getTrack3_data());
			  tmpPayInfo1029Dto.setIp(payInfo1029Dto.getIp());
			  tmpPayInfo1029Dto.setReference_no(payInfo1029Dto.getReference_no());
			  tmpPayInfo1029Dto.setAuth_no(payInfo1029Dto.getAuth_no());
			  tmpPayInfo1029Dto.setDate_transaction(payInfo1029Dto.getDate_transaction());
			  tmpPayInfo1029Dto.setTime_transaction(payInfo1029Dto.getTime_transaction());
			  tmpPayInfo1029Dto.setTracking_no(payInfo1029Dto.getTracking_no());
			  tmpPayInfo1029Dto.setAccount2_name(payInfo1029Dto.getAccount2_name());
			  tmpPayInfo1029Dto.setBatch_no(payInfo1029Dto.getBatch_no());
			  tmpPayInfo1029Dto.setExt1(payInfo1029Dto.getExt1());
			  tmpPayInfo1029Dto.setExt2(payInfo1029Dto.getExt2());
			  tmpPayInfo1029Dto.setExt3(payInfo1029Dto.getExt3());
			  tmpPayInfo1029Dto.setCreate_date(payInfo1029Dto.getCreate_date());
			  tmpPayInfo1029Dto.setIc_data(payInfo1029Dto.getIc_data());
		
			payInfo1029Service.updatePK(payInfo1029Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfo1029Dto getPayInfo1029Dto() {
		return payInfo1029Dto;
	}

	public final void setStudentDto(PayInfo1029Dto payInfo1029Dto) {
		this.payInfo1029Dto = payInfo1029Dto;
	}

}
