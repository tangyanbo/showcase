package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.ErrOrderInfoDto;
import com.shiyue.bbs.service.IErrOrderInfoService;

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
 
@Controller("editErrOrderInfoAction")
@Scope("prototype")
public class EditErrOrderInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IErrOrderInfoService errOrderInfoService;
	private ErrOrderInfoDto errOrderInfoDto =new ErrOrderInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      ErrOrderInfoDto tmpErrOrderInfoDto = new ErrOrderInfoDto();
			  tmpErrOrderInfoDto.setId(errOrderInfoDto.getId());
			  tmpErrOrderInfoDto.setOrder_id(errOrderInfoDto.getOrder_id());
			  tmpErrOrderInfoDto.setTerminal_id(errOrderInfoDto.getTerminal_id());
			  tmpErrOrderInfoDto.setMerchant_id(errOrderInfoDto.getMerchant_id());
			  tmpErrOrderInfoDto.setMerchant_name(errOrderInfoDto.getMerchant_name());
			  tmpErrOrderInfoDto.setTsn(errOrderInfoDto.getTsn());
			  tmpErrOrderInfoDto.setTrans_code(errOrderInfoDto.getTrans_code());
			  tmpErrOrderInfoDto.setMerchant_order_id(errOrderInfoDto.getMerchant_order_id());
			  tmpErrOrderInfoDto.setMerchant_order_time(errOrderInfoDto.getMerchant_order_time());
			  tmpErrOrderInfoDto.setMerchant_order_amt(errOrderInfoDto.getMerchant_order_amt());
			  tmpErrOrderInfoDto.setMerchant_order_currency(errOrderInfoDto.getMerchant_order_currency());
			  tmpErrOrderInfoDto.setPhone_num(errOrderInfoDto.getPhone_num());
			  tmpErrOrderInfoDto.setProduct_type(errOrderInfoDto.getProduct_type());
			  tmpErrOrderInfoDto.setBus_type(errOrderInfoDto.getBus_type());
			  tmpErrOrderInfoDto.setTrans_type(errOrderInfoDto.getTrans_type());
			  tmpErrOrderInfoDto.setTerminal_ip(errOrderInfoDto.getTerminal_ip());
			  tmpErrOrderInfoDto.setUser_ip(errOrderInfoDto.getUser_ip());
			  tmpErrOrderInfoDto.setBatch_no(errOrderInfoDto.getBatch_no());
			  tmpErrOrderInfoDto.setVoucher_no(errOrderInfoDto.getVoucher_no());
			  tmpErrOrderInfoDto.setResp_code(errOrderInfoDto.getResp_code());
			  tmpErrOrderInfoDto.setResp_desc(errOrderInfoDto.getResp_desc());
			  tmpErrOrderInfoDto.setTrans_time(errOrderInfoDto.getTrans_time());
			  tmpErrOrderInfoDto.setCreate_date(errOrderInfoDto.getCreate_date());
			  tmpErrOrderInfoDto.setFull_card_no(errOrderInfoDto.getFull_card_no());
			  tmpErrOrderInfoDto.setFull_card_no2(errOrderInfoDto.getFull_card_no2());
			  tmpErrOrderInfoDto.setReserved1(errOrderInfoDto.getReserved1());
		
			errOrderInfoService.updatePK(errOrderInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final ErrOrderInfoDto getErrOrderInfoDto() {
		return errOrderInfoDto;
	}

	public final void setStudentDto(ErrOrderInfoDto errOrderInfoDto) {
		this.errOrderInfoDto = errOrderInfoDto;
	}

}
