package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SucPayInfoNew1102Dto;
import com.shiyue.bbs.service.ISucPayInfoNew1102Service;

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
 
@Controller("editSucPayInfoNew1102Action")
@Scope("prototype")
public class EditSucPayInfoNew1102Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISucPayInfoNew1102Service sucPayInfoNew1102Service;
	private SucPayInfoNew1102Dto sucPayInfoNew1102Dto =new SucPayInfoNew1102Dto();;

	public String execute() throws Exception {
		try {
		    
		      SucPayInfoNew1102Dto tmpSucPayInfoNew1102Dto = new SucPayInfoNew1102Dto();
			  tmpSucPayInfoNew1102Dto.setOrder_id(sucPayInfoNew1102Dto.getOrder_id());
			  tmpSucPayInfoNew1102Dto.setTrans_mer_id(sucPayInfoNew1102Dto.getTrans_mer_id());
			  tmpSucPayInfoNew1102Dto.setTrans_ter_id(sucPayInfoNew1102Dto.getTrans_ter_id());
			  tmpSucPayInfoNew1102Dto.setChannel_type(sucPayInfoNew1102Dto.getChannel_type());
			  tmpSucPayInfoNew1102Dto.setTrans_amt(sucPayInfoNew1102Dto.getTrans_amt());
			  tmpSucPayInfoNew1102Dto.setTrans_cur(sucPayInfoNew1102Dto.getTrans_cur());
			  tmpSucPayInfoNew1102Dto.setTrans_time(sucPayInfoNew1102Dto.getTrans_time());
			  tmpSucPayInfoNew1102Dto.setTrans_status(sucPayInfoNew1102Dto.getTrans_status());
			  tmpSucPayInfoNew1102Dto.setTrans_type(sucPayInfoNew1102Dto.getTrans_type());
			  tmpSucPayInfoNew1102Dto.setRes_code(sucPayInfoNew1102Dto.getRes_code());
			  tmpSucPayInfoNew1102Dto.setRes_desc(sucPayInfoNew1102Dto.getRes_desc());
			  tmpSucPayInfoNew1102Dto.setTrans_trace_time(sucPayInfoNew1102Dto.getTrans_trace_time());
			  tmpSucPayInfoNew1102Dto.setSettle_date(sucPayInfoNew1102Dto.getSettle_date());
			  tmpSucPayInfoNew1102Dto.setSettle_amt(sucPayInfoNew1102Dto.getSettle_amt());
			  tmpSucPayInfoNew1102Dto.setSettle_cur(sucPayInfoNew1102Dto.getSettle_cur());
			  tmpSucPayInfoNew1102Dto.setSettle_conver_rate(sucPayInfoNew1102Dto.getSettle_conver_rate());
			  tmpSucPayInfoNew1102Dto.setMobile(sucPayInfoNew1102Dto.getMobile());
			  tmpSucPayInfoNew1102Dto.setId_type(sucPayInfoNew1102Dto.getId_type());
			  tmpSucPayInfoNew1102Dto.setId_no(sucPayInfoNew1102Dto.getId_no());
			  tmpSucPayInfoNew1102Dto.setUser_name(sucPayInfoNew1102Dto.getUser_name());
			  tmpSucPayInfoNew1102Dto.setBind_num(sucPayInfoNew1102Dto.getBind_num());
			  tmpSucPayInfoNew1102Dto.setPan(sucPayInfoNew1102Dto.getPan());
			  tmpSucPayInfoNew1102Dto.setCard_type(sucPayInfoNew1102Dto.getCard_type());
			  tmpSucPayInfoNew1102Dto.setIssbank_id(sucPayInfoNew1102Dto.getIssbank_id());
			  tmpSucPayInfoNew1102Dto.setIssbank_name(sucPayInfoNew1102Dto.getIssbank_name());
			  tmpSucPayInfoNew1102Dto.setCh_info(sucPayInfoNew1102Dto.getCh_info());
			  tmpSucPayInfoNew1102Dto.setAccount1(sucPayInfoNew1102Dto.getAccount1());
			  tmpSucPayInfoNew1102Dto.setAccount2(sucPayInfoNew1102Dto.getAccount2());
			  tmpSucPayInfoNew1102Dto.setOrg_order_id(sucPayInfoNew1102Dto.getOrg_order_id());
			  tmpSucPayInfoNew1102Dto.setCreate_time(sucPayInfoNew1102Dto.getCreate_time());
			  tmpSucPayInfoNew1102Dto.setModify_time(sucPayInfoNew1102Dto.getModify_time());
			  tmpSucPayInfoNew1102Dto.setReserved(sucPayInfoNew1102Dto.getReserved());
			  tmpSucPayInfoNew1102Dto.setExt(sucPayInfoNew1102Dto.getExt());
			  tmpSucPayInfoNew1102Dto.setCsn(sucPayInfoNew1102Dto.getCsn());
			  tmpSucPayInfoNew1102Dto.setTrans_mer_name(sucPayInfoNew1102Dto.getTrans_mer_name());
			  tmpSucPayInfoNew1102Dto.setSpid(sucPayInfoNew1102Dto.getSpid());
			  tmpSucPayInfoNew1102Dto.setTrack2_data(sucPayInfoNew1102Dto.getTrack2_data());
			  tmpSucPayInfoNew1102Dto.setTrack3_data(sucPayInfoNew1102Dto.getTrack3_data());
			  tmpSucPayInfoNew1102Dto.setIp(sucPayInfoNew1102Dto.getIp());
			  tmpSucPayInfoNew1102Dto.setReference_no(sucPayInfoNew1102Dto.getReference_no());
			  tmpSucPayInfoNew1102Dto.setAuth_no(sucPayInfoNew1102Dto.getAuth_no());
			  tmpSucPayInfoNew1102Dto.setDate_transaction(sucPayInfoNew1102Dto.getDate_transaction());
			  tmpSucPayInfoNew1102Dto.setTime_transaction(sucPayInfoNew1102Dto.getTime_transaction());
			  tmpSucPayInfoNew1102Dto.setTracking_no(sucPayInfoNew1102Dto.getTracking_no());
			  tmpSucPayInfoNew1102Dto.setAccount2_name(sucPayInfoNew1102Dto.getAccount2_name());
			  tmpSucPayInfoNew1102Dto.setBatch_no(sucPayInfoNew1102Dto.getBatch_no());
			  tmpSucPayInfoNew1102Dto.setExt1(sucPayInfoNew1102Dto.getExt1());
			  tmpSucPayInfoNew1102Dto.setExt2(sucPayInfoNew1102Dto.getExt2());
			  tmpSucPayInfoNew1102Dto.setExt3(sucPayInfoNew1102Dto.getExt3());
			  tmpSucPayInfoNew1102Dto.setCreate_date(sucPayInfoNew1102Dto.getCreate_date());
			  tmpSucPayInfoNew1102Dto.setModify_date(sucPayInfoNew1102Dto.getModify_date());
			  tmpSucPayInfoNew1102Dto.setEntry_mode(sucPayInfoNew1102Dto.getEntry_mode());
		
			sucPayInfoNew1102Service.updatePK(sucPayInfoNew1102Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SucPayInfoNew1102Dto getSucPayInfoNew1102Dto() {
		return sucPayInfoNew1102Dto;
	}

	public final void setStudentDto(SucPayInfoNew1102Dto sucPayInfoNew1102Dto) {
		this.sucPayInfoNew1102Dto = sucPayInfoNew1102Dto;
	}

}
