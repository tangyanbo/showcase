package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.ImportRecordDto;
import com.shiyue.bbs.service.IImportRecordService;

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
 
@Controller("editImportRecordAction")
@Scope("prototype")
public class EditImportRecordAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IImportRecordService importRecordService;
	private ImportRecordDto importRecordDto =new ImportRecordDto();;

	public String execute() throws Exception {
		try {
		    
		      ImportRecordDto tmpImportRecordDto = new ImportRecordDto();
			  tmpImportRecordDto.setId(importRecordDto.getId());
			  tmpImportRecordDto.setTract_err_name(importRecordDto.getTract_err_name());
			  tmpImportRecordDto.setSubinfo_name(importRecordDto.getSubinfo_name());
			  tmpImportRecordDto.setSignin_err_name(importRecordDto.getSignin_err_name());
			  tmpImportRecordDto.setSub_err_name(importRecordDto.getSub_err_name());
			  tmpImportRecordDto.setErr_name(importRecordDto.getErr_name());
			  tmpImportRecordDto.setDownload_url(importRecordDto.getDownload_url());
			  tmpImportRecordDto.setCreate_time(importRecordDto.getCreate_time());
			  tmpImportRecordDto.setBatch_id(importRecordDto.getBatch_id());
			  tmpImportRecordDto.setFile_type(importRecordDto.getFile_type());
		
			importRecordService.updatePK(importRecordDto);
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
