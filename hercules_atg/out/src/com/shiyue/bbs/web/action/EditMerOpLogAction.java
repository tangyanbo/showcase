package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerOpLogDto;
import com.shiyue.bbs.service.IMerOpLogService;

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
 
@Controller("editMerOpLogAction")
@Scope("prototype")
public class EditMerOpLogAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerOpLogService merOpLogService;
	private MerOpLogDto merOpLogDto =new MerOpLogDto();;

	public String execute() throws Exception {
		try {
		    
		      MerOpLogDto tmpMerOpLogDto = new MerOpLogDto();
			  tmpMerOpLogDto.setId(merOpLogDto.getId());
			  tmpMerOpLogDto.setMid(merOpLogDto.getMid());
			  tmpMerOpLogDto.setMer_type(merOpLogDto.getMer_type());
			  tmpMerOpLogDto.setLogin_name(merOpLogDto.getLogin_name());
			  tmpMerOpLogDto.setOp_desc(merOpLogDto.getOp_desc());
			  tmpMerOpLogDto.setOp_url(merOpLogDto.getOp_url());
			  tmpMerOpLogDto.setIp(merOpLogDto.getIp());
			  tmpMerOpLogDto.setUa(merOpLogDto.getUa());
			  tmpMerOpLogDto.setOp_time(merOpLogDto.getOp_time());
			  tmpMerOpLogDto.setRemark(merOpLogDto.getRemark());
		
			merOpLogService.updatePK(merOpLogDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerOpLogDto getMerOpLogDto() {
		return merOpLogDto;
	}

	public final void setStudentDto(MerOpLogDto merOpLogDto) {
		this.merOpLogDto = merOpLogDto;
	}

}
