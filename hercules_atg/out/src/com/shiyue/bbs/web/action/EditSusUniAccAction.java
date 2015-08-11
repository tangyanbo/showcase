package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SusUniAccDto;
import com.shiyue.bbs.service.ISusUniAccService;

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
 
@Controller("editSusUniAccAction")
@Scope("prototype")
public class EditSusUniAccAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISusUniAccService susUniAccService;
	private SusUniAccDto susUniAccDto =new SusUniAccDto();;

	public String execute() throws Exception {
		try {
		    
		      SusUniAccDto tmpSusUniAccDto = new SusUniAccDto();
			  tmpSusUniAccDto.setId(susUniAccDto.getId());
			  tmpSusUniAccDto.setCount(susUniAccDto.getCount());
			  tmpSusUniAccDto.setTrans_date(susUniAccDto.getTrans_date());
			  tmpSusUniAccDto.setTrans_amt(susUniAccDto.getTrans_amt());
			  tmpSusUniAccDto.setStatus(susUniAccDto.getStatus());
			  tmpSusUniAccDto.setOrder_id(susUniAccDto.getOrder_id());
			  tmpSusUniAccDto.setCard_id(susUniAccDto.getCard_id());
			  tmpSusUniAccDto.setSub_mer_id(susUniAccDto.getSub_mer_id());
			  tmpSusUniAccDto.setMer_id(susUniAccDto.getMer_id());
			  tmpSusUniAccDto.setMer_ord_id(susUniAccDto.getMer_ord_id());
			  tmpSusUniAccDto.setOrder_mer_id(susUniAccDto.getOrder_mer_id());
			  tmpSusUniAccDto.setDate(susUniAccDto.getDate());
			  tmpSusUniAccDto.setSys_ref_num(susUniAccDto.getSys_ref_num());
			  tmpSusUniAccDto.setSys_tra_num(susUniAccDto.getSys_tra_num());
			  tmpSusUniAccDto.setCard_id_1(susUniAccDto.getCard_id_1());
			  tmpSusUniAccDto.setReturn_code(susUniAccDto.getReturn_code());
			  tmpSusUniAccDto.setTrans_type(susUniAccDto.getTrans_type());
		
			susUniAccService.updatePK(susUniAccDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SusUniAccDto getSusUniAccDto() {
		return susUniAccDto;
	}

	public final void setStudentDto(SusUniAccDto susUniAccDto) {
		this.susUniAccDto = susUniAccDto;
	}

}
