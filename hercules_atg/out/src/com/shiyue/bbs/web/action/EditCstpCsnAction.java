package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsnDto;
import com.shiyue.bbs.service.ICstpCsnService;

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
 
@Controller("editCstpCsnAction")
@Scope("prototype")
public class EditCstpCsnAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsnService cstpCsnService;
	private CstpCsnDto cstpCsnDto =new CstpCsnDto();;

	public String execute() throws Exception {
		try {
		    
		      CstpCsnDto tmpCstpCsnDto = new CstpCsnDto();
			  tmpCstpCsnDto.setCc_id(cstpCsnDto.getCc_id());
			  tmpCstpCsnDto.setCard_serial_no(cstpCsnDto.getCard_serial_no());
			  tmpCstpCsnDto.setMain_key(cstpCsnDto.getMain_key());
			  tmpCstpCsnDto.setSecurity_key(cstpCsnDto.getSecurity_key());
			  tmpCstpCsnDto.setPin_key(cstpCsnDto.getPin_key());
			  tmpCstpCsnDto.setMac_key(cstpCsnDto.getMac_key());
			  tmpCstpCsnDto.setTrack_key(cstpCsnDto.getTrack_key());
			  tmpCstpCsnDto.setCcd_status(cstpCsnDto.getCcd_status());
			  tmpCstpCsnDto.setCreate_time(cstpCsnDto.getCreate_time());
			  tmpCstpCsnDto.setSp_id(cstpCsnDto.getSp_id());
			  tmpCstpCsnDto.setUpdate_time(cstpCsnDto.getUpdate_time());
			  tmpCstpCsnDto.setExt(cstpCsnDto.getExt());
		
			cstpCsnService.updatePK(cstpCsnDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsnDto getCstpCsnDto() {
		return cstpCsnDto;
	}

	public final void setStudentDto(CstpCsnDto cstpCsnDto) {
		this.cstpCsnDto = cstpCsnDto;
	}

}
