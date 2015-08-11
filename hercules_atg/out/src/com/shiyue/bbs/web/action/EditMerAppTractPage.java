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
 
@Controller("editMerAppTractPage")
@Scope("prototype")
public class EditMerAppTractPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerAppTractService merAppTractService;
	
	//入参
	private  String     pkid;
	
	//出参
	private MerAppTractDto merAppTractDto;

	
	public String execute() throws Exception {
		try {
		    MerAppTractDto paramMerAppTractDto = new MerAppTractDto();
		//设置主键
			paramMerAppTractDto.setId(pkid);
			merAppTractDto = merAppTractService.getRow(paramMerAppTractDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
