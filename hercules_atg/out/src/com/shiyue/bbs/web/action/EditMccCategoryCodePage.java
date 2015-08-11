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
 
@Controller("editMccCategoryCodePage")
@Scope("prototype")
public class EditMccCategoryCodePage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMccCategoryCodeService mccCategoryCodeService;
	
	//入参
	private  String     pkid;
	
	//出参
	private MccCategoryCodeDto mccCategoryCodeDto;

	
	public String execute() throws Exception {
		try {
		    MccCategoryCodeDto paramMccCategoryCodeDto = new MccCategoryCodeDto();
		//设置主键
			paramMccCategoryCodeDto.setId(pkid);
			mccCategoryCodeDto = mccCategoryCodeService.getRow(paramMccCategoryCodeDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
