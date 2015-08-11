package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerAppTractDto;
import com.shiyue.bbs.service.IMerAppTractService;

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
 
@Controller("editMerAppTractAction")
@Scope("prototype")
public class EditMerAppTractAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerAppTractService merAppTractService;
	private MerAppTractDto merAppTractDto =new MerAppTractDto();;

	public String execute() throws Exception {
		try {
		    
		      MerAppTractDto tmpMerAppTractDto = new MerAppTractDto();
			  tmpMerAppTractDto.setId(merAppTractDto.getId());
			  tmpMerAppTractDto.setMer_sys_id(merAppTractDto.getMer_sys_id());
			  tmpMerAppTractDto.setApp_tract_id(merAppTractDto.getApp_tract_id());
			  tmpMerAppTractDto.setTrans_mer_id(merAppTractDto.getTrans_mer_id());
			  tmpMerAppTractDto.setTrans_rate(merAppTractDto.getTrans_rate());
			  tmpMerAppTractDto.setLowest_fee(merAppTractDto.getLowest_fee());
			  tmpMerAppTractDto.setHighest_fee(merAppTractDto.getHighest_fee());
			  tmpMerAppTractDto.setMer_profit(merAppTractDto.getMer_profit());
			  tmpMerAppTractDto.setStatus(merAppTractDto.getStatus());
			  tmpMerAppTractDto.setCreate_time(merAppTractDto.getCreate_time());
			  tmpMerAppTractDto.setApp_tract_type(merAppTractDto.getApp_tract_type());
			  tmpMerAppTractDto.setRemark(merAppTractDto.getRemark());
			  tmpMerAppTractDto.setReserved(merAppTractDto.getReserved());
		
			merAppTractService.updatePK(merAppTractDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerAppTractDto getMerAppTractDto() {
		return merAppTractDto;
	}

	public final void setStudentDto(MerAppTractDto merAppTractDto) {
		this.merAppTractDto = merAppTractDto;
	}

}
