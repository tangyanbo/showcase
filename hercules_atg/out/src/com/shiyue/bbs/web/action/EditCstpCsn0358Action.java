package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0358Dto;
import com.shiyue.bbs.service.ICstpCsn0358Service;

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
 
@Controller("editCstpCsn0358Action")
@Scope("prototype")
public class EditCstpCsn0358Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0358Service cstpCsn0358Service;
	private CstpCsn0358Dto cstpCsn0358Dto =new CstpCsn0358Dto();;

	public String execute() throws Exception {
		try {
		    
		      CstpCsn0358Dto tmpCstpCsn0358Dto = new CstpCsn0358Dto();
			  tmpCstpCsn0358Dto.setCc_id(cstpCsn0358Dto.getCc_id());
			  tmpCstpCsn0358Dto.setCard_serial_no(cstpCsn0358Dto.getCard_serial_no());
			  tmpCstpCsn0358Dto.setMain_key(cstpCsn0358Dto.getMain_key());
			  tmpCstpCsn0358Dto.setSecurity_key(cstpCsn0358Dto.getSecurity_key());
			  tmpCstpCsn0358Dto.setPin_key(cstpCsn0358Dto.getPin_key());
			  tmpCstpCsn0358Dto.setMac_key(cstpCsn0358Dto.getMac_key());
			  tmpCstpCsn0358Dto.setTrack_key(cstpCsn0358Dto.getTrack_key());
			  tmpCstpCsn0358Dto.setCcd_status(cstpCsn0358Dto.getCcd_status());
			  tmpCstpCsn0358Dto.setCreate_time(cstpCsn0358Dto.getCreate_time());
			  tmpCstpCsn0358Dto.setSp_id(cstpCsn0358Dto.getSp_id());
			  tmpCstpCsn0358Dto.setUpdate_time(cstpCsn0358Dto.getUpdate_time());
			  tmpCstpCsn0358Dto.setExt(cstpCsn0358Dto.getExt());
		
			cstpCsn0358Service.updatePK(cstpCsn0358Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0358Dto getCstpCsn0358Dto() {
		return cstpCsn0358Dto;
	}

	public final void setStudentDto(CstpCsn0358Dto cstpCsn0358Dto) {
		this.cstpCsn0358Dto = cstpCsn0358Dto;
	}

}
