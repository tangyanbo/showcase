package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderInfo1Dto;
import com.shiyue.bbs.service.IOrderInfo1Service;

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
 
@Controller("editOrderInfo1Action")
@Scope("prototype")
public class EditOrderInfo1Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderInfo1Service orderInfo1Service;
	private OrderInfo1Dto orderInfo1Dto =new OrderInfo1Dto();;

	public String execute() throws Exception {
		try {
		    
		      OrderInfo1Dto tmpOrderInfo1Dto = new OrderInfo1Dto();
			  tmpOrderInfo1Dto.setOrder_id(orderInfo1Dto.getOrder_id());
			  tmpOrderInfo1Dto.setTerminal_id(orderInfo1Dto.getTerminal_id());
			  tmpOrderInfo1Dto.setSub_mer_id(orderInfo1Dto.getSub_mer_id());
			  tmpOrderInfo1Dto.setMer_sys_id(orderInfo1Dto.getMer_sys_id());
			  tmpOrderInfo1Dto.setAgent_id_l2(orderInfo1Dto.getAgent_id_l2());
			  tmpOrderInfo1Dto.setAgent_id_l1(orderInfo1Dto.getAgent_id_l1());
			  tmpOrderInfo1Dto.setTrans_mer_id(orderInfo1Dto.getTrans_mer_id());
			  tmpOrderInfo1Dto.setTrans_type(orderInfo1Dto.getTrans_type());
			  tmpOrderInfo1Dto.setTerminal_type(orderInfo1Dto.getTerminal_type());
			  tmpOrderInfo1Dto.setMer_order_id(orderInfo1Dto.getMer_order_id());
			  tmpOrderInfo1Dto.setMer_order_time(orderInfo1Dto.getMer_order_time());
			  tmpOrderInfo1Dto.setMer_amt(orderInfo1Dto.getMer_amt());
			  tmpOrderInfo1Dto.setCurrency(orderInfo1Dto.getCurrency());
			  tmpOrderInfo1Dto.setOrder_status(orderInfo1Dto.getOrder_status());
			  tmpOrderInfo1Dto.setRefund_status(orderInfo1Dto.getRefund_status());
			  tmpOrderInfo1Dto.setOrg_order_id(orderInfo1Dto.getOrg_order_id());
			  tmpOrderInfo1Dto.setCard_no(orderInfo1Dto.getCard_no());
			  tmpOrderInfo1Dto.setCard_type(orderInfo1Dto.getCard_type());
			  tmpOrderInfo1Dto.setIssue_bank_id(orderInfo1Dto.getIssue_bank_id());
			  tmpOrderInfo1Dto.setIssue_bank_name(orderInfo1Dto.getIssue_bank_name());
			  tmpOrderInfo1Dto.setUser_mobile(orderInfo1Dto.getUser_mobile());
			  tmpOrderInfo1Dto.setBack_url(orderInfo1Dto.getBack_url());
			  tmpOrderInfo1Dto.setTrans_time(orderInfo1Dto.getTrans_time());
			  tmpOrderInfo1Dto.setFinish_time(orderInfo1Dto.getFinish_time());
			  tmpOrderInfo1Dto.setUser_ip(orderInfo1Dto.getUser_ip());
			  tmpOrderInfo1Dto.setBatch_no(orderInfo1Dto.getBatch_no());
			  tmpOrderInfo1Dto.setReffer_no(orderInfo1Dto.getReffer_no());
			  tmpOrderInfo1Dto.setAuth_no(orderInfo1Dto.getAuth_no());
			  tmpOrderInfo1Dto.setVoucher_no(orderInfo1Dto.getVoucher_no());
			  tmpOrderInfo1Dto.setSettle_date(orderInfo1Dto.getSettle_date());
			  tmpOrderInfo1Dto.setResp_code(orderInfo1Dto.getResp_code());
			  tmpOrderInfo1Dto.setResp_desc(orderInfo1Dto.getResp_desc());
			  tmpOrderInfo1Dto.setRemark(orderInfo1Dto.getRemark());
			  tmpOrderInfo1Dto.setReserved(orderInfo1Dto.getReserved());
			  tmpOrderInfo1Dto.setAccount_name(orderInfo1Dto.getAccount_name());
			  tmpOrderInfo1Dto.setAccount2_no(orderInfo1Dto.getAccount2_no());
			  tmpOrderInfo1Dto.setAccount2_name(orderInfo1Dto.getAccount2_name());
			  tmpOrderInfo1Dto.setAccount2_bank(orderInfo1Dto.getAccount2_bank());
			  tmpOrderInfo1Dto.setCreate_date(orderInfo1Dto.getCreate_date());
			  tmpOrderInfo1Dto.setFull_card_no(orderInfo1Dto.getFull_card_no());
			  tmpOrderInfo1Dto.setOrder_rate_type(orderInfo1Dto.getOrder_rate_type());
			  tmpOrderInfo1Dto.setReserved1(orderInfo1Dto.getReserved1());
			  tmpOrderInfo1Dto.setReserved2(orderInfo1Dto.getReserved2());
			  tmpOrderInfo1Dto.setReserved3(orderInfo1Dto.getReserved3());
			  tmpOrderInfo1Dto.setSettle_status(orderInfo1Dto.getSettle_status());
			  tmpOrderInfo1Dto.setTrans_mer_name(orderInfo1Dto.getTrans_mer_name());
		
			orderInfo1Service.updatePK(orderInfo1Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderInfo1Dto getOrderInfo1Dto() {
		return orderInfo1Dto;
	}

	public final void setStudentDto(OrderInfo1Dto orderInfo1Dto) {
		this.orderInfo1Dto = orderInfo1Dto;
	}

}
