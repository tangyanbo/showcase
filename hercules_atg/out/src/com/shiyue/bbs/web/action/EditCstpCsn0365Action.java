package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0365Dto;
import com.shiyue.bbs.service.ICstpCsn0365Service;

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
 
@Controller("editCstpCsn0365Action")
@Scope("prototype")
public class EditCstpCsn0365Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0365Service cstpCsn0365Service;
	private CstpCsn0365Dto cstpCsn0365Dto =new CstpCsn0365Dto();;

	public String execute() throws Exception {
		try {
		    
		      CstpCsn0365Dto tmpCstpCsn0365Dto = new CstpCsn0365Dto();
			  tmpCstpCsn0365Dto.setCc_id(cstpCsn0365Dto.getCc_id());
			  tmpCstpCsn0365Dto.setCard_serial_no(cstpCsn0365Dto.getCard_serial_no());
			  tmpCstpCsn0365Dto.setMain_key(cstpCsn0365Dto.getMain_key());
			  tmpCstpCsn0365Dto.setSecurity_key(cstpCsn0365Dto.getSecurity_key());
			  tmpCstpCsn0365Dto.setPin_key(cstpCsn0365Dto.getPin_key());
			  tmpCstpCsn0365Dto.setMac_key(cstpCsn0365Dto.getMac_key());
			  tmpCstpCsn0365Dto.setTrack_key(cstpCsn0365Dto.getTrack_key());
			  tmpCstpCsn0365Dto.setCcd_status(cstpCsn0365Dto.getCcd_status());
			  tmpCstpCsn0365Dto.setCreate_time(cstpCsn0365Dto.getCreate_time());
			  tmpCstpCsn0365Dto.setSp_id(cstpCsn0365Dto.getSp_id());
			  tmpCstpCsn0365Dto.setUpdate_time(cstpCsn0365Dto.getUpdate_time());
			  tmpCstpCsn0365Dto.setExt(cstpCsn0365Dto.getExt());
		
			cstpCsn0365Service.updatePK(cstpCsn0365Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0365Dto getCstpCsn0365Dto() {
		return cstpCsn0365Dto;
	}

	public final void setStudentDto(CstpCsn0365Dto cstpCsn0365Dto) {
		this.cstpCsn0365Dto = cstpCsn0365Dto;
	}

}
