package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.TractStatictisDto;
import com.shiyue.bbs.service.ITractStatictisService;

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
 
@Controller("editTractStatictisAction")
@Scope("prototype")
public class EditTractStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITractStatictisService tractStatictisService;
	private TractStatictisDto tractStatictisDto =new TractStatictisDto();;

	public String execute() throws Exception {
		try {
		    
		      TractStatictisDto tmpTractStatictisDto = new TractStatictisDto();
			  tmpTractStatictisDto.setId(tractStatictisDto.getId());
			  tmpTractStatictisDto.setTract_id(tractStatictisDto.getTract_id());
			  tmpTractStatictisDto.setStatictis_date(tractStatictisDto.getStatictis_date());
			  tmpTractStatictisDto.setPay_amt(tractStatictisDto.getPay_amt());
			  tmpTractStatictisDto.setRefund_amt(tractStatictisDto.getRefund_amt());
			  tmpTractStatictisDto.setUse_amt(tractStatictisDto.getUse_amt());
			  tmpTractStatictisDto.setReserved1(tractStatictisDto.getReserved1());
			  tmpTractStatictisDto.setReserved2(tractStatictisDto.getReserved2());
			  tmpTractStatictisDto.setReserved3(tractStatictisDto.getReserved3());
		
			tractStatictisService.updatePK(tractStatictisDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final TractStatictisDto getTractStatictisDto() {
		return tractStatictisDto;
	}

	public final void setStudentDto(TractStatictisDto tractStatictisDto) {
		this.tractStatictisDto = tractStatictisDto;
	}

}
