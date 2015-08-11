package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SequenceDto;
import com.shiyue.bbs.service.ISequenceService;

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
 
@Controller("editSequenceAction")
@Scope("prototype")
public class EditSequenceAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISequenceService sequenceService;
	private SequenceDto sequenceDto =new SequenceDto();;

	public String execute() throws Exception {
		try {
		    
		      SequenceDto tmpSequenceDto = new SequenceDto();
			  tmpSequenceDto.setName(sequenceDto.getName());
			  tmpSequenceDto.setIncrement(sequenceDto.getIncrement());
			  tmpSequenceDto.setMin_value(sequenceDto.getMin_value());
			  tmpSequenceDto.setMax_value(sequenceDto.getMax_value());
			  tmpSequenceDto.setCur_value(sequenceDto.getCur_value());
			  tmpSequenceDto.setCycle(sequenceDto.getCycle());
		
			sequenceService.updatePK(sequenceDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SequenceDto getSequenceDto() {
		return sequenceDto;
	}

	public final void setStudentDto(SequenceDto sequenceDto) {
		this.sequenceDto = sequenceDto;
	}

}
