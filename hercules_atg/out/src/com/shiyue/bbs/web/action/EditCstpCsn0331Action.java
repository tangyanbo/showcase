package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpCsn0331Dto;
import com.shiyue.bbs.service.ICstpCsn0331Service;

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
 
@Controller("editCstpCsn0331Action")
@Scope("prototype")
public class EditCstpCsn0331Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpCsn0331Service cstpCsn0331Service;
	private CstpCsn0331Dto cstpCsn0331Dto =new CstpCsn0331Dto();;

	public String execute() throws Exception {
		try {
		    
		      CstpCsn0331Dto tmpCstpCsn0331Dto = new CstpCsn0331Dto();
			  tmpCstpCsn0331Dto.setCc_id(cstpCsn0331Dto.getCc_id());
			  tmpCstpCsn0331Dto.setCard_serial_no(cstpCsn0331Dto.getCard_serial_no());
			  tmpCstpCsn0331Dto.setMain_key(cstpCsn0331Dto.getMain_key());
			  tmpCstpCsn0331Dto.setSecurity_key(cstpCsn0331Dto.getSecurity_key());
			  tmpCstpCsn0331Dto.setPin_key(cstpCsn0331Dto.getPin_key());
			  tmpCstpCsn0331Dto.setMac_key(cstpCsn0331Dto.getMac_key());
			  tmpCstpCsn0331Dto.setTrack_key(cstpCsn0331Dto.getTrack_key());
			  tmpCstpCsn0331Dto.setCcd_status(cstpCsn0331Dto.getCcd_status());
			  tmpCstpCsn0331Dto.setCreate_time(cstpCsn0331Dto.getCreate_time());
			  tmpCstpCsn0331Dto.setSp_id(cstpCsn0331Dto.getSp_id());
			  tmpCstpCsn0331Dto.setUpdate_time(cstpCsn0331Dto.getUpdate_time());
			  tmpCstpCsn0331Dto.setExt(cstpCsn0331Dto.getExt());
		
			cstpCsn0331Service.updatePK(cstpCsn0331Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpCsn0331Dto getCstpCsn0331Dto() {
		return cstpCsn0331Dto;
	}

	public final void setStudentDto(CstpCsn0331Dto cstpCsn0331Dto) {
		this.cstpCsn0331Dto = cstpCsn0331Dto;
	}

}
