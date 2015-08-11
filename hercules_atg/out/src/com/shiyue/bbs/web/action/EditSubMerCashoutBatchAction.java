package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerCashoutBatchDto;
import com.shiyue.bbs.service.ISubMerCashoutBatchService;

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
 
@Controller("editSubMerCashoutBatchAction")
@Scope("prototype")
public class EditSubMerCashoutBatchAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerCashoutBatchService subMerCashoutBatchService;
	private SubMerCashoutBatchDto subMerCashoutBatchDto =new SubMerCashoutBatchDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerCashoutBatchDto tmpSubMerCashoutBatchDto = new SubMerCashoutBatchDto();
			  tmpSubMerCashoutBatchDto.setBatch_id(subMerCashoutBatchDto.getBatch_id());
			  tmpSubMerCashoutBatchDto.setBatch_date(subMerCashoutBatchDto.getBatch_date());
			  tmpSubMerCashoutBatchDto.setPrder_amt(subMerCashoutBatchDto.getPrder_amt());
			  tmpSubMerCashoutBatchDto.setCreate_date(subMerCashoutBatchDto.getCreate_date());
			  tmpSubMerCashoutBatchDto.setFinish_time(subMerCashoutBatchDto.getFinish_time());
			  tmpSubMerCashoutBatchDto.setTrans_fee(subMerCashoutBatchDto.getTrans_fee());
			  tmpSubMerCashoutBatchDto.setOrdeer_count(subMerCashoutBatchDto.getOrdeer_count());
			  tmpSubMerCashoutBatchDto.setStatus(subMerCashoutBatchDto.getStatus());
			  tmpSubMerCashoutBatchDto.setReservaed1(subMerCashoutBatchDto.getReservaed1());
			  tmpSubMerCashoutBatchDto.setReservaed2(subMerCashoutBatchDto.getReservaed2());
			  tmpSubMerCashoutBatchDto.setReservaed3(subMerCashoutBatchDto.getReservaed3());
		
			subMerCashoutBatchService.updatePK(subMerCashoutBatchDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerCashoutBatchDto getSubMerCashoutBatchDto() {
		return subMerCashoutBatchDto;
	}

	public final void setStudentDto(SubMerCashoutBatchDto subMerCashoutBatchDto) {
		this.subMerCashoutBatchDto = subMerCashoutBatchDto;
	}

}
