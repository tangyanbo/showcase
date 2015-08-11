package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2OrderInfoDto;
import com.shiyue.bbs.service.IV2OrderInfoService;

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
 
@Controller("addV2OrderInfoAction")
@Scope("prototype")
public class AddV2OrderInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2OrderInfoService v2OrderInfoService;
	private V2OrderInfoDto v2OrderInfoDto= new V2OrderInfoDto();

	public String execute() throws Exception {
		try {
			v2OrderInfoService.save(v2OrderInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2OrderInfoDto getV2OrderInfoDto() {
		return v2OrderInfoDto;
	}

	public final void setStudentDto(V2OrderInfoDto v2OrderInfoDto) {
		this.v2OrderInfoDto = v2OrderInfoDto;
	}

}
