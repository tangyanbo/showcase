package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerSettleStatictisDto;
import com.shiyue.bbs.service.IMerSettleStatictisService;

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
 
@Controller("editMerSettleStatictisPage")
@Scope("prototype")
public class EditMerSettleStatictisPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerSettleStatictisService merSettleStatictisService;
	
	//入参
	private  String     pkid;
	
	//出参
	private MerSettleStatictisDto merSettleStatictisDto;

	
	public String execute() throws Exception {
		try {
		    MerSettleStatictisDto paramMerSettleStatictisDto = new MerSettleStatictisDto();
		//设置主键
			paramMerSettleStatictisDto.setId(pkid);
			merSettleStatictisDto = merSettleStatictisService.getRow(paramMerSettleStatictisDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerSettleStatictisDto getMerSettleStatictisDto() {
		return merSettleStatictisDto;
	}

	public final void setStudentDto(MerSettleStatictisDto merSettleStatictisDto) {
		this.merSettleStatictisDto = merSettleStatictisDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
