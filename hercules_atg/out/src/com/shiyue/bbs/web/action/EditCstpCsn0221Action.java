package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0221Dto;
import com.shiyue.bbs.service.ICstpCsn0221Service;

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
 
@Controller("editCstpCsn0221Action")
@Scope("prototype")
public class EditCstpCsn0221Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0221Service cstpCsn0221Service;
	private CstpCsn0221Dto cstpCsn0221Dto =new CstpCsn0221Dto();;

	public String execute() throws Exception {
		try {
		    
		      CstpCsn0221Dto tmpCstpCsn0221Dto = new CstpCsn0221Dto();
			  tmpCstpCsn0221Dto.setCc_id(cstpCsn0221Dto.getCc_id());
			  tmpCstpCsn0221Dto.setCard_serial_no(cstpCsn0221Dto.getCard_serial_no());
			  tmpCstpCsn0221Dto.setMain_key(cstpCsn0221Dto.getMain_key());
			  tmpCstpCsn0221Dto.setSecurity_key(cstpCsn0221Dto.getSecurity_key());
			  tmpCstpCsn0221Dto.setPin_key(cstpCsn0221Dto.getPin_key());
			  tmpCstpCsn0221Dto.setMac_key(cstpCsn0221Dto.getMac_key());
			  tmpCstpCsn0221Dto.setTrack_key(cstpCsn0221Dto.getTrack_key());
			  tmpCstpCsn0221Dto.setCcd_status(cstpCsn0221Dto.getCcd_status());
			  tmpCstpCsn0221Dto.setCreate_time(cstpCsn0221Dto.getCreate_time());
			  tmpCstpCsn0221Dto.setSp_id(cstpCsn0221Dto.getSp_id());
			  tmpCstpCsn0221Dto.setUpdate_time(cstpCsn0221Dto.getUpdate_time());
			  tmpCstpCsn0221Dto.setExt(cstpCsn0221Dto.getExt());
		
			cstpCsn0221Service.updatePK(cstpCsn0221Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0221Dto getCstpCsn0221Dto() {
		return cstpCsn0221Dto;
	}

	public final void setStudentDto(CstpCsn0221Dto cstpCsn0221Dto) {
		this.cstpCsn0221Dto = cstpCsn0221Dto;
	}

}
