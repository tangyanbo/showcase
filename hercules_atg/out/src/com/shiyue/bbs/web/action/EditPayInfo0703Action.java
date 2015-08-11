package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfo0703Dto;
import com.shiyue.bbs.service.IPayInfo0703Service;

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
 
@Controller("editPayInfo0703Action")
@Scope("prototype")
public class EditPayInfo0703Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfo0703Service payInfo0703Service;
	private PayInfo0703Dto payInfo0703Dto =new PayInfo0703Dto();;

	public String execute() throws Exception {
		try {
		    
		      PayInfo0703Dto tmpPayInfo0703Dto = new PayInfo0703Dto();
			  tmpPayInfo0703Dto.setOrder_id(payInfo0703Dto.getOrder_id());
			  tmpPayInfo0703Dto.setTrans_mer_id(payInfo0703Dto.getTrans_mer_id());
			  tmpPayInfo0703Dto.setTrans_ter_id(payInfo0703Dto.getTrans_ter_id());
			  tmpPayInfo0703Dto.setChannel_type(payInfo0703Dto.getChannel_type());
			  tmpPayInfo0703Dto.setTrans_amt(payInfo0703Dto.getTrans_amt());
			  tmpPayInfo0703Dto.setTrans_cur(payInfo0703Dto.getTrans_cur());
			  tmpPayInfo0703Dto.setTrans_time(payInfo0703Dto.getTrans_time());
			  tmpPayInfo0703Dto.setTrans_status(payInfo0703Dto.getTrans_status());
			  tmpPayInfo0703Dto.setTrans_type(payInfo0703Dto.getTrans_type());
			  tmpPayInfo0703Dto.setRes_code(payInfo0703Dto.getRes_code());
			  tmpPayInfo0703Dto.setRes_desc(payInfo0703Dto.getRes_desc());
			  tmpPayInfo0703Dto.setTrans_trace_time(payInfo0703Dto.getTrans_trace_time());
			  tmpPayInfo0703Dto.setSettle_date(payInfo0703Dto.getSettle_date());
			  tmpPayInfo0703Dto.setSettle_amt(payInfo0703Dto.getSettle_amt());
			  tmpPayInfo0703Dto.setSettle_cur(payInfo0703Dto.getSettle_cur());
			  tmpPayInfo0703Dto.setSettle_conver_rate(payInfo0703Dto.getSettle_conver_rate());
			  tmpPayInfo0703Dto.setMobile(payInfo0703Dto.getMobile());
			  tmpPayInfo0703Dto.setId_type(payInfo0703Dto.getId_type());
			  tmpPayInfo0703Dto.setId_no(payInfo0703Dto.getId_no());
			  tmpPayInfo0703Dto.setUser_name(payInfo0703Dto.getUser_name());
			  tmpPayInfo0703Dto.setBind_num(payInfo0703Dto.getBind_num());
			  tmpPayInfo0703Dto.setPan(payInfo0703Dto.getPan());
			  tmpPayInfo0703Dto.setCard_type(payInfo0703Dto.getCard_type());
			  tmpPayInfo0703Dto.setIssbank_id(payInfo0703Dto.getIssbank_id());
			  tmpPayInfo0703Dto.setIssbank_name(payInfo0703Dto.getIssbank_name());
			  tmpPayInfo0703Dto.setCh_info(payInfo0703Dto.getCh_info());
			  tmpPayInfo0703Dto.setAccount1(payInfo0703Dto.getAccount1());
			  tmpPayInfo0703Dto.setAccount2(payInfo0703Dto.getAccount2());
			  tmpPayInfo0703Dto.setOrg_order_id(payInfo0703Dto.getOrg_order_id());
			  tmpPayInfo0703Dto.setCreate_time(payInfo0703Dto.getCreate_time());
			  tmpPayInfo0703Dto.setModify_time(payInfo0703Dto.getModify_time());
			  tmpPayInfo0703Dto.setReserved(payInfo0703Dto.getReserved());
			  tmpPayInfo0703Dto.setExt(payInfo0703Dto.getExt());
			  tmpPayInfo0703Dto.setCsn(payInfo0703Dto.getCsn());
			  tmpPayInfo0703Dto.setTrans_mer_name(payInfo0703Dto.getTrans_mer_name());
			  tmpPayInfo0703Dto.setSpid(payInfo0703Dto.getSpid());
			  tmpPayInfo0703Dto.setTrack2_data(payInfo0703Dto.getTrack2_data());
			  tmpPayInfo0703Dto.setTrack3_data(payInfo0703Dto.getTrack3_data());
			  tmpPayInfo0703Dto.setIp(payInfo0703Dto.getIp());
			  tmpPayInfo0703Dto.setReference_no(payInfo0703Dto.getReference_no());
			  tmpPayInfo0703Dto.setAuth_no(payInfo0703Dto.getAuth_no());
			  tmpPayInfo0703Dto.setDate_transaction(payInfo0703Dto.getDate_transaction());
			  tmpPayInfo0703Dto.setTime_transaction(payInfo0703Dto.getTime_transaction());
			  tmpPayInfo0703Dto.setTracking_no(payInfo0703Dto.getTracking_no());
			  tmpPayInfo0703Dto.setAccount2_name(payInfo0703Dto.getAccount2_name());
			  tmpPayInfo0703Dto.setBatch_no(payInfo0703Dto.getBatch_no());
			  tmpPayInfo0703Dto.setExt1(payInfo0703Dto.getExt1());
			  tmpPayInfo0703Dto.setExt2(payInfo0703Dto.getExt2());
			  tmpPayInfo0703Dto.setExt3(payInfo0703Dto.getExt3());
			  tmpPayInfo0703Dto.setIc_no(payInfo0703Dto.getIc_no());
			  tmpPayInfo0703Dto.setIc_data(payInfo0703Dto.getIc_data());
		
			payInfo0703Service.updatePK(payInfo0703Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfo0703Dto getPayInfo0703Dto() {
		return payInfo0703Dto;
	}

	public final void setStudentDto(PayInfo0703Dto payInfo0703Dto) {
		this.payInfo0703Dto = payInfo0703Dto;
	}

}
