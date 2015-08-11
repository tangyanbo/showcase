package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MccCodeDto;
import com.shiyue.bbs.service.IMccCodeService;

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
 
@Controller("editMccCodePage")
@Scope("prototype")
public class EditMccCodePage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMccCodeService mccCodeService;
	
	//入参
	private  String     pkid;
	
	//出参
	private MccCodeDto mccCodeDto;

	
	public String execute() throws Exception {
		try {
		    MccCodeDto paramMccCodeDto = new MccCodeDto();
		//设置主键
			paramMccCodeDto.setId(pkid);
			mccCodeDto = mccCodeService.getRow(paramMccCodeDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MccCodeDto getMccCodeDto() {
		return mccCodeDto;
	}

	public final void setStudentDto(MccCodeDto mccCodeDto) {
		this.mccCodeDto = mccCodeDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}