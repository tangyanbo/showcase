package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SusUniDto;
import com.shiyue.bbs.service.ISusUniService;

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
 
@Controller("editSusUniAction")
@Scope("prototype")
public class EditSusUniAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISusUniService susUniService;
	private SusUniDto susUniDto =new SusUniDto();;

	public String execute() throws Exception {
		try {
		    
		      SusUniDto tmpSusUniDto = new SusUniDto();
			  tmpSusUniDto.setId(susUniDto.getId());
			  tmpSusUniDto.setCount(susUniDto.getCount());
			  tmpSusUniDto.setTrans_date(susUniDto.getTrans_date());
			  tmpSusUniDto.setTrans_amt(susUniDto.getTrans_amt());
			  tmpSusUniDto.setStatus(susUniDto.getStatus());
			  tmpSusUniDto.setOrder_id(susUniDto.getOrder_id());
			  tmpSusUniDto.setCard_id(susUniDto.getCard_id());
			  tmpSusUniDto.setSub_mer_id(susUniDto.getSub_mer_id());
			  tmpSusUniDto.setMer_id(susUniDto.getMer_id());
			  tmpSusUniDto.setMer_ord_id(susUniDto.getMer_ord_id());
			  tmpSusUniDto.setOrder_mer_id(susUniDto.getOrder_mer_id());
			  tmpSusUniDto.setDate(susUniDto.getDate());
		
			susUniService.updatePK(susUniDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SusUniDto getSusUniDto() {
		return susUniDto;
	}

	public final void setStudentDto(SusUniDto susUniDto) {
		this.susUniDto = susUniDto;
	}

}
