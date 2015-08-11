package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PicMessageDto;
import com.shiyue.bbs.service.IPicMessageService;

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
 
@Controller("editPicMessageAction")
@Scope("prototype")
public class EditPicMessageAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPicMessageService picMessageService;
	private PicMessageDto picMessageDto =new PicMessageDto();;

	public String execute() throws Exception {
		try {
		    
		      PicMessageDto tmpPicMessageDto = new PicMessageDto();
			  tmpPicMessageDto.setSub_mer_id(picMessageDto.getSub_mer_id());
			  tmpPicMessageDto.setMer_sys_id(picMessageDto.getMer_sys_id());
			  tmpPicMessageDto.setPic_name(picMessageDto.getPic_name());
			  tmpPicMessageDto.setPic_type(picMessageDto.getPic_type());
			  tmpPicMessageDto.setMer_order_id(picMessageDto.getMer_order_id());
			  tmpPicMessageDto.setLinux_path(picMessageDto.getLinux_path());
			  tmpPicMessageDto.setPic_path(picMessageDto.getPic_path());
			  tmpPicMessageDto.setCreate_time(picMessageDto.getCreate_time());
			  tmpPicMessageDto.setUpdate_time(picMessageDto.getUpdate_time());
		
			picMessageService.updatePK(picMessageDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PicMessageDto getPicMessageDto() {
		return picMessageDto;
	}

	public final void setStudentDto(PicMessageDto picMessageDto) {
		this.picMessageDto = picMessageDto;
	}

}
