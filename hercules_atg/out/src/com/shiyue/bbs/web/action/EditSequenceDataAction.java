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
 
@Controller("editSequenceDataAction")
@Scope("prototype")
public class EditSequenceDataAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISequenceDataService sequenceDataService;
	private SequenceDataDto sequenceDataDto =new SequenceDataDto();;

	public String execute() throws Exception {
		try {
		    
		      SequenceDataDto tmpSequenceDataDto = new SequenceDataDto();
			  tmpSequenceDataDto.setSequence_name(sequenceDataDto.getSequence_name());
			  tmpSequenceDataDto.setSequence_increment(sequenceDataDto.getSequence_increment());
			  tmpSequenceDataDto.setSequence_min_value(sequenceDataDto.getSequence_min_value());
			  tmpSequenceDataDto.setSequence_max_value(sequenceDataDto.getSequence_max_value());
			  tmpSequenceDataDto.setSequence_cur_value(sequenceDataDto.getSequence_cur_value());
			  tmpSequenceDataDto.setSequence_cycle(sequenceDataDto.getSequence_cycle());
		
			sequenceDataService.updatePK(sequenceDataDto);
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

}
