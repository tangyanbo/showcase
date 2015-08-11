package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.CstpMerhcantDto;
import com.shiyue.bbs.service.ICstpMerhcantService;

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
 
@Controller("editCstpMerhcantAction")
@Scope("prototype")
public class EditCstpMerhcantAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ICstpMerhcantService cstpMerhcantService;
	private CstpMerhcantDto cstpMerhcantDto =new CstpMerhcantDto();;

	public String execute() throws Exception {
		try {
		    
		      CstpMerhcantDto tmpCstpMerhcantDto = new CstpMerhcantDto();
			  tmpCstpMerhcantDto.setCm_id(cstpMerhcantDto.getCm_id());
			  tmpCstpMerhcantDto.setMerchant_id(cstpMerhcantDto.getMerchant_id());
			  tmpCstpMerhcantDto.setMerchant_name(cstpMerhcantDto.getMerchant_name());
			  tmpCstpMerhcantDto.setCreate_time(cstpMerhcantDto.getCreate_time());
			  tmpCstpMerhcantDto.setPrimery_key(cstpMerhcantDto.getPrimery_key());
			  tmpCstpMerhcantDto.setDevelop_id(cstpMerhcantDto.getDevelop_id());
			  tmpCstpMerhcantDto.setSp_id(cstpMerhcantDto.getSp_id());
		
			cstpMerhcantService.updatePK(cstpMerhcantDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final CstpMerhcantDto getCstpMerhcantDto() {
		return cstpMerhcantDto;
	}

	public final void setStudentDto(CstpMerhcantDto cstpMerhcantDto) {
		this.cstpMerhcantDto = cstpMerhcantDto;
	}

}
