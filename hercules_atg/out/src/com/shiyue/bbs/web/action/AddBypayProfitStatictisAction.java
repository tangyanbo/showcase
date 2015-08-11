package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BypayProfitStatictisDto;
import com.shiyue.bbs.service.IBypayProfitStatictisService;

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
 
@Controller("addBypayProfitStatictisAction")
@Scope("prototype")
public class AddBypayProfitStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBypayProfitStatictisService bypayProfitStatictisService;
	private BypayProfitStatictisDto bypayProfitStatictisDto= new BypayProfitStatictisDto();

	public String execute() throws Exception {
		try {
			bypayProfitStatictisService.save(bypayProfitStatictisDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final BypayProfitStatictisDto getBypayProfitStatictisDto() {
		return bypayProfitStatictisDto;
	}

	public final void setStudentDto(BypayProfitStatictisDto bypayProfitStatictisDto) {
		this.bypayProfitStatictisDto = bypayProfitStatictisDto;
	}

}
