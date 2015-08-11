package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CdateConfigDto;
import com.shiyue.bbs.service.ICdateConfigService;

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
 
@Controller("editCdateConfigAction")
@Scope("prototype")
public class EditCdateConfigAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICdateConfigService cdateConfigService;
	private CdateConfigDto cdateConfigDto =new CdateConfigDto();;

	public String execute() throws Exception {
		try {
		    
		      CdateConfigDto tmpCdateConfigDto = new CdateConfigDto();
			  tmpCdateConfigDto.setId(cdateConfigDto.getId());
			  tmpCdateConfigDto.setCdate(cdateConfigDto.getCdate());
			  tmpCdateConfigDto.setWeekdy(cdateConfigDto.getWeekdy());
			  tmpCdateConfigDto.setIs_work(cdateConfigDto.getIs_work());
			  tmpCdateConfigDto.setIs_xend(cdateConfigDto.getIs_xend());
			  tmpCdateConfigDto.setIs_mend(cdateConfigDto.getIs_mend());
			  tmpCdateConfigDto.setIs_qend(cdateConfigDto.getIs_qend());
			  tmpCdateConfigDto.setIs_hend(cdateConfigDto.getIs_hend());
			  tmpCdateConfigDto.setIs_yend(cdateConfigDto.getIs_yend());
			  tmpCdateConfigDto.setReserved1(cdateConfigDto.getReserved1());
		
			cdateConfigService.updatePK(cdateConfigDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CdateConfigDto getCdateConfigDto() {
		return cdateConfigDto;
	}

	public final void setStudentDto(CdateConfigDto cdateConfigDto) {
		this.cdateConfigDto = cdateConfigDto;
	}

}
