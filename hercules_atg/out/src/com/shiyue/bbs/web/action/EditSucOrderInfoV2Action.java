package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SucOrderInfoV2Dto;
import com.shiyue.bbs.service.ISucOrderInfoV2Service;

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
 
@Controller("editSucOrderInfoV2Action")
@Scope("prototype")
public class EditSucOrderInfoV2Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISucOrderInfoV2Service sucOrderInfoV2Service;
	private SucOrderInfoV2Dto sucOrderInfoV2Dto =new SucOrderInfoV2Dto();;

	public String execute() throws Exception {
		try {
		    
		      SucOrderInfoV2Dto tmpSucOrderInfoV2Dto = new SucOrderInfoV2Dto();
			  tmpSucOrderInfoV2Dto.setOrder_id(sucOrderInfoV2Dto.getOrder_id());
			  tmpSucOrderInfoV2Dto.setTrans_mer_id(sucOrderInfoV2Dto.getTrans_mer_id());
			  tmpSucOrderInfoV2Dto.setTrans_ter_id(sucOrderInfoV2Dto.getTrans_ter_id());
			  tmpSucOrderInfoV2Dto.setChannel_type(sucOrderInfoV2Dto.getChannel_type());
			  tmpSucOrderInfoV2Dto.setTrans_amt(sucOrderInfoV2Dto.getTrans_amt());
			  tmpSucOrderInfoV2Dto.setTrans_cur(sucOrderInfoV2Dto.getTrans_cur());
			  tmpSucOrderInfoV2Dto.setTrans_time(sucOrderInfoV2Dto.getTrans_time());
			  tmpSucOrderInfoV2Dto.setTrans_status(sucOrderInfoV2Dto.getTrans_status());
			  tmpSucOrderInfoV2Dto.setTrans_type(sucOrderInfoV2Dto.getTrans_type());
			  tmpSucOrderInfoV2Dto.setRes_code(sucOrderInfoV2Dto.getRes_code());
			  tmpSucOrderInfoV2Dto.setRes_desc(sucOrderInfoV2Dto.getRes_desc());
			  tmpSucOrderInfoV2Dto.setTrans_qid(sucOrderInfoV2Dto.getTrans_qid());
			  tmpSucOrderInfoV2Dto.setTrans_trace_number(sucOrderInfoV2Dto.getTrans_trace_number());
			  tmpSucOrderInfoV2Dto.setTrans_trace_time(sucOrderInfoV2Dto.getTrans_trace_time());
			  tmpSucOrderInfoV2Dto.setSettle_date(sucOrderInfoV2Dto.getSettle_date());
			  tmpSucOrderInfoV2Dto.setSettle_amt(sucOrderInfoV2Dto.getSettle_amt());
			  tmpSucOrderInfoV2Dto.setSettle_cur(sucOrderInfoV2Dto.getSettle_cur());
			  tmpSucOrderInfoV2Dto.setSettle_conver_rate(sucOrderInfoV2Dto.getSettle_conver_rate());
			  tmpSucOrderInfoV2Dto.setMobile(sucOrderInfoV2Dto.getMobile());
			  tmpSucOrderInfoV2Dto.setId_type(sucOrderInfoV2Dto.getId_type());
			  tmpSucOrderInfoV2Dto.setId_no(sucOrderInfoV2Dto.getId_no());
			  tmpSucOrderInfoV2Dto.setUser_name(sucOrderInfoV2Dto.getUser_name());
			  tmpSucOrderInfoV2Dto.setBind_num(sucOrderInfoV2Dto.getBind_num());
			  tmpSucOrderInfoV2Dto.setPan(sucOrderInfoV2Dto.getPan());
			  tmpSucOrderInfoV2Dto.setCard_type(sucOrderInfoV2Dto.getCard_type());
			  tmpSucOrderInfoV2Dto.setIssbank_id(sucOrderInfoV2Dto.getIssbank_id());
			  tmpSucOrderInfoV2Dto.setIssbank_name(sucOrderInfoV2Dto.getIssbank_name());
			  tmpSucOrderInfoV2Dto.setCh_info(sucOrderInfoV2Dto.getCh_info());
			  tmpSucOrderInfoV2Dto.setAccount1(sucOrderInfoV2Dto.getAccount1());
			  tmpSucOrderInfoV2Dto.setAccount2(sucOrderInfoV2Dto.getAccount2());
			  tmpSucOrderInfoV2Dto.setOrg_order_id(sucOrderInfoV2Dto.getOrg_order_id());
			  tmpSucOrderInfoV2Dto.setCreate_time(sucOrderInfoV2Dto.getCreate_time());
			  tmpSucOrderInfoV2Dto.setModify_time(sucOrderInfoV2Dto.getModify_time());
			  tmpSucOrderInfoV2Dto.setReserved(sucOrderInfoV2Dto.getReserved());
			  tmpSucOrderInfoV2Dto.setExt(sucOrderInfoV2Dto.getExt());
			  tmpSucOrderInfoV2Dto.setCsn(sucOrderInfoV2Dto.getCsn());
			  tmpSucOrderInfoV2Dto.setTrans_mer_name(sucOrderInfoV2Dto.getTrans_mer_name());
			  tmpSucOrderInfoV2Dto.setSpid(sucOrderInfoV2Dto.getSpid());
		
			sucOrderInfoV2Service.updatePK(sucOrderInfoV2Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SucOrderInfoV2Dto getSucOrderInfoV2Dto() {
		return sucOrderInfoV2Dto;
	}

	public final void setStudentDto(SucOrderInfoV2Dto sucOrderInfoV2Dto) {
		this.sucOrderInfoV2Dto = sucOrderInfoV2Dto;
	}

}
