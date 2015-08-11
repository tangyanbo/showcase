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
 
@Controller("editFactoryCodeAction")
@Scope("prototype")
public class EditFactoryCodeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IFactoryCodeService factoryCodeService;
	private FactoryCodeDto factoryCodeDto =new FactoryCodeDto();;

	public String execute() throws Exception {
		try {
		    
		      FactoryCodeDto tmpFactoryCodeDto = new FactoryCodeDto();
			  tmpFactoryCodeDto.setId(factoryCodeDto.getId());
			  tmpFactoryCodeDto.setFactory_no(factoryCodeDto.getFactory_no());
			  tmpFactoryCodeDto.setFactory_name(factoryCodeDto.getFactory_name());
			  tmpFactoryCodeDto.setReserved1(factoryCodeDto.getReserved1());
			  tmpFactoryCodeDto.setReserved2(factoryCodeDto.getReserved2());
			  tmpFactoryCodeDto.setReserved3(factoryCodeDto.getReserved3());
		
			factoryCodeService.updatePK(factoryCodeDto);
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

}
