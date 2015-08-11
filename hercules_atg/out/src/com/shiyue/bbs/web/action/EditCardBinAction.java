package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CardBinDto;
import com.shiyue.bbs.service.ICardBinService;

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
 
@Controller("editCardBinAction")
@Scope("prototype")
public class EditCardBinAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICardBinService cardBinService;
	private CardBinDto cardBinDto =new CardBinDto();;

	public String execute() throws Exception {
		try {
		    
		      CardBinDto tmpCardBinDto = new CardBinDto();
			  tmpCardBinDto.setId(cardBinDto.getId());
			  tmpCardBinDto.setBank_id(cardBinDto.getBank_id());
			  tmpCardBinDto.setBank_name(cardBinDto.getBank_name());
			  tmpCardBinDto.setCard_no_length(cardBinDto.getCard_no_length());
			  tmpCardBinDto.setCard_bin(cardBinDto.getCard_bin());
			  tmpCardBinDto.setUpop_flag(cardBinDto.getUpop_flag());
			  tmpCardBinDto.setCard_type(cardBinDto.getCard_type());
			  tmpCardBinDto.setBank_short_name(cardBinDto.getBank_short_name());
		
			cardBinService.updatePK(cardBinDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CardBinDto getCardBinDto() {
		return cardBinDto;
	}

	public final void setStudentDto(CardBinDto cardBinDto) {
		this.cardBinDto = cardBinDto;
	}

}
