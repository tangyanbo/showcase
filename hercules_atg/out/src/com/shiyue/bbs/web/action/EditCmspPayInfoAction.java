package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CmspPayInfoDto;
import com.shiyue.bbs.service.ICmspPayInfoService;

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
 
@Controller("editCmspPayInfoAction")
@Scope("prototype")
public class EditCmspPayInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICmspPayInfoService cmspPayInfoService;
	private CmspPayInfoDto cmspPayInfoDto =new CmspPayInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      CmspPayInfoDto tmpCmspPayInfoDto = new CmspPayInfoDto();
			  tmpCmspPayInfoDto.setOrder_id(cmspPayInfoDto.getOrder_id());
			  tmpCmspPayInfoDto.setTrans_mer_id(cmspPayInfoDto.getTrans_mer_id());
			  tmpCmspPayInfoDto.setTrans_ter_id(cmspPayInfoDto.getTrans_ter_id());
			  tmpCmspPayInfoDto.setTrans_amt(cmspPayInfoDto.getTrans_amt());
			  tmpCmspPayInfoDto.setTrans_cur(cmspPayInfoDto.getTrans_cur());
			  tmpCmspPayInfoDto.setTrans_time(cmspPayInfoDto.getTrans_time());
			  tmpCmspPayInfoDto.setTrans_status(cmspPayInfoDto.getTrans_status());
			  tmpCmspPayInfoDto.setTrans_type(cmspPayInfoDto.getTrans_type());
			  tmpCmspPayInfoDto.setRes_code(cmspPayInfoDto.getRes_code());
			  tmpCmspPayInfoDto.setSettle_date(cmspPayInfoDto.getSettle_date());
			  tmpCmspPayInfoDto.setPan(cmspPayInfoDto.getPan());
			  tmpCmspPayInfoDto.setCreate_time(cmspPayInfoDto.getCreate_time());
			  tmpCmspPayInfoDto.setReserved(cmspPayInfoDto.getReserved());
			  tmpCmspPayInfoDto.setExt(cmspPayInfoDto.getExt());
			  tmpCmspPayInfoDto.setTracking_no(cmspPayInfoDto.getTracking_no());
			  tmpCmspPayInfoDto.setExt1(cmspPayInfoDto.getExt1());
			  tmpCmspPayInfoDto.setExt2(cmspPayInfoDto.getExt2());
			  tmpCmspPayInfoDto.setExt3(cmspPayInfoDto.getExt3());
			  tmpCmspPayInfoDto.setCreate_date(cmspPayInfoDto.getCreate_date());
			  tmpCmspPayInfoDto.setCmsp_resverved(cmspPayInfoDto.getCmsp_resverved());
		
			cmspPayInfoService.updatePK(cmspPayInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CmspPayInfoDto getCmspPayInfoDto() {
		return cmspPayInfoDto;
	}

	public final void setStudentDto(CmspPayInfoDto cmspPayInfoDto) {
		this.cmspPayInfoDto = cmspPayInfoDto;
	}

}
