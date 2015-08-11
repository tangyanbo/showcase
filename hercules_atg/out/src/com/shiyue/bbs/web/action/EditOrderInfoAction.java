package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderInfoDto;
import com.shiyue.bbs.service.IOrderInfoService;

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
 
@Controller("editOrderInfoAction")
@Scope("prototype")
public class EditOrderInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderInfoService orderInfoService;
	private OrderInfoDto orderInfoDto =new OrderInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      OrderInfoDto tmpOrderInfoDto = new OrderInfoDto();
			  tmpOrderInfoDto.setOrder_id(orderInfoDto.getOrder_id());
			  tmpOrderInfoDto.setTerminal_id(orderInfoDto.getTerminal_id());
			  tmpOrderInfoDto.setSub_mer_id(orderInfoDto.getSub_mer_id());
			  tmpOrderInfoDto.setMer_sys_id(orderInfoDto.getMer_sys_id());
			  tmpOrderInfoDto.setAgent_id_l2(orderInfoDto.getAgent_id_l2());
			  tmpOrderInfoDto.setAgent_id_l1(orderInfoDto.getAgent_id_l1());
			  tmpOrderInfoDto.setTrans_mer_id(orderInfoDto.getTrans_mer_id());
			  tmpOrderInfoDto.setTrans_type(orderInfoDto.getTrans_type());
			  tmpOrderInfoDto.setTerminal_type(orderInfoDto.getTerminal_type());
			  tmpOrderInfoDto.setMer_order_id(orderInfoDto.getMer_order_id());
			  tmpOrderInfoDto.setMer_order_time(orderInfoDto.getMer_order_time());
			  tmpOrderInfoDto.setMer_amt(orderInfoDto.getMer_amt());
			  tmpOrderInfoDto.setCurrency(orderInfoDto.getCurrency());
			  tmpOrderInfoDto.setOrder_status(orderInfoDto.getOrder_status());
			  tmpOrderInfoDto.setRefund_status(orderInfoDto.getRefund_status());
			  tmpOrderInfoDto.setOrg_order_id(orderInfoDto.getOrg_order_id());
			  tmpOrderInfoDto.setCard_no(orderInfoDto.getCard_no());
			  tmpOrderInfoDto.setCard_type(orderInfoDto.getCard_type());
			  tmpOrderInfoDto.setIssue_bank_id(orderInfoDto.getIssue_bank_id());
			  tmpOrderInfoDto.setIssue_bank_name(orderInfoDto.getIssue_bank_name());
			  tmpOrderInfoDto.setUser_mobile(orderInfoDto.getUser_mobile());
			  tmpOrderInfoDto.setBack_url(orderInfoDto.getBack_url());
			  tmpOrderInfoDto.setTrans_time(orderInfoDto.getTrans_time());
			  tmpOrderInfoDto.setFinish_time(orderInfoDto.getFinish_time());
			  tmpOrderInfoDto.setUser_ip(orderInfoDto.getUser_ip());
			  tmpOrderInfoDto.setBatch_no(orderInfoDto.getBatch_no());
			  tmpOrderInfoDto.setReffer_no(orderInfoDto.getReffer_no());
			  tmpOrderInfoDto.setAuth_no(orderInfoDto.getAuth_no());
			  tmpOrderInfoDto.setVoucher_no(orderInfoDto.getVoucher_no());
			  tmpOrderInfoDto.setSettle_date(orderInfoDto.getSettle_date());
			  tmpOrderInfoDto.setSettle_cur(orderInfoDto.getSettle_cur());
			  tmpOrderInfoDto.setResp_code(orderInfoDto.getResp_code());
			  tmpOrderInfoDto.setResp_desc(orderInfoDto.getResp_desc());
			  tmpOrderInfoDto.setRemark(orderInfoDto.getRemark());
			  tmpOrderInfoDto.setReserved(orderInfoDto.getReserved());
			  tmpOrderInfoDto.setAccount_name(orderInfoDto.getAccount_name());
			  tmpOrderInfoDto.setAccount2_no(orderInfoDto.getAccount2_no());
			  tmpOrderInfoDto.setAccount2_name(orderInfoDto.getAccount2_name());
			  tmpOrderInfoDto.setAccount2_bank(orderInfoDto.getAccount2_bank());
			  tmpOrderInfoDto.setCreate_date(orderInfoDto.getCreate_date());
			  tmpOrderInfoDto.setFull_card_no(orderInfoDto.getFull_card_no());
			  tmpOrderInfoDto.setOrder_rate_type(orderInfoDto.getOrder_rate_type());
			  tmpOrderInfoDto.setTrans_mer_name(orderInfoDto.getTrans_mer_name());
			  tmpOrderInfoDto.setReserved1(orderInfoDto.getReserved1());
			  tmpOrderInfoDto.setReserved2(orderInfoDto.getReserved2());
			  tmpOrderInfoDto.setReserved3(orderInfoDto.getReserved3());
			  tmpOrderInfoDto.setSettle_status(orderInfoDto.getSettle_status());
		
			orderInfoService.updatePK(orderInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderInfoDto getOrderInfoDto() {
		return orderInfoDto;
	}

	public final void setStudentDto(OrderInfoDto orderInfoDto) {
		this.orderInfoDto = orderInfoDto;
	}

}
