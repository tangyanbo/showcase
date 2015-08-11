package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerTractTypeInfoDto;
import com.shiyue.bbs.service.IMerTractTypeInfoService;

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
 
@Controller("editMerTractTypeInfoAction")
@Scope("prototype")
public class EditMerTractTypeInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerTractTypeInfoService merTractTypeInfoService;
	private MerTractTypeInfoDto merTractTypeInfoDto =new MerTractTypeInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      MerTractTypeInfoDto tmpMerTractTypeInfoDto = new MerTractTypeInfoDto();
			  tmpMerTractTypeInfoDto.setId(merTractTypeInfoDto.getId());
			  tmpMerTractTypeInfoDto.setMer_sys_id(merTractTypeInfoDto.getMer_sys_id());
			  tmpMerTractTypeInfoDto.setMcc_category_id(merTractTypeInfoDto.getMcc_category_id());
			  tmpMerTractTypeInfoDto.setProfit_type(merTractTypeInfoDto.getProfit_type());
			  tmpMerTractTypeInfoDto.setMer_rate_1(merTractTypeInfoDto.getMer_rate_1());
			  tmpMerTractTypeInfoDto.setMer_rate_2(merTractTypeInfoDto.getMer_rate_2());
			  tmpMerTractTypeInfoDto.setMer_highest_fee(merTractTypeInfoDto.getMer_highest_fee());
			  tmpMerTractTypeInfoDto.setMer_lowest_fee(merTractTypeInfoDto.getMer_lowest_fee());
			  tmpMerTractTypeInfoDto.setStatus(merTractTypeInfoDto.getStatus());
			  tmpMerTractTypeInfoDto.setReserved(merTractTypeInfoDto.getReserved());
		
			merTractTypeInfoService.updatePK(merTractTypeInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerTractTypeInfoDto getMerTractTypeInfoDto() {
		return merTractTypeInfoDto;
	}

	public final void setStudentDto(MerTractTypeInfoDto merTractTypeInfoDto) {
		this.merTractTypeInfoDto = merTractTypeInfoDto;
	}

}
