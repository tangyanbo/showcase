package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.YunrichTerminalDto;
import com.shiyue.bbs.service.IYunrichTerminalService;

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
 
@Controller("editYunrichTerminalAction")
@Scope("prototype")
public class EditYunrichTerminalAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IYunrichTerminalService yunrichTerminalService;
	private YunrichTerminalDto yunrichTerminalDto =new YunrichTerminalDto();;

	public String execute() throws Exception {
		try {
		    
		      YunrichTerminalDto tmpYunrichTerminalDto = new YunrichTerminalDto();
			  tmpYunrichTerminalDto.setId(yunrichTerminalDto.getId());
			  tmpYunrichTerminalDto.setPos_dev_id(yunrichTerminalDto.getPos_dev_id());
			  tmpYunrichTerminalDto.setFile_code(yunrichTerminalDto.getFile_code());
			  tmpYunrichTerminalDto.setSec_main_key(yunrichTerminalDto.getSec_main_key());
			  tmpYunrichTerminalDto.setMain_key(yunrichTerminalDto.getMain_key());
			  tmpYunrichTerminalDto.setDate(yunrichTerminalDto.getDate());
			  tmpYunrichTerminalDto.setTime(yunrichTerminalDto.getTime());
			  tmpYunrichTerminalDto.setMachine_no(yunrichTerminalDto.getMachine_no());
			  tmpYunrichTerminalDto.setBk_term_id(yunrichTerminalDto.getBk_term_id());
			  tmpYunrichTerminalDto.setBk_mer_id(yunrichTerminalDto.getBk_mer_id());
			  tmpYunrichTerminalDto.setBatch_id(yunrichTerminalDto.getBatch_id());
			  tmpYunrichTerminalDto.setPin_key(yunrichTerminalDto.getPin_key());
			  tmpYunrichTerminalDto.setPack_key(yunrichTerminalDto.getPack_key());
			  tmpYunrichTerminalDto.setMac_key(yunrichTerminalDto.getMac_key());
			  tmpYunrichTerminalDto.setCreate_date(yunrichTerminalDto.getCreate_date());
			  tmpYunrichTerminalDto.setCreate_time(yunrichTerminalDto.getCreate_time());
			  tmpYunrichTerminalDto.setExt(yunrichTerminalDto.getExt());
			  tmpYunrichTerminalDto.setExt1(yunrichTerminalDto.getExt1());
			  tmpYunrichTerminalDto.setPos_id(yunrichTerminalDto.getPos_id());
		
			yunrichTerminalService.updatePK(yunrichTerminalDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final YunrichTerminalDto getYunrichTerminalDto() {
		return yunrichTerminalDto;
	}

	public final void setStudentDto(YunrichTerminalDto yunrichTerminalDto) {
		this.yunrichTerminalDto = yunrichTerminalDto;
	}

}
