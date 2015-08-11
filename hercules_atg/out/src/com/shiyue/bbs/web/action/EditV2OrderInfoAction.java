package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2OrderInfoDto;
import com.shiyue.bbs.service.IV2OrderInfoService;

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
 
@Controller("editV2OrderInfoAction")
@Scope("prototype")
public class EditV2OrderInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2OrderInfoService v2OrderInfoService;
	private V2OrderInfoDto v2OrderInfoDto =new V2OrderInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      V2OrderInfoDto tmpV2OrderInfoDto = new V2OrderInfoDto();
			  tmpV2OrderInfoDto.setOrder_id(v2OrderInfoDto.getOrder_id());
			  tmpV2OrderInfoDto.setBatch_id(v2OrderInfoDto.getBatch_id());
			  tmpV2OrderInfoDto.setBus_mer_id(v2OrderInfoDto.getBus_mer_id());
			  tmpV2OrderInfoDto.setMer_type(v2OrderInfoDto.getMer_type());
			  tmpV2OrderInfoDto.setTrans_mer_id(v2OrderInfoDto.getTrans_mer_id());
			  tmpV2OrderInfoDto.setGw_type(v2OrderInfoDto.getGw_type());
			  tmpV2OrderInfoDto.setBus_type(v2OrderInfoDto.getBus_type());
			  tmpV2OrderInfoDto.setTrans_type(v2OrderInfoDto.getTrans_type());
			  tmpV2OrderInfoDto.setMer_order_id(v2OrderInfoDto.getMer_order_id());
			  tmpV2OrderInfoDto.setMer_order_time(v2OrderInfoDto.getMer_order_time());
			  tmpV2OrderInfoDto.setMer_amt(v2OrderInfoDto.getMer_amt());
			  tmpV2OrderInfoDto.setCur(v2OrderInfoDto.getCur());
			  tmpV2OrderInfoDto.setOrder_desc(v2OrderInfoDto.getOrder_desc());
			  tmpV2OrderInfoDto.setOrder_over_time(v2OrderInfoDto.getOrder_over_time());
			  tmpV2OrderInfoDto.setOrder_status(v2OrderInfoDto.getOrder_status());
			  tmpV2OrderInfoDto.setCard_no(v2OrderInfoDto.getCard_no());
			  tmpV2OrderInfoDto.setIssbank_id(v2OrderInfoDto.getIssbank_id());
			  tmpV2OrderInfoDto.setIssbank_name(v2OrderInfoDto.getIssbank_name());
			  tmpV2OrderInfoDto.setCard_type(v2OrderInfoDto.getCard_type());
			  tmpV2OrderInfoDto.setOrg_order_id(v2OrderInfoDto.getOrg_order_id());
			  tmpV2OrderInfoDto.setRefund_status(v2OrderInfoDto.getRefund_status());
			  tmpV2OrderInfoDto.setRefund_amt(v2OrderInfoDto.getRefund_amt());
			  tmpV2OrderInfoDto.setFront_url(v2OrderInfoDto.getFront_url());
			  tmpV2OrderInfoDto.setBack_url(v2OrderInfoDto.getBack_url());
			  tmpV2OrderInfoDto.setTrans_time(v2OrderInfoDto.getTrans_time());
			  tmpV2OrderInfoDto.setCreate_time(v2OrderInfoDto.getCreate_time());
			  tmpV2OrderInfoDto.setFinish_time(v2OrderInfoDto.getFinish_time());
			  tmpV2OrderInfoDto.setUser_id(v2OrderInfoDto.getUser_id());
			  tmpV2OrderInfoDto.setUser_name(v2OrderInfoDto.getUser_name());
			  tmpV2OrderInfoDto.setId_type(v2OrderInfoDto.getId_type());
			  tmpV2OrderInfoDto.setId_no(v2OrderInfoDto.getId_no());
			  tmpV2OrderInfoDto.setUser_mobile(v2OrderInfoDto.getUser_mobile());
			  tmpV2OrderInfoDto.setUser_ip(v2OrderInfoDto.getUser_ip());
			  tmpV2OrderInfoDto.setGw_invoke_cmd(v2OrderInfoDto.getGw_invoke_cmd());
			  tmpV2OrderInfoDto.setAccount1(v2OrderInfoDto.getAccount1());
			  tmpV2OrderInfoDto.setAccount2(v2OrderInfoDto.getAccount2());
			  tmpV2OrderInfoDto.setSettle_date(v2OrderInfoDto.getSettle_date());
			  tmpV2OrderInfoDto.setSettle_amt(v2OrderInfoDto.getSettle_amt());
			  tmpV2OrderInfoDto.setSettle_cur(v2OrderInfoDto.getSettle_cur());
			  tmpV2OrderInfoDto.setSettle_conver_rate(v2OrderInfoDto.getSettle_conver_rate());
			  tmpV2OrderInfoDto.setTrans_fee(v2OrderInfoDto.getTrans_fee());
			  tmpV2OrderInfoDto.setTract_cost(v2OrderInfoDto.getTract_cost());
			  tmpV2OrderInfoDto.setAcqbank_profit(v2OrderInfoDto.getAcqbank_profit());
			  tmpV2OrderInfoDto.setAgent_profit(v2OrderInfoDto.getAgent_profit());
			  tmpV2OrderInfoDto.setBypay_profit(v2OrderInfoDto.getBypay_profit());
			  tmpV2OrderInfoDto.setError_code(v2OrderInfoDto.getError_code());
			  tmpV2OrderInfoDto.setReserved(v2OrderInfoDto.getReserved());
			  tmpV2OrderInfoDto.setExt(v2OrderInfoDto.getExt());
			  tmpV2OrderInfoDto.setTract_fee(v2OrderInfoDto.getTract_fee());
			  tmpV2OrderInfoDto.setGross_profit(v2OrderInfoDto.getGross_profit());
			  tmpV2OrderInfoDto.setMer_settle_amt(v2OrderInfoDto.getMer_settle_amt());
			  tmpV2OrderInfoDto.setTrans_cost(v2OrderInfoDto.getTrans_cost());
			  tmpV2OrderInfoDto.setProxy_id(v2OrderInfoDto.getProxy_id());
			  tmpV2OrderInfoDto.setPay_tract(v2OrderInfoDto.getPay_tract());
			  tmpV2OrderInfoDto.setMer_short_name(v2OrderInfoDto.getMer_short_name());
			  tmpV2OrderInfoDto.setBypay_fee(v2OrderInfoDto.getBypay_fee());
			  tmpV2OrderInfoDto.setMer_sys_id(v2OrderInfoDto.getMer_sys_id());
			  tmpV2OrderInfoDto.setTerminal_serial_number(v2OrderInfoDto.getTerminal_serial_number());
			  tmpV2OrderInfoDto.setError_desc(v2OrderInfoDto.getError_desc());
			  tmpV2OrderInfoDto.setSub_mer_id(v2OrderInfoDto.getSub_mer_id());
			  tmpV2OrderInfoDto.setAgent_l2_profit(v2OrderInfoDto.getAgent_l2_profit());
			  tmpV2OrderInfoDto.setRates_type(v2OrderInfoDto.getRates_type());
			  tmpV2OrderInfoDto.setSett_status(v2OrderInfoDto.getSett_status());
			  tmpV2OrderInfoDto.setClear_status(v2OrderInfoDto.getClear_status());
			  tmpV2OrderInfoDto.setClear_date(v2OrderInfoDto.getClear_date());
		
			v2OrderInfoService.updatePK(v2OrderInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2OrderInfoDto getV2OrderInfoDto() {
		return v2OrderInfoDto;
	}

	public final void setStudentDto(V2OrderInfoDto v2OrderInfoDto) {
		this.v2OrderInfoDto = v2OrderInfoDto;
	}

}
