package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.FactoryCodeDto;
import com.shiyue.bbs.service.IFactoryCodeService;

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
 
@Controller("editFactoryCodePage")
@Scope("prototype")
public class EditFactoryCodePage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFactoryCodeService factoryCodeService;
	
	//入参
	private  String     pkid;
	
	//出参
	private FactoryCodeDto factoryCodeDto;

	
	public String execute() throws Exception {
		try {
		    FactoryCodeDto paramFactoryCodeDto = new FactoryCodeDto();
		//设置主键
			paramFactoryCodeDto.setId(pkid);
			factoryCodeDto = factoryCodeService.getRow(paramFactoryCodeDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final FactoryCodeDto getFactoryCodeDto() {
		return factoryCodeDto;
	}

	public final void setStudentDto(FactoryCodeDto factoryCodeDto) {
		this.factoryCodeDto = factoryCodeDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
