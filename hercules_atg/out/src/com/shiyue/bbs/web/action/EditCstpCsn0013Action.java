package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0013Dto;
import com.shiyue.bbs.service.ICstpCsn0013Service;

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
 
@Controller("editCstpCsn0013Action")
@Scope("prototype")
public class EditCstpCsn0013Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0013Service cstpCsn0013Service;
	private CstpCsn0013Dto cstpCsn0013Dto =new CstpCsn0013Dto();;

	public String execute() throws Exception {
		try {
		    
		      CstpCsn0013Dto tmpCstpCsn0013Dto = new CstpCsn0013Dto();
			  tmpCstpCsn0013Dto.setCc_id(cstpCsn0013Dto.getCc_id());
			  tmpCstpCsn0013Dto.setCard_serial_no(cstpCsn0013Dto.getCard_serial_no());
			  tmpCstpCsn0013Dto.setMain_key(cstpCsn0013Dto.getMain_key());
			  tmpCstpCsn0013Dto.setSecurity_key(cstpCsn0013Dto.getSecurity_key());
			  tmpCstpCsn0013Dto.setPin_key(cstpCsn0013Dto.getPin_key());
			  tmpCstpCsn0013Dto.setMac_key(cstpCsn0013Dto.getMac_key());
			  tmpCstpCsn0013Dto.setTrack_key(cstpCsn0013Dto.getTrack_key());
			  tmpCstpCsn0013Dto.setCcd_status(cstpCsn0013Dto.getCcd_status());
			  tmpCstpCsn0013Dto.setCreate_time(cstpCsn0013Dto.getCreate_time());
			  tmpCstpCsn0013Dto.setSp_id(cstpCsn0013Dto.getSp_id());
			  tmpCstpCsn0013Dto.setUpdate_time(cstpCsn0013Dto.getUpdate_time());
			  tmpCstpCsn0013Dto.setExt(cstpCsn0013Dto.getExt());
		
			cstpCsn0013Service.updatePK(cstpCsn0013Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0013Dto getCstpCsn0013Dto() {
		return cstpCsn0013Dto;
	}

	public final void setStudentDto(CstpCsn0013Dto cstpCsn0013Dto) {
		this.cstpCsn0013Dto = cstpCsn0013Dto;
	}

}
