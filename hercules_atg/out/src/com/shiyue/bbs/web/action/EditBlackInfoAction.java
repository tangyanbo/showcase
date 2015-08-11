package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BlackInfoDto;
import com.shiyue.bbs.service.IBlackInfoService;

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
 
@Controller("editBlackInfoAction")
@Scope("prototype")
public class EditBlackInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBlackInfoService blackInfoService;
	private BlackInfoDto blackInfoDto =new BlackInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      BlackInfoDto tmpBlackInfoDto = new BlackInfoDto();
			  tmpBlackInfoDto.setId(blackInfoDto.getId());
			  tmpBlackInfoDto.setCreate_time(blackInfoDto.getCreate_time());
			  tmpBlackInfoDto.setSub_mer_id(blackInfoDto.getSub_mer_id());
			  tmpBlackInfoDto.setCard_no(blackInfoDto.getCard_no());
			  tmpBlackInfoDto.setCard_type(blackInfoDto.getCard_type());
			  tmpBlackInfoDto.setReal_name(blackInfoDto.getReal_name());
			  tmpBlackInfoDto.setId_num(blackInfoDto.getId_num());
			  tmpBlackInfoDto.setPhone(blackInfoDto.getPhone());
			  tmpBlackInfoDto.setLevel(blackInfoDto.getLevel());
			  tmpBlackInfoDto.setBlack_type(blackInfoDto.getBlack_type());
			  tmpBlackInfoDto.setStatus(blackInfoDto.getStatus());
			  tmpBlackInfoDto.setTerminal_id(blackInfoDto.getTerminal_id());
			  tmpBlackInfoDto.setReserved1(blackInfoDto.getReserved1());
			  tmpBlackInfoDto.setReserved2(blackInfoDto.getReserved2());
			  tmpBlackInfoDto.setReserved3(blackInfoDto.getReserved3());
			  tmpBlackInfoDto.setRemark(blackInfoDto.getRemark());
		
			blackInfoService.updatePK(blackInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BlackInfoDto getBlackInfoDto() {
		return blackInfoDto;
	}

	public final void setStudentDto(BlackInfoDto blackInfoDto) {
		this.blackInfoDto = blackInfoDto;
	}

}
