package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayTractCodeDto;
import com.shiyue.bbs.service.IPayTractCodeService;

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
 
@Controller("detailPayTractCodePage")
@Scope("prototype")
public class DetailPayTractCodePage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayTractCodeService payTractCodeService;
	
	//入参
	private  String     pkid;
	
	//出参
	private PayTractCodeDto payTractCodeDto;

	
	public String execute() throws Exception {
		try {
		    PayTractCodeDto paramPayTractCodeDto = new PayTractCodeDto();
		//设置主键
			paramPayTractCodeDto.setId(pkid);
			payTractCodeDto = payTractCodeService.getRow(paramPayTractCodeDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayTractCodeDto getPayTractCodeDto() {
		return payTractCodeDto;
	}

	public final void setStudentDto(PayTractCodeDto payTractCodeDto) {
		this.payTractCodeDto = payTractCodeDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
