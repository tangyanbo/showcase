package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SequenceDataDto;
import com.shiyue.bbs.service.ISequenceDataService;

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
 
@Controller("detailSequenceDataPage")
@Scope("prototype")
public class DetailSequenceDataPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISequenceDataService sequenceDataService;
	
	//入参
	private  String     pkid;
	
	//出参
	private SequenceDataDto sequenceDataDto;

	
	public String execute() throws Exception {
		try {
		    SequenceDataDto paramSequenceDataDto = new SequenceDataDto();
		//设置主键
			paramSequenceDataDto.setSequence_name(pkid);
			sequenceDataDto = sequenceDataService.getRow(paramSequenceDataDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SequenceDataDto getSequenceDataDto() {
		return sequenceDataDto;
	}

	public final void setStudentDto(SequenceDataDto sequenceDataDto) {
		this.sequenceDataDto = sequenceDataDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
