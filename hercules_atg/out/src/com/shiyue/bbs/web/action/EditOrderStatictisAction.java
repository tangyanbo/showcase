package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderStatictisDto;
import com.shiyue.bbs.service.IOrderStatictisService;

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
 
@Controller("editOrderStatictisAction")
@Scope("prototype")
public class EditOrderStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderStatictisService orderStatictisService;
	private OrderStatictisDto orderStatictisDto =new OrderStatictisDto();;

	public String execute() throws Exception {
		try {
		    
		      OrderStatictisDto tmpOrderStatictisDto = new OrderStatictisDto();
			  tmpOrderStatictisDto.setSerial_no(orderStatictisDto.getSerial_no());
			  tmpOrderStatictisDto.setOrder_id(orderStatictisDto.getOrder_id());
			  tmpOrderStatictisDto.setSub_mer_id(orderStatictisDto.getSub_mer_id());
			  tmpOrderStatictisDto.setMer_amt(orderStatictisDto.getMer_amt());
			  tmpOrderStatictisDto.setTrans_fee(orderStatictisDto.getTrans_fee());
			  tmpOrderStatictisDto.setClear_amt(orderStatictisDto.getClear_amt());
			  tmpOrderStatictisDto.setClear_type(orderStatictisDto.getClear_type());
			  tmpOrderStatictisDto.setClear_tract(orderStatictisDto.getClear_tract());
			  tmpOrderStatictisDto.setClear_time(orderStatictisDto.getClear_time());
			  tmpOrderStatictisDto.setCreate_time(orderStatictisDto.getCreate_time());
			  tmpOrderStatictisDto.setTrans_type(orderStatictisDto.getTrans_type());
			  tmpOrderStatictisDto.setSettle_date(orderStatictisDto.getSettle_date());
			  tmpOrderStatictisDto.setReserved(orderStatictisDto.getReserved());
			  tmpOrderStatictisDto.setCreate_date(orderStatictisDto.getCreate_date());
			  tmpOrderStatictisDto.setClear_batch_no(orderStatictisDto.getClear_batch_no());
		
			orderStatictisService.updatePK(orderStatictisDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderStatictisDto getOrderStatictisDto() {
		return orderStatictisDto;
	}

	public final void setStudentDto(OrderStatictisDto orderStatictisDto) {
		this.orderStatictisDto = orderStatictisDto;
	}

}
