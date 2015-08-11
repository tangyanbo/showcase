package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.UnilateralOrderInfoDto;
import com.shiyue.bbs.service.IUnilateralOrderInfoService;

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
 
@Controller("editUnilateralOrderInfoAction")
@Scope("prototype")
public class EditUnilateralOrderInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IUnilateralOrderInfoService unilateralOrderInfoService;
	private UnilateralOrderInfoDto unilateralOrderInfoDto =new UnilateralOrderInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      UnilateralOrderInfoDto tmpUnilateralOrderInfoDto = new UnilateralOrderInfoDto();
			  tmpUnilateralOrderInfoDto.setId(unilateralOrderInfoDto.getId());
			  tmpUnilateralOrderInfoDto.setTrans_date(unilateralOrderInfoDto.getTrans_date());
			  tmpUnilateralOrderInfoDto.setTrans_amt(unilateralOrderInfoDto.getTrans_amt());
			  tmpUnilateralOrderInfoDto.setOrder_id(unilateralOrderInfoDto.getOrder_id());
			  tmpUnilateralOrderInfoDto.setCard_id(unilateralOrderInfoDto.getCard_id());
			  tmpUnilateralOrderInfoDto.setSub_mer_id(unilateralOrderInfoDto.getSub_mer_id());
			  tmpUnilateralOrderInfoDto.setMer_sys_id(unilateralOrderInfoDto.getMer_sys_id());
			  tmpUnilateralOrderInfoDto.setMer_ord_id(unilateralOrderInfoDto.getMer_ord_id());
			  tmpUnilateralOrderInfoDto.setTrans_mer_id(unilateralOrderInfoDto.getTrans_mer_id());
			  tmpUnilateralOrderInfoDto.setDate(unilateralOrderInfoDto.getDate());
			  tmpUnilateralOrderInfoDto.setSys_ref_num(unilateralOrderInfoDto.getSys_ref_num());
			  tmpUnilateralOrderInfoDto.setSys_tra_num(unilateralOrderInfoDto.getSys_tra_num());
			  tmpUnilateralOrderInfoDto.setReturn_code(unilateralOrderInfoDto.getReturn_code());
			  tmpUnilateralOrderInfoDto.setTrans_type(unilateralOrderInfoDto.getTrans_type());
			  tmpUnilateralOrderInfoDto.setReserved1(unilateralOrderInfoDto.getReserved1());
			  tmpUnilateralOrderInfoDto.setReserved2(unilateralOrderInfoDto.getReserved2());
			  tmpUnilateralOrderInfoDto.setReserved3(unilateralOrderInfoDto.getReserved3());
			  tmpUnilateralOrderInfoDto.setReserved4(unilateralOrderInfoDto.getReserved4());
			  tmpUnilateralOrderInfoDto.setReserved5(unilateralOrderInfoDto.getReserved5());
		
			unilateralOrderInfoService.updatePK(unilateralOrderInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final UnilateralOrderInfoDto getUnilateralOrderInfoDto() {
		return unilateralOrderInfoDto;
	}

	public final void setStudentDto(UnilateralOrderInfoDto unilateralOrderInfoDto) {
		this.unilateralOrderInfoDto = unilateralOrderInfoDto;
	}

}
