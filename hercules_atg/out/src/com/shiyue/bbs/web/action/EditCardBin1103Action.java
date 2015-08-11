package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CardBin1103Dto;
import com.shiyue.bbs.service.ICardBin1103Service;

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
 
@Controller("editCardBin1103Action")
@Scope("prototype")
public class EditCardBin1103Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICardBin1103Service cardBin1103Service;
	private CardBin1103Dto cardBin1103Dto =new CardBin1103Dto();;

	public String execute() throws Exception {
		try {
		    
		      CardBin1103Dto tmpCardBin1103Dto = new CardBin1103Dto();
			  tmpCardBin1103Dto.setId(cardBin1103Dto.getId());
			  tmpCardBin1103Dto.setBank_id(cardBin1103Dto.getBank_id());
			  tmpCardBin1103Dto.setBank_name(cardBin1103Dto.getBank_name());
			  tmpCardBin1103Dto.setCard_no_length(cardBin1103Dto.getCard_no_length());
			  tmpCardBin1103Dto.setCard_bin(cardBin1103Dto.getCard_bin());
			  tmpCardBin1103Dto.setUpop_flag(cardBin1103Dto.getUpop_flag());
			  tmpCardBin1103Dto.setCard_type(cardBin1103Dto.getCard_type());
			  tmpCardBin1103Dto.setBank_short_name(cardBin1103Dto.getBank_short_name());
		
			cardBin1103Service.updatePK(cardBin1103Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CardBin1103Dto getCardBin1103Dto() {
		return cardBin1103Dto;
	}

	public final void setStudentDto(CardBin1103Dto cardBin1103Dto) {
		this.cardBin1103Dto = cardBin1103Dto;
	}

}
