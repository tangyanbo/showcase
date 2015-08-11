package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.RegionCodeDto;
import com.shiyue.bbs.service.IRegionCodeService;

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
 
@Controller("editRegionCodeAction")
@Scope("prototype")
public class EditRegionCodeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IRegionCodeService regionCodeService;
	private RegionCodeDto regionCodeDto =new RegionCodeDto();;

	public String execute() throws Exception {
		try {
		    
		      RegionCodeDto tmpRegionCodeDto = new RegionCodeDto();
			  tmpRegionCodeDto.setId(regionCodeDto.getId());
			  tmpRegionCodeDto.setCode(regionCodeDto.getCode());
			  tmpRegionCodeDto.setName(regionCodeDto.getName());
			  tmpRegionCodeDto.setSuper_code(regionCodeDto.getSuper_code());
			  tmpRegionCodeDto.setLevel(regionCodeDto.getLevel());
			  tmpRegionCodeDto.setRemark(regionCodeDto.getRemark());
			  tmpRegionCodeDto.setRemark1(regionCodeDto.getRemark1());
		
			regionCodeService.updatePK(regionCodeDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final RegionCodeDto getRegionCodeDto() {
		return regionCodeDto;
	}

	public final void setStudentDto(RegionCodeDto regionCodeDto) {
		this.regionCodeDto = regionCodeDto;
	}

}