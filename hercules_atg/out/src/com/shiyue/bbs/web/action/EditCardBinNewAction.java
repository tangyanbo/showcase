package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CardBinNewDto;
import com.shiyue.bbs.service.ICardBinNewService;

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
 
@Controller("editCardBinNewAction")
@Scope("prototype")
public class EditCardBinNewAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICardBinNewService cardBinNewService;
	private CardBinNewDto cardBinNewDto =new CardBinNewDto();;

	public String execute() throws Exception {
		try {
		    
		      CardBinNewDto tmpCardBinNewDto = new CardBinNewDto();
			  tmpCardBinNewDto.setId(cardBinNewDto.getId());
			  tmpCardBinNewDto.setBank_id(cardBinNewDto.getBank_id());
			  tmpCardBinNewDto.setBank_name(cardBinNewDto.getBank_name());
			  tmpCardBinNewDto.setCard_no_length(cardBinNewDto.getCard_no_length());
			  tmpCardBinNewDto.setCard_bin(cardBinNewDto.getCard_bin());
			  tmpCardBinNewDto.setUpop_flag(cardBinNewDto.getUpop_flag());
			  tmpCardBinNewDto.setCard_type(cardBinNewDto.getCard_type());
			  tmpCardBinNewDto.setBank_short_name(cardBinNewDto.getBank_short_name());
		
			cardBinNewService.updatePK(cardBinNewDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CardBinNewDto getCardBinNewDto() {
		return cardBinNewDto;
	}

	public final void setStudentDto(CardBinNewDto cardBinNewDto) {
		this.cardBinNewDto = cardBinNewDto;
	}

}
