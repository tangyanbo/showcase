package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2CstpCsnDto;
import com.shiyue.bbs.service.IV2CstpCsnService;

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
 
@Controller("editV2CstpCsnAction")
@Scope("prototype")
public class EditV2CstpCsnAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2CstpCsnService v2CstpCsnService;
	private V2CstpCsnDto v2CstpCsnDto =new V2CstpCsnDto();;

	public String execute() throws Exception {
		try {
		    
		      V2CstpCsnDto tmpV2CstpCsnDto = new V2CstpCsnDto();
			  tmpV2CstpCsnDto.setMerchant_id(v2CstpCsnDto.getMerchant_id());
			  tmpV2CstpCsnDto.setTerminal_id(v2CstpCsnDto.getTerminal_id());
			  tmpV2CstpCsnDto.setCard_serial_no(v2CstpCsnDto.getCard_serial_no());
			  tmpV2CstpCsnDto.setMain_key(v2CstpCsnDto.getMain_key());
			  tmpV2CstpCsnDto.setSecurity_key(v2CstpCsnDto.getSecurity_key());
			  tmpV2CstpCsnDto.setPin_key(v2CstpCsnDto.getPin_key());
			  tmpV2CstpCsnDto.setMac_key(v2CstpCsnDto.getMac_key());
			  tmpV2CstpCsnDto.setTrack_key(v2CstpCsnDto.getTrack_key());
			  tmpV2CstpCsnDto.setCcd_status(v2CstpCsnDto.getCcd_status());
			  tmpV2CstpCsnDto.setCreate_time(v2CstpCsnDto.getCreate_time());
			  tmpV2CstpCsnDto.setMerchant_name(v2CstpCsnDto.getMerchant_name());
			  tmpV2CstpCsnDto.setSp_id(v2CstpCsnDto.getSp_id());
			  tmpV2CstpCsnDto.setUpdate_time(v2CstpCsnDto.getUpdate_time());
		
			v2CstpCsnService.updatePK(v2CstpCsnDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2CstpCsnDto getV2CstpCsnDto() {
		return v2CstpCsnDto;
	}

	public final void setStudentDto(V2CstpCsnDto v2CstpCsnDto) {
		this.v2CstpCsnDto = v2CstpCsnDto;
	}

}
