package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.TestDto;
import com.shiyue.bbs.service.ITestService;

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
 
@Controller("editTestPage")
@Scope("prototype")
public class EditTestPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITestService testService;
	
	//入参
	private  String     pkid;
	
	//出参
	private TestDto testDto;

	
	public String execute() throws Exception {
		try {
		    TestDto paramTestDto = new TestDto();
		//设置主键
			paramTestDto.setId(pkid);
			testDto = testService.getRow(paramTestDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final TestDto getTestDto() {
		return testDto;
	}

	public final void setStudentDto(TestDto testDto) {
		this.testDto = testDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
