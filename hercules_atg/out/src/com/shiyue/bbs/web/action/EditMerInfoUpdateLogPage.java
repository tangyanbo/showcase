package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerInfoUpdateLogDto;
import com.shiyue.bbs.service.IMerInfoUpdateLogService;

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
 
@Controller("editMerInfoUpdateLogPage")
@Scope("prototype")
public class EditMerInfoUpdateLogPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerInfoUpdateLogService merInfoUpdateLogService;
	
	//入参
	private  String     pkid;
	
	//出参
	private MerInfoUpdateLogDto merInfoUpdateLogDto;

	
	public String execute() throws Exception {
		try {
		    MerInfoUpdateLogDto paramMerInfoUpdateLogDto = new MerInfoUpdateLogDto();
		//设置主键
			paramMerInfoUpdateLogDto.setId(pkid);
			merInfoUpdateLogDto = merInfoUpdateLogService.getRow(paramMerInfoUpdateLogDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerInfoUpdateLogDto getMerInfoUpdateLogDto() {
		return merInfoUpdateLogDto;
	}

	public final void setStudentDto(MerInfoUpdateLogDto merInfoUpdateLogDto) {
		this.merInfoUpdateLogDto = merInfoUpdateLogDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
