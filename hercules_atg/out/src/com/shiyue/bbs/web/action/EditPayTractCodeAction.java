package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayTractCodeDto;
import com.shiyue.bbs.service.IPayTractCodeService;

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
 
@Controller("editPayTractCodeAction")
@Scope("prototype")
public class EditPayTractCodeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayTractCodeService payTractCodeService;
	private PayTractCodeDto payTractCodeDto =new PayTractCodeDto();;

	public String execute() throws Exception {
		try {
		    
		      PayTractCodeDto tmpPayTractCodeDto = new PayTractCodeDto();
			  tmpPayTractCodeDto.setId(payTractCodeDto.getId());
			  tmpPayTractCodeDto.setPay_tract_name(payTractCodeDto.getPay_tract_name());
			  tmpPayTractCodeDto.setPay_tract_id(payTractCodeDto.getPay_tract_id());
			  tmpPayTractCodeDto.setReserved1(payTractCodeDto.getReserved1());
			  tmpPayTractCodeDto.setReserved2(payTractCodeDto.getReserved2());
			  tmpPayTractCodeDto.setReserved3(payTractCodeDto.getReserved3());
			  tmpPayTractCodeDto.setRemark(payTractCodeDto.getRemark());
		
			payTractCodeService.updatePK(payTractCodeDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayTractCodeDto getPayTractCodeDto() {
		return payTractCodeDto;
	}

	public final void setStudentDto(PayTractCodeDto payTractCodeDto) {
		this.payTractCodeDto = payTractCodeDto;
	}

}
