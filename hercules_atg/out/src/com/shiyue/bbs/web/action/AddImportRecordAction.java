package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.ImportRecordDto;
import com.shiyue.bbs.service.IImportRecordService;

 /**
 * 类功能:自动代码生成模板新增   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("addImportRecordAction")
@Scope("prototype")
public class AddImportRecordAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IImportRecordService importRecordService;
	private ImportRecordDto importRecordDto= new ImportRecordDto();

	public String execute() throws Exception {
		try {
			importRecordService.save(importRecordDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final ImportRecordDto getImportRecordDto() {
		return importRecordDto;
	}

	public final void setStudentDto(ImportRecordDto importRecordDto) {
		this.importRecordDto = importRecordDto;
	}

}
