package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.PayInfoDto;
import com.shiyue.bbs.service.IPayInfoService;

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
 
@Controller("editPayInfoAction")
@Scope("prototype")
public class EditPayInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IPayInfoService payInfoService;
	private PayInfoDto payInfoDto =new PayInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      PayInfoDto tmpPayInfoDto = new PayInfoDto();
			  tmpPayInfoDto.setOrder_id(payInfoDto.getOrder_id());
			  tmpPayInfoDto.setTrans_mer_id(payInfoDto.getTrans_mer_id());
			  tmpPayInfoDto.setTrans_ter_id(payInfoDto.getTrans_ter_id());
			  tmpPayInfoDto.setChannel_type(payInfoDto.getChannel_type());
			  tmpPayInfoDto.setTrans_amt(payInfoDto.getTrans_amt());
			  tmpPayInfoDto.setTrans_cur(payInfoDto.getTrans_cur());
			  tmpPayInfoDto.setTrans_time(payInfoDto.getTrans_time());
			  tmpPayInfoDto.setTrans_status(payInfoDto.getTrans_status());
			  tmpPayInfoDto.setTrans_type(payInfoDto.getTrans_type());
			  tmpPayInfoDto.setRes_code(payInfoDto.getRes_code());
			  tmpPayInfoDto.setRes_desc(payInfoDto.getRes_desc());
			  tmpPayInfoDto.setSettle_date(payInfoDto.getSettle_date());
			  tmpPayInfoDto.setSettle_cur(payInfoDto.getSettle_cur());
			  tmpPayInfoDto.setId_no(payInfoDto.getId_no());
			  tmpPayInfoDto.setUser_name(payInfoDto.getUser_name());
			  tmpPayInfoDto.setPan(payInfoDto.getPan());
			  tmpPayInfoDto.setCard_type(payInfoDto.getCard_type());
			  tmpPayInfoDto.setAccount2(payInfoDto.getAccount2());
			  tmpPayInfoDto.setOrg_order_id(payInfoDto.getOrg_order_id());
			  tmpPayInfoDto.setCreate_time(payInfoDto.getCreate_time());
			  tmpPayInfoDto.setModify_time(payInfoDto.getModify_time());
			  tmpPayInfoDto.setReserved(payInfoDto.getReserved());
			  tmpPayInfoDto.setExt(payInfoDto.getExt());
			  tmpPayInfoDto.setCsn(payInfoDto.getCsn());
			  tmpPayInfoDto.setTrans_mer_name(payInfoDto.getTrans_mer_name());
			  tmpPayInfoDto.setSpid(payInfoDto.getSpid());
			  tmpPayInfoDto.setIp(payInfoDto.getIp());
			  tmpPayInfoDto.setReference_no(payInfoDto.getReference_no());
			  tmpPayInfoDto.setAuth_no(payInfoDto.getAuth_no());
			  tmpPayInfoDto.setTracking_no(payInfoDto.getTracking_no());
			  tmpPayInfoDto.setAccount2_name(payInfoDto.getAccount2_name());
			  tmpPayInfoDto.setBatch_no(payInfoDto.getBatch_no());
			  tmpPayInfoDto.setExt1(payInfoDto.getExt1());
			  tmpPayInfoDto.setExt2(payInfoDto.getExt2());
			  tmpPayInfoDto.setExt3(payInfoDto.getExt3());
			  tmpPayInfoDto.setCreate_date(payInfoDto.getCreate_date());
			  tmpPayInfoDto.setEntry_mode(payInfoDto.getEntry_mode());
		
			payInfoService.updatePK(payInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final PayInfoDto getPayInfoDto() {
		return payInfoDto;
	}

	public final void setStudentDto(PayInfoDto payInfoDto) {
		this.payInfoDto = payInfoDto;
	}

}
