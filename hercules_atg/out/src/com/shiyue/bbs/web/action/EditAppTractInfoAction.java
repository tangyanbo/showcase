package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AppTractInfoDto;
import com.shiyue.bbs.service.IAppTractInfoService;

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
 
@Controller("editAppTractInfoAction")
@Scope("prototype")
public class EditAppTractInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAppTractInfoService appTractInfoService;
	private AppTractInfoDto appTractInfoDto =new AppTractInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      AppTractInfoDto tmpAppTractInfoDto = new AppTractInfoDto();
			  tmpAppTractInfoDto.setApp_tract_id(appTractInfoDto.getApp_tract_id());
			  tmpAppTractInfoDto.setApp_tract_name(appTractInfoDto.getApp_tract_name());
			  tmpAppTractInfoDto.setTrans_mer_id(appTractInfoDto.getTrans_mer_id());
			  tmpAppTractInfoDto.setPay_tract(appTractInfoDto.getPay_tract());
			  tmpAppTractInfoDto.setTrans_rate_cost(appTractInfoDto.getTrans_rate_cost());
			  tmpAppTractInfoDto.setTrans_lowest_cost(appTractInfoDto.getTrans_lowest_cost());
			  tmpAppTractInfoDto.setTrans_highest_cost(appTractInfoDto.getTrans_highest_cost());
			  tmpAppTractInfoDto.setBypay_profit(appTractInfoDto.getBypay_profit());
			  tmpAppTractInfoDto.setStatus(appTractInfoDto.getStatus());
			  tmpAppTractInfoDto.setCreate_time(appTractInfoDto.getCreate_time());
			  tmpAppTractInfoDto.setRemark(appTractInfoDto.getRemark());
			  tmpAppTractInfoDto.setReserved(appTractInfoDto.getReserved());
			  tmpAppTractInfoDto.setPer_card_quota(appTractInfoDto.getPer_card_quota());
			  tmpAppTractInfoDto.setCard_quota(appTractInfoDto.getCard_quota());
			  tmpAppTractInfoDto.setCard_count(appTractInfoDto.getCard_count());
			  tmpAppTractInfoDto.setTrans_time_begin(appTractInfoDto.getTrans_time_begin());
			  tmpAppTractInfoDto.setTrans_time_end(appTractInfoDto.getTrans_time_end());
			  tmpAppTractInfoDto.setTract_type(appTractInfoDto.getTract_type());
			  tmpAppTractInfoDto.setTerminal_id(appTractInfoDto.getTerminal_id());
			  tmpAppTractInfoDto.setSpid(appTractInfoDto.getSpid());
		
			appTractInfoService.updatePK(appTractInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AppTractInfoDto getAppTractInfoDto() {
		return appTractInfoDto;
	}

	public final void setStudentDto(AppTractInfoDto appTractInfoDto) {
		this.appTractInfoDto = appTractInfoDto;
	}

}
