package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.ResetStatictisDto;
import com.shiyue.bbs.service.IResetStatictisService;

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
 
@Controller("editResetStatictisAction")
@Scope("prototype")
public class EditResetStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IResetStatictisService resetStatictisService;
	private ResetStatictisDto resetStatictisDto =new ResetStatictisDto();;

	public String execute() throws Exception {
		try {
		    
		      ResetStatictisDto tmpResetStatictisDto = new ResetStatictisDto();
			  tmpResetStatictisDto.setId(resetStatictisDto.getId());
			  tmpResetStatictisDto.setStart_time(resetStatictisDto.getStart_time());
			  tmpResetStatictisDto.setEnt_time(resetStatictisDto.getEnt_time());
			  tmpResetStatictisDto.setStatus(resetStatictisDto.getStatus());
			  tmpResetStatictisDto.setStatus_desc(resetStatictisDto.getStatus_desc());
			  tmpResetStatictisDto.setSettle_content(resetStatictisDto.getSettle_content());
			  tmpResetStatictisDto.setReserved1(resetStatictisDto.getReserved1());
			  tmpResetStatictisDto.setReserved2(resetStatictisDto.getReserved2());
			  tmpResetStatictisDto.setReserved3(resetStatictisDto.getReserved3());
		
			resetStatictisService.updatePK(resetStatictisDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final ResetStatictisDto getResetStatictisDto() {
		return resetStatictisDto;
	}

	public final void setStudentDto(ResetStatictisDto resetStatictisDto) {
		this.resetStatictisDto = resetStatictisDto;
	}

}
