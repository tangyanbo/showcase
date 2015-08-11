package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.OrderGoodsDto;
import com.shiyue.bbs.service.IOrderGoodsService;

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
 
@Controller("editOrderGoodsAction")
@Scope("prototype")
public class EditOrderGoodsAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderGoodsService orderGoodsService;
	private OrderGoodsDto orderGoodsDto =new OrderGoodsDto();;

	public String execute() throws Exception {
		try {
		    
		      OrderGoodsDto tmpOrderGoodsDto = new OrderGoodsDto();
			  tmpOrderGoodsDto.setOrder_id(orderGoodsDto.getOrder_id());
			  tmpOrderGoodsDto.setGoods_type(orderGoodsDto.getGoods_type());
			  tmpOrderGoodsDto.setCarrier_oprator(orderGoodsDto.getCarrier_oprator());
			  tmpOrderGoodsDto.setGoods_name(orderGoodsDto.getGoods_name());
			  tmpOrderGoodsDto.setGoods_desc(orderGoodsDto.getGoods_desc());
			  tmpOrderGoodsDto.setQuantity(orderGoodsDto.getQuantity());
			  tmpOrderGoodsDto.setPrice(orderGoodsDto.getPrice());
			  tmpOrderGoodsDto.setDiscount_price(orderGoodsDto.getDiscount_price());
			  tmpOrderGoodsDto.setTrans_fee(orderGoodsDto.getTrans_fee());
			  tmpOrderGoodsDto.setStatus(orderGoodsDto.getStatus());
			  tmpOrderGoodsDto.setSerial_num(orderGoodsDto.getSerial_num());
		
			orderGoodsService.updatePK(orderGoodsDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final OrderGoodsDto getOrderGoodsDto() {
		return orderGoodsDto;
	}

	public final void setStudentDto(OrderGoodsDto orderGoodsDto) {
		this.orderGoodsDto = orderGoodsDto;
	}

}
