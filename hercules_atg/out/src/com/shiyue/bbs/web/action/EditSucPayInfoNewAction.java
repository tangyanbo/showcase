package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SucPayInfoNewDto;
import com.shiyue.bbs.service.ISucPayInfoNewService;

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
 
@Controller("editSucPayInfoNewAction")
@Scope("prototype")
public class EditSucPayInfoNewAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISucPayInfoNewService sucPayInfoNewService;
	private SucPayInfoNewDto sucPayInfoNewDto =new SucPayInfoNewDto();;

	public String execute() throws Exception {
		try {
		    
		      SucPayInfoNewDto tmpSucPayInfoNewDto = new SucPayInfoNewDto();
			  tmpSucPayInfoNewDto.setOrder_id(sucPayInfoNewDto.getOrder_id());
			  tmpSucPayInfoNewDto.setTrans_mer_id(sucPayInfoNewDto.getTrans_mer_id());
			  tmpSucPayInfoNewDto.setTrans_ter_id(sucPayInfoNewDto.getTrans_ter_id());
			  tmpSucPayInfoNewDto.setChannel_type(sucPayInfoNewDto.getChannel_type());
			  tmpSucPayInfoNewDto.setTrans_amt(sucPayInfoNewDto.getTrans_amt());
			  tmpSucPayInfoNewDto.setTrans_cur(sucPayInfoNewDto.getTrans_cur());
			  tmpSucPayInfoNewDto.setTrans_time(sucPayInfoNewDto.getTrans_time());
			  tmpSucPayInfoNewDto.setTrans_status(sucPayInfoNewDto.getTrans_status());
			  tmpSucPayInfoNewDto.setTrans_type(sucPayInfoNewDto.getTrans_type());
			  tmpSucPayInfoNewDto.setRes_code(sucPayInfoNewDto.getRes_code());
			  tmpSucPayInfoNewDto.setRes_desc(sucPayInfoNewDto.getRes_desc());
			  tmpSucPayInfoNewDto.setTrans_trace_time(sucPayInfoNewDto.getTrans_trace_time());
			  tmpSucPayInfoNewDto.setSettle_date(sucPayInfoNewDto.getSettle_date());
			  tmpSucPayInfoNewDto.setSettle_amt(sucPayInfoNewDto.getSettle_amt());
			  tmpSucPayInfoNewDto.setSettle_cur(sucPayInfoNewDto.getSettle_cur());
			  tmpSucPayInfoNewDto.setSettle_conver_rate(sucPayInfoNewDto.getSettle_conver_rate());
			  tmpSucPayInfoNewDto.setMobile(sucPayInfoNewDto.getMobile());
			  tmpSucPayInfoNewDto.setId_type(sucPayInfoNewDto.getId_type());
			  tmpSucPayInfoNewDto.setId_no(sucPayInfoNewDto.getId_no());
			  tmpSucPayInfoNewDto.setUser_name(sucPayInfoNewDto.getUser_name());
			  tmpSucPayInfoNewDto.setBind_num(sucPayInfoNewDto.getBind_num());
			  tmpSucPayInfoNewDto.setPan(sucPayInfoNewDto.getPan());
			  tmpSucPayInfoNewDto.setCard_type(sucPayInfoNewDto.getCard_type());
			  tmpSucPayInfoNewDto.setIssbank_id(sucPayInfoNewDto.getIssbank_id());
			  tmpSucPayInfoNewDto.setIssbank_name(sucPayInfoNewDto.getIssbank_name());
			  tmpSucPayInfoNewDto.setCh_info(sucPayInfoNewDto.getCh_info());
			  tmpSucPayInfoNewDto.setAccount1(sucPayInfoNewDto.getAccount1());
			  tmpSucPayInfoNewDto.setAccount2(sucPayInfoNewDto.getAccount2());
			  tmpSucPayInfoNewDto.setOrg_order_id(sucPayInfoNewDto.getOrg_order_id());
			  tmpSucPayInfoNewDto.setCreate_time(sucPayInfoNewDto.getCreate_time());
			  tmpSucPayInfoNewDto.setModify_time(sucPayInfoNewDto.getModify_time());
			  tmpSucPayInfoNewDto.setReserved(sucPayInfoNewDto.getReserved());
			  tmpSucPayInfoNewDto.setExt(sucPayInfoNewDto.getExt());
			  tmpSucPayInfoNewDto.setCsn(sucPayInfoNewDto.getCsn());
			  tmpSucPayInfoNewDto.setTrans_mer_name(sucPayInfoNewDto.getTrans_mer_name());
			  tmpSucPayInfoNewDto.setSpid(sucPayInfoNewDto.getSpid());
			  tmpSucPayInfoNewDto.setTrack2_data(sucPayInfoNewDto.getTrack2_data());
			  tmpSucPayInfoNewDto.setTrack3_data(sucPayInfoNewDto.getTrack3_data());
			  tmpSucPayInfoNewDto.setIp(sucPayInfoNewDto.getIp());
			  tmpSucPayInfoNewDto.setReference_no(sucPayInfoNewDto.getReference_no());
			  tmpSucPayInfoNewDto.setAuth_no(sucPayInfoNewDto.getAuth_no());
			  tmpSucPayInfoNewDto.setDate_transaction(sucPayInfoNewDto.getDate_transaction());
			  tmpSucPayInfoNewDto.setTime_transaction(sucPayInfoNewDto.getTime_transaction());
			  tmpSucPayInfoNewDto.setTracking_no(sucPayInfoNewDto.getTracking_no());
			  tmpSucPayInfoNewDto.setAccount2_name(sucPayInfoNewDto.getAccount2_name());
			  tmpSucPayInfoNewDto.setBatch_no(sucPayInfoNewDto.getBatch_no());
			  tmpSucPayInfoNewDto.setExt1(sucPayInfoNewDto.getExt1());
			  tmpSucPayInfoNewDto.setExt2(sucPayInfoNewDto.getExt2());
			  tmpSucPayInfoNewDto.setExt3(sucPayInfoNewDto.getExt3());
			  tmpSucPayInfoNewDto.setCreate_date(sucPayInfoNewDto.getCreate_date());
			  tmpSucPayInfoNewDto.setModify_date(sucPayInfoNewDto.getModify_date());
			  tmpSucPayInfoNewDto.setEntry_mode(sucPayInfoNewDto.getEntry_mode());
		
			sucPayInfoNewService.updatePK(sucPayInfoNewDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SucPayInfoNewDto getSucPayInfoNewDto() {
		return sucPayInfoNewDto;
	}

	public final void setStudentDto(SucPayInfoNewDto sucPayInfoNewDto) {
		this.sucPayInfoNewDto = sucPayInfoNewDto;
	}

}
