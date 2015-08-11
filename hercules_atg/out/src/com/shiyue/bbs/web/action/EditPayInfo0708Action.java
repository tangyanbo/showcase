package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfo0708Dto;
import com.shiyue.bbs.service.IPayInfo0708Service;

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
 
@Controller("editPayInfo0708Action")
@Scope("prototype")
public class EditPayInfo0708Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfo0708Service payInfo0708Service;
	private PayInfo0708Dto payInfo0708Dto =new PayInfo0708Dto();;

	public String execute() throws Exception {
		try {
		    
		      PayInfo0708Dto tmpPayInfo0708Dto = new PayInfo0708Dto();
			  tmpPayInfo0708Dto.setOrder_id(payInfo0708Dto.getOrder_id());
			  tmpPayInfo0708Dto.setTrans_mer_id(payInfo0708Dto.getTrans_mer_id());
			  tmpPayInfo0708Dto.setTrans_ter_id(payInfo0708Dto.getTrans_ter_id());
			  tmpPayInfo0708Dto.setChannel_type(payInfo0708Dto.getChannel_type());
			  tmpPayInfo0708Dto.setTrans_amt(payInfo0708Dto.getTrans_amt());
			  tmpPayInfo0708Dto.setTrans_cur(payInfo0708Dto.getTrans_cur());
			  tmpPayInfo0708Dto.setTrans_time(payInfo0708Dto.getTrans_time());
			  tmpPayInfo0708Dto.setTrans_status(payInfo0708Dto.getTrans_status());
			  tmpPayInfo0708Dto.setTrans_type(payInfo0708Dto.getTrans_type());
			  tmpPayInfo0708Dto.setRes_code(payInfo0708Dto.getRes_code());
			  tmpPayInfo0708Dto.setRes_desc(payInfo0708Dto.getRes_desc());
			  tmpPayInfo0708Dto.setTrans_trace_time(payInfo0708Dto.getTrans_trace_time());
			  tmpPayInfo0708Dto.setSettle_date(payInfo0708Dto.getSettle_date());
			  tmpPayInfo0708Dto.setSettle_amt(payInfo0708Dto.getSettle_amt());
			  tmpPayInfo0708Dto.setSettle_cur(payInfo0708Dto.getSettle_cur());
			  tmpPayInfo0708Dto.setSettle_conver_rate(payInfo0708Dto.getSettle_conver_rate());
			  tmpPayInfo0708Dto.setMobile(payInfo0708Dto.getMobile());
			  tmpPayInfo0708Dto.setId_type(payInfo0708Dto.getId_type());
			  tmpPayInfo0708Dto.setId_no(payInfo0708Dto.getId_no());
			  tmpPayInfo0708Dto.setUser_name(payInfo0708Dto.getUser_name());
			  tmpPayInfo0708Dto.setBind_num(payInfo0708Dto.getBind_num());
			  tmpPayInfo0708Dto.setPan(payInfo0708Dto.getPan());
			  tmpPayInfo0708Dto.setCard_type(payInfo0708Dto.getCard_type());
			  tmpPayInfo0708Dto.setIssbank_id(payInfo0708Dto.getIssbank_id());
			  tmpPayInfo0708Dto.setIssbank_name(payInfo0708Dto.getIssbank_name());
			  tmpPayInfo0708Dto.setCh_info(payInfo0708Dto.getCh_info());
			  tmpPayInfo0708Dto.setAccount1(payInfo0708Dto.getAccount1());
			  tmpPayInfo0708Dto.setAccount2(payInfo0708Dto.getAccount2());
			  tmpPayInfo0708Dto.setOrg_order_id(payInfo0708Dto.getOrg_order_id());
			  tmpPayInfo0708Dto.setCreate_time(payInfo0708Dto.getCreate_time());
			  tmpPayInfo0708Dto.setModify_time(payInfo0708Dto.getModify_time());
			  tmpPayInfo0708Dto.setReserved(payInfo0708Dto.getReserved());
			  tmpPayInfo0708Dto.setExt(payInfo0708Dto.getExt());
			  tmpPayInfo0708Dto.setCsn(payInfo0708Dto.getCsn());
			  tmpPayInfo0708Dto.setTrans_mer_name(payInfo0708Dto.getTrans_mer_name());
			  tmpPayInfo0708Dto.setSpid(payInfo0708Dto.getSpid());
			  tmpPayInfo0708Dto.setTrack2_data(payInfo0708Dto.getTrack2_data());
			  tmpPayInfo0708Dto.setTrack3_data(payInfo0708Dto.getTrack3_data());
			  tmpPayInfo0708Dto.setIp(payInfo0708Dto.getIp());
			  tmpPayInfo0708Dto.setReference_no(payInfo0708Dto.getReference_no());
			  tmpPayInfo0708Dto.setAuth_no(payInfo0708Dto.getAuth_no());
			  tmpPayInfo0708Dto.setDate_transaction(payInfo0708Dto.getDate_transaction());
			  tmpPayInfo0708Dto.setTime_transaction(payInfo0708Dto.getTime_transaction());
			  tmpPayInfo0708Dto.setTracking_no(payInfo0708Dto.getTracking_no());
			  tmpPayInfo0708Dto.setAccount2_name(payInfo0708Dto.getAccount2_name());
			  tmpPayInfo0708Dto.setBatch_no(payInfo0708Dto.getBatch_no());
			  tmpPayInfo0708Dto.setExt1(payInfo0708Dto.getExt1());
			  tmpPayInfo0708Dto.setExt2(payInfo0708Dto.getExt2());
			  tmpPayInfo0708Dto.setExt3(payInfo0708Dto.getExt3());
			  tmpPayInfo0708Dto.setIc_no(payInfo0708Dto.getIc_no());
			  tmpPayInfo0708Dto.setIc_data(payInfo0708Dto.getIc_data());
		
			payInfo0708Service.updatePK(payInfo0708Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfo0708Dto getPayInfo0708Dto() {
		return payInfo0708Dto;
	}

	public final void setStudentDto(PayInfo0708Dto payInfo0708Dto) {
		this.payInfo0708Dto = payInfo0708Dto;
	}

}
