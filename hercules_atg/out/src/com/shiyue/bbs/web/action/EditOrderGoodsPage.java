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
 
@Controller("editOrderGoodsPage")
@Scope("prototype")
public class EditOrderGoodsPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IOrderGoodsService orderGoodsService;
	
	//入参
	private  String     pkid;
	
	//出参
	private OrderGoodsDto orderGoodsDto;

	
	public String execute() throws Exception {
		try {
		    OrderGoodsDto paramOrderGoodsDto = new OrderGoodsDto();
		//设置主键
			orderGoodsDto = orderGoodsService.getRow(paramOrderGoodsDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
