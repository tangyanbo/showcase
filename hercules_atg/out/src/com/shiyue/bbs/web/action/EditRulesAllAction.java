package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.RulesAllDto;
import com.shiyue.bbs.service.IRulesAllService;

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
 
@Controller("editRulesAllAction")
@Scope("prototype")
public class EditRulesAllAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IRulesAllService rulesAllService;
	private RulesAllDto rulesAllDto =new RulesAllDto();;

	public String execute() throws Exception {
		try {
		    
		      RulesAllDto tmpRulesAllDto = new RulesAllDto();
			  tmpRulesAllDto.setId(rulesAllDto.getId());
			  tmpRulesAllDto.setStart_time(rulesAllDto.getStart_time());
			  tmpRulesAllDto.setEnd_time(rulesAllDto.getEnd_time());
			  tmpRulesAllDto.setTract_night(rulesAllDto.getTract_night());
			  tmpRulesAllDto.setTract_day(rulesAllDto.getTract_day());
			  tmpRulesAllDto.setStatus(rulesAllDto.getStatus());
			  tmpRulesAllDto.setReserved1(rulesAllDto.getReserved1());
			  tmpRulesAllDto.setReserved2(rulesAllDto.getReserved2());
			  tmpRulesAllDto.setReserved3(rulesAllDto.getReserved3());
		
			rulesAllService.updatePK(rulesAllDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final RulesAllDto getRulesAllDto() {
		return rulesAllDto;
	}

	public final void setStudentDto(RulesAllDto rulesAllDto) {
		this.rulesAllDto = rulesAllDto;
	}

}
