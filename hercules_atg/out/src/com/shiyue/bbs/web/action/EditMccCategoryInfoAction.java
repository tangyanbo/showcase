package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MccCategoryInfoDto;
import com.shiyue.bbs.service.IMccCategoryInfoService;

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
 
@Controller("editMccCategoryInfoAction")
@Scope("prototype")
public class EditMccCategoryInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMccCategoryInfoService mccCategoryInfoService;
	private MccCategoryInfoDto mccCategoryInfoDto =new MccCategoryInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      MccCategoryInfoDto tmpMccCategoryInfoDto = new MccCategoryInfoDto();
			  tmpMccCategoryInfoDto.setMcc_category_id(mccCategoryInfoDto.getMcc_category_id());
			  tmpMccCategoryInfoDto.setMcc_category_name(mccCategoryInfoDto.getMcc_category_name());
			  tmpMccCategoryInfoDto.setProfit(mccCategoryInfoDto.getProfit());
			  tmpMccCategoryInfoDto.setDesc(mccCategoryInfoDto.getDesc());
			  tmpMccCategoryInfoDto.setRemark(mccCategoryInfoDto.getRemark());
		
			mccCategoryInfoService.updatePK(mccCategoryInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MccCategoryInfoDto getMccCategoryInfoDto() {
		return mccCategoryInfoDto;
	}

	public final void setStudentDto(MccCategoryInfoDto mccCategoryInfoDto) {
		this.mccCategoryInfoDto = mccCategoryInfoDto;
	}

}
