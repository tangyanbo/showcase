package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderInfoBakDto;
import com.shiyue.bbs.service.IOrderInfoBakService;

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
 
@Controller("editOrderInfoBakAction")
@Scope("prototype")
public class EditOrderInfoBakAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderInfoBakService orderInfoBakService;
	private OrderInfoBakDto orderInfoBakDto =new OrderInfoBakDto();;

	public String execute() throws Exception {
		try {
		    
		      OrderInfoBakDto tmpOrderInfoBakDto = new OrderInfoBakDto();
			  tmpOrderInfoBakDto.setOrder_id(orderInfoBakDto.getOrder_id());
			  tmpOrderInfoBakDto.setBatch_id(orderInfoBakDto.getBatch_id());
			  tmpOrderInfoBakDto.setTerminal_id(orderInfoBakDto.getTerminal_id());
			  tmpOrderInfoBakDto.setSub_mer_id(orderInfoBakDto.getSub_mer_id());
			  tmpOrderInfoBakDto.setMer_sys_id(orderInfoBakDto.getMer_sys_id());
			  tmpOrderInfoBakDto.setAgent_id_l2(orderInfoBakDto.getAgent_id_l2());
			  tmpOrderInfoBakDto.setAgent_id_l1(orderInfoBakDto.getAgent_id_l1());
			  tmpOrderInfoBakDto.setTrans_mer_id(orderInfoBakDto.getTrans_mer_id());
			  tmpOrderInfoBakDto.setTrans_type(orderInfoBakDto.getTrans_type());
			  tmpOrderInfoBakDto.setTerminal_type(orderInfoBakDto.getTerminal_type());
			  tmpOrderInfoBakDto.setMer_order_id(orderInfoBakDto.getMer_order_id());
			  tmpOrderInfoBakDto.setMer_order_time(orderInfoBakDto.getMer_order_time());
			  tmpOrderInfoBakDto.setMer_amt(orderInfoBakDto.getMer_amt());
			  tmpOrderInfoBakDto.setOrder_fee(orderInfoBakDto.getOrder_fee());
			  tmpOrderInfoBakDto.setCurrency(orderInfoBakDto.getCurrency());
			  tmpOrderInfoBakDto.setOrder_desc(orderInfoBakDto.getOrder_desc());
			  tmpOrderInfoBakDto.setOrder_over_time(orderInfoBakDto.getOrder_over_time());
			  tmpOrderInfoBakDto.setOrder_status(orderInfoBakDto.getOrder_status());
			  tmpOrderInfoBakDto.setRefund_status(orderInfoBakDto.getRefund_status());
			  tmpOrderInfoBakDto.setOrg_order_id(orderInfoBakDto.getOrg_order_id());
			  tmpOrderInfoBakDto.setOrg_order_amt(orderInfoBakDto.getOrg_order_amt());
			  tmpOrderInfoBakDto.setCard_no(orderInfoBakDto.getCard_no());
			  tmpOrderInfoBakDto.setCard_type(orderInfoBakDto.getCard_type());
			  tmpOrderInfoBakDto.setIssue_bank_id(orderInfoBakDto.getIssue_bank_id());
			  tmpOrderInfoBakDto.setIssue_bank_name(orderInfoBakDto.getIssue_bank_name());
			  tmpOrderInfoBakDto.setUser_mobile(orderInfoBakDto.getUser_mobile());
			  tmpOrderInfoBakDto.setBack_url(orderInfoBakDto.getBack_url());
			  tmpOrderInfoBakDto.setCreate_time(orderInfoBakDto.getCreate_time());
			  tmpOrderInfoBakDto.setTrans_time(orderInfoBakDto.getTrans_time());
			  tmpOrderInfoBakDto.setFinish_time(orderInfoBakDto.getFinish_time());
			  tmpOrderInfoBakDto.setUser_ip(orderInfoBakDto.getUser_ip());
			  tmpOrderInfoBakDto.setBatch_no(orderInfoBakDto.getBatch_no());
			  tmpOrderInfoBakDto.setReffer_no(orderInfoBakDto.getReffer_no());
			  tmpOrderInfoBakDto.setAuth_no(orderInfoBakDto.getAuth_no());
			  tmpOrderInfoBakDto.setVoucher_no(orderInfoBakDto.getVoucher_no());
			  tmpOrderInfoBakDto.setSettle_amt(orderInfoBakDto.getSettle_amt());
			  tmpOrderInfoBakDto.setSettle_date(orderInfoBakDto.getSettle_date());
			  tmpOrderInfoBakDto.setSettle_cur(orderInfoBakDto.getSettle_cur());
			  tmpOrderInfoBakDto.setSettle_conver_rate(orderInfoBakDto.getSettle_conver_rate());
			  tmpOrderInfoBakDto.setTrace_no(orderInfoBakDto.getTrace_no());
			  tmpOrderInfoBakDto.setQid(orderInfoBakDto.getQid());
			  tmpOrderInfoBakDto.setResp_code(orderInfoBakDto.getResp_code());
			  tmpOrderInfoBakDto.setResp_desc(orderInfoBakDto.getResp_desc());
			  tmpOrderInfoBakDto.setRemark(orderInfoBakDto.getRemark());
			  tmpOrderInfoBakDto.setReserved(orderInfoBakDto.getReserved());
			  tmpOrderInfoBakDto.setExt(orderInfoBakDto.getExt());
			  tmpOrderInfoBakDto.setAccount_name(orderInfoBakDto.getAccount_name());
			  tmpOrderInfoBakDto.setAccount2_no(orderInfoBakDto.getAccount2_no());
			  tmpOrderInfoBakDto.setAccount2_name(orderInfoBakDto.getAccount2_name());
			  tmpOrderInfoBakDto.setAccount2_bank(orderInfoBakDto.getAccount2_bank());
			  tmpOrderInfoBakDto.setTrans_fee(orderInfoBakDto.getTrans_fee());
			  tmpOrderInfoBakDto.setBus_type(orderInfoBakDto.getBus_type());
			  tmpOrderInfoBakDto.setCreate_date(orderInfoBakDto.getCreate_date());
			  tmpOrderInfoBakDto.setFull_card_no(orderInfoBakDto.getFull_card_no());
			  tmpOrderInfoBakDto.setOrder_rate_type(orderInfoBakDto.getOrder_rate_type());
			  tmpOrderInfoBakDto.setTrans_mer_name(orderInfoBakDto.getTrans_mer_name());
			  tmpOrderInfoBakDto.setReserved1(orderInfoBakDto.getReserved1());
			  tmpOrderInfoBakDto.setReserved2(orderInfoBakDto.getReserved2());
			  tmpOrderInfoBakDto.setReserved3(orderInfoBakDto.getReserved3());
			  tmpOrderInfoBakDto.setSettle_status(orderInfoBakDto.getSettle_status());
		
			orderInfoBakService.updatePK(orderInfoBakDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderInfoBakDto getOrderInfoBakDto() {
		return orderInfoBakDto;
	}

	public final void setStudentDto(OrderInfoBakDto orderInfoBakDto) {
		this.orderInfoBakDto = orderInfoBakDto;
	}

}
