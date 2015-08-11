package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MccCategoryCodeDto;
import com.shiyue.bbs.service.IMccCategoryCodeService;

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
 
@Controller("editMccCategoryCodeAction")
@Scope("prototype")
public class EditMccCategoryCodeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMccCategoryCodeService mccCategoryCodeService;
	private MccCategoryCodeDto mccCategoryCodeDto =new MccCategoryCodeDto();;

	public String execute() throws Exception {
		try {
		    
		      MccCategoryCodeDto tmpMccCategoryCodeDto = new MccCategoryCodeDto();
			  tmpMccCategoryCodeDto.setId(mccCategoryCodeDto.getId());
			  tmpMccCategoryCodeDto.setMcc_category_id(mccCategoryCodeDto.getMcc_category_id());
			  tmpMccCategoryCodeDto.setMcc(mccCategoryCodeDto.getMcc());
			  tmpMccCategoryCodeDto.setProfit(mccCategoryCodeDto.getProfit());
			  tmpMccCategoryCodeDto.setDesc(mccCategoryCodeDto.getDesc());
			  tmpMccCategoryCodeDto.setRemark(mccCategoryCodeDto.getRemark());
		
			mccCategoryCodeService.updatePK(mccCategoryCodeDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MccCategoryCodeDto getMccCategoryCodeDto() {
		return mccCategoryCodeDto;
	}

	public final void setStudentDto(MccCategoryCodeDto mccCategoryCodeDto) {
		this.mccCategoryCodeDto = mccCategoryCodeDto;
	}

}
