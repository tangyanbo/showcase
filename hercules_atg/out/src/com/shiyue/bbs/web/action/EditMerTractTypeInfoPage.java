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
 
@Controller("editMerTractTypeInfoPage")
@Scope("prototype")
public class EditMerTractTypeInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerTractTypeInfoService merTractTypeInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private MerTractTypeInfoDto merTractTypeInfoDto;

	
	public String execute() throws Exception {
		try {
		    MerTractTypeInfoDto paramMerTractTypeInfoDto = new MerTractTypeInfoDto();
		//设置主键
			paramMerTractTypeInfoDto.setId(pkid);
			merTractTypeInfoDto = merTractTypeInfoService.getRow(paramMerTractTypeInfoDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
