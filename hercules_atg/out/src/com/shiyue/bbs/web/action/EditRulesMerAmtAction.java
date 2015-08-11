package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.RulesMerAmtDto;
import com.shiyue.bbs.service.IRulesMerAmtService;

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
 
@Controller("editRulesMerAmtAction")
@Scope("prototype")
public class EditRulesMerAmtAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IRulesMerAmtService rulesMerAmtService;
	private RulesMerAmtDto rulesMerAmtDto =new RulesMerAmtDto();;

	public String execute() throws Exception {
		try {
		    
		      RulesMerAmtDto tmpRulesMerAmtDto = new RulesMerAmtDto();
			  tmpRulesMerAmtDto.setId(rulesMerAmtDto.getId());
			  tmpRulesMerAmtDto.setMer_sys_id(rulesMerAmtDto.getMer_sys_id());
			  tmpRulesMerAmtDto.setStart_amt(rulesMerAmtDto.getStart_amt());
			  tmpRulesMerAmtDto.setEnd_amt(rulesMerAmtDto.getEnd_amt());
			  tmpRulesMerAmtDto.setTract_id(rulesMerAmtDto.getTract_id());
			  tmpRulesMerAmtDto.setReserved1(rulesMerAmtDto.getReserved1());
			  tmpRulesMerAmtDto.setReserved2(rulesMerAmtDto.getReserved2());
			  tmpRulesMerAmtDto.setReserved3(rulesMerAmtDto.getReserved3());
		
			rulesMerAmtService.updatePK(rulesMerAmtDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final RulesMerAmtDto getRulesMerAmtDto() {
		return rulesMerAmtDto;
	}

	public final void setStudentDto(RulesMerAmtDto rulesMerAmtDto) {
		this.rulesMerAmtDto = rulesMerAmtDto;
	}

}
