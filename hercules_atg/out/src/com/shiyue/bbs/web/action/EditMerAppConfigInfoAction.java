package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerAppConfigInfoDto;
import com.shiyue.bbs.service.IMerAppConfigInfoService;

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
 
@Controller("editMerAppConfigInfoAction")
@Scope("prototype")
public class EditMerAppConfigInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerAppConfigInfoService merAppConfigInfoService;
	private MerAppConfigInfoDto merAppConfigInfoDto =new MerAppConfigInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      MerAppConfigInfoDto tmpMerAppConfigInfoDto = new MerAppConfigInfoDto();
			  tmpMerAppConfigInfoDto.setId(merAppConfigInfoDto.getId());
			  tmpMerAppConfigInfoDto.setApp_id(merAppConfigInfoDto.getApp_id());
			  tmpMerAppConfigInfoDto.setMer_sys_id(merAppConfigInfoDto.getMer_sys_id());
			  tmpMerAppConfigInfoDto.setApk_name(merAppConfigInfoDto.getApk_name());
			  tmpMerAppConfigInfoDto.setPic_url(merAppConfigInfoDto.getPic_url());
			  tmpMerAppConfigInfoDto.setApk_url(merAppConfigInfoDto.getApk_url());
			  tmpMerAppConfigInfoDto.setEntrance_name(merAppConfigInfoDto.getEntrance_name());
			  tmpMerAppConfigInfoDto.setStatus(merAppConfigInfoDto.getStatus());
			  tmpMerAppConfigInfoDto.setCreate_time(merAppConfigInfoDto.getCreate_time());
			  tmpMerAppConfigInfoDto.setRemark(merAppConfigInfoDto.getRemark());
			  tmpMerAppConfigInfoDto.setReserved(merAppConfigInfoDto.getReserved());
		
			merAppConfigInfoService.updatePK(merAppConfigInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerAppConfigInfoDto getMerAppConfigInfoDto() {
		return merAppConfigInfoDto;
	}

	public final void setStudentDto(MerAppConfigInfoDto merAppConfigInfoDto) {
		this.merAppConfigInfoDto = merAppConfigInfoDto;
	}

}
