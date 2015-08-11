package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.V2BankBehalfTransDetailDto;
import com.shiyue.bbs.service.IV2BankBehalfTransDetailService;

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
 
@Controller("editV2BankBehalfTransDetailAction")
@Scope("prototype")
public class EditV2BankBehalfTransDetailAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfTransDetailService v2BankBehalfTransDetailService;
	private V2BankBehalfTransDetailDto v2BankBehalfTransDetailDto =new V2BankBehalfTransDetailDto();;

	public String execute() throws Exception {
		try {
		    
		      V2BankBehalfTransDetailDto tmpV2BankBehalfTransDetailDto = new V2BankBehalfTransDetailDto();
			  tmpV2BankBehalfTransDetailDto.setTrans_detail_id(v2BankBehalfTransDetailDto.getTrans_detail_id());
			  tmpV2BankBehalfTransDetailDto.setBank_behalf_id(v2BankBehalfTransDetailDto.getBank_behalf_id());
			  tmpV2BankBehalfTransDetailDto.setOrder_id(v2BankBehalfTransDetailDto.getOrder_id());
			  tmpV2BankBehalfTransDetailDto.setMer_order_id(v2BankBehalfTransDetailDto.getMer_order_id());
			  tmpV2BankBehalfTransDetailDto.setBus_mer_id(v2BankBehalfTransDetailDto.getBus_mer_id());
			  tmpV2BankBehalfTransDetailDto.setAccount1_no(v2BankBehalfTransDetailDto.getAccount1_no());
			  tmpV2BankBehalfTransDetailDto.setStatus(v2BankBehalfTransDetailDto.getStatus());
			  tmpV2BankBehalfTransDetailDto.setAccount2_no(v2BankBehalfTransDetailDto.getAccount2_no());
			  tmpV2BankBehalfTransDetailDto.setAccount2_name(v2BankBehalfTransDetailDto.getAccount2_name());
			  tmpV2BankBehalfTransDetailDto.setAcc2_bank_code(v2BankBehalfTransDetailDto.getAcc2_bank_code());
			  tmpV2BankBehalfTransDetailDto.setAmount(v2BankBehalfTransDetailDto.getAmount());
			  tmpV2BankBehalfTransDetailDto.setFee(v2BankBehalfTransDetailDto.getFee());
			  tmpV2BankBehalfTransDetailDto.setRes_code(v2BankBehalfTransDetailDto.getRes_code());
			  tmpV2BankBehalfTransDetailDto.setCreate_time(v2BankBehalfTransDetailDto.getCreate_time());
			  tmpV2BankBehalfTransDetailDto.setFinish_time(v2BankBehalfTransDetailDto.getFinish_time());
			  tmpV2BankBehalfTransDetailDto.setAcc1_balance(v2BankBehalfTransDetailDto.getAcc1_balance());
			  tmpV2BankBehalfTransDetailDto.setMer_balance(v2BankBehalfTransDetailDto.getMer_balance());
			  tmpV2BankBehalfTransDetailDto.setMer_fee_bal(v2BankBehalfTransDetailDto.getMer_fee_bal());
			  tmpV2BankBehalfTransDetailDto.setPostscript(v2BankBehalfTransDetailDto.getPostscript());
			  tmpV2BankBehalfTransDetailDto.setAcc2_bank_name(v2BankBehalfTransDetailDto.getAcc2_bank_name());
			  tmpV2BankBehalfTransDetailDto.setPre_detail_id(v2BankBehalfTransDetailDto.getPre_detail_id());
			  tmpV2BankBehalfTransDetailDto.setBranchno(v2BankBehalfTransDetailDto.getBranchno());
			  tmpV2BankBehalfTransDetailDto.setIndex1(v2BankBehalfTransDetailDto.getIndex1());
			  tmpV2BankBehalfTransDetailDto.setRes_desc(v2BankBehalfTransDetailDto.getRes_desc());
			  tmpV2BankBehalfTransDetailDto.setSub_mer_id(v2BankBehalfTransDetailDto.getSub_mer_id());
		
			v2BankBehalfTransDetailService.updatePK(v2BankBehalfTransDetailDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final V2BankBehalfTransDetailDto getV2BankBehalfTransDetailDto() {
		return v2BankBehalfTransDetailDto;
	}

	public final void setStudentDto(V2BankBehalfTransDetailDto v2BankBehalfTransDetailDto) {
		this.v2BankBehalfTransDetailDto = v2BankBehalfTransDetailDto;
	}

}
