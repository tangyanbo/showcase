package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.BypayProfitStatictisDto;
import com.shiyue.bbs.service.IBypayProfitStatictisService;

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
 
@Controller("editBypayProfitStatictisAction")
@Scope("prototype")
public class EditBypayProfitStatictisAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IBypayProfitStatictisService bypayProfitStatictisService;
	private BypayProfitStatictisDto bypayProfitStatictisDto =new BypayProfitStatictisDto();;

	public String execute() throws Exception {
		try {
		    
		      BypayProfitStatictisDto tmpBypayProfitStatictisDto = new BypayProfitStatictisDto();
			  tmpBypayProfitStatictisDto.setId(bypayProfitStatictisDto.getId());
			  tmpBypayProfitStatictisDto.setSettle_date(bypayProfitStatictisDto.getSettle_date());
			  tmpBypayProfitStatictisDto.setSum_amt(bypayProfitStatictisDto.getSum_amt());
			  tmpBypayProfitStatictisDto.setSum_fee_amt(bypayProfitStatictisDto.getSum_fee_amt());
			  tmpBypayProfitStatictisDto.setSum_count(bypayProfitStatictisDto.getSum_count());
			  tmpBypayProfitStatictisDto.setSum_camt(bypayProfitStatictisDto.getSum_camt());
			  tmpBypayProfitStatictisDto.setSum_fee_camt(bypayProfitStatictisDto.getSum_fee_camt());
			  tmpBypayProfitStatictisDto.setSum_ccount(bypayProfitStatictisDto.getSum_ccount());
			  tmpBypayProfitStatictisDto.setSum_ramt(bypayProfitStatictisDto.getSum_ramt());
			  tmpBypayProfitStatictisDto.setSum_fee_ramt(bypayProfitStatictisDto.getSum_fee_ramt());
			  tmpBypayProfitStatictisDto.setSum_rcount(bypayProfitStatictisDto.getSum_rcount());
			  tmpBypayProfitStatictisDto.setCreate_time(bypayProfitStatictisDto.getCreate_time());
			  tmpBypayProfitStatictisDto.setSum_tract_fee(bypayProfitStatictisDto.getSum_tract_fee());
			  tmpBypayProfitStatictisDto.setTract_bypay_profit(bypayProfitStatictisDto.getTract_bypay_profit());
			  tmpBypayProfitStatictisDto.setBypay_profit(bypayProfitStatictisDto.getBypay_profit());
			  tmpBypayProfitStatictisDto.setReserved1(bypayProfitStatictisDto.getReserved1());
			  tmpBypayProfitStatictisDto.setReserved2(bypayProfitStatictisDto.getReserved2());
			  tmpBypayProfitStatictisDto.setReserved3(bypayProfitStatictisDto.getReserved3());
		
			bypayProfitStatictisService.updatePK(bypayProfitStatictisDto);
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
