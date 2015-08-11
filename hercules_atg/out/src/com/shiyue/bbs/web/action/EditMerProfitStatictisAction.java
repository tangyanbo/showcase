package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerProfitStatictisDto;
import com.shiyue.bbs.service.IMerProfitStatictisService;

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
 
@Controller("editMerProfitStatictisAction")
@Scope("prototype")
public class EditMerProfitStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerProfitStatictisService merProfitStatictisService;
	private MerProfitStatictisDto merProfitStatictisDto =new MerProfitStatictisDto();;

	public String execute() throws Exception {
		try {
		    
		      MerProfitStatictisDto tmpMerProfitStatictisDto = new MerProfitStatictisDto();
			  tmpMerProfitStatictisDto.setId(merProfitStatictisDto.getId());
			  tmpMerProfitStatictisDto.setMid(merProfitStatictisDto.getMid());
			  tmpMerProfitStatictisDto.setMer_type(merProfitStatictisDto.getMer_type());
			  tmpMerProfitStatictisDto.setMer_sys_id(merProfitStatictisDto.getMer_sys_id());
			  tmpMerProfitStatictisDto.setAgent_sys_id(merProfitStatictisDto.getAgent_sys_id());
			  tmpMerProfitStatictisDto.setMer_name(merProfitStatictisDto.getMer_name());
			  tmpMerProfitStatictisDto.setSettle_date(merProfitStatictisDto.getSettle_date());
			  tmpMerProfitStatictisDto.setSum_amt(merProfitStatictisDto.getSum_amt());
			  tmpMerProfitStatictisDto.setProfit(merProfitStatictisDto.getProfit());
			  tmpMerProfitStatictisDto.setSum_trans_fee(merProfitStatictisDto.getSum_trans_fee());
			  tmpMerProfitStatictisDto.setCreate_time(merProfitStatictisDto.getCreate_time());
			  tmpMerProfitStatictisDto.setClear_status(merProfitStatictisDto.getClear_status());
			  tmpMerProfitStatictisDto.setClear_order_id(merProfitStatictisDto.getClear_order_id());
			  tmpMerProfitStatictisDto.setFaile_amt(merProfitStatictisDto.getFaile_amt());
			  tmpMerProfitStatictisDto.setBp_serial_number(merProfitStatictisDto.getBp_serial_number());
			  tmpMerProfitStatictisDto.setCount_fee(merProfitStatictisDto.getCount_fee());
		
			merProfitStatictisService.updatePK(merProfitStatictisDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerProfitStatictisDto getMerProfitStatictisDto() {
		return merProfitStatictisDto;
	}

	public final void setStudentDto(MerProfitStatictisDto merProfitStatictisDto) {
		this.merProfitStatictisDto = merProfitStatictisDto;
	}

}
