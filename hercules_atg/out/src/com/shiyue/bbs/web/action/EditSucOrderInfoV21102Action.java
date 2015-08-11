package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SucOrderInfoV21102Dto;
import com.shiyue.bbs.service.ISucOrderInfoV21102Service;

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
 
@Controller("editSucOrderInfoV21102Action")
@Scope("prototype")
public class EditSucOrderInfoV21102Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISucOrderInfoV21102Service sucOrderInfoV21102Service;
	private SucOrderInfoV21102Dto sucOrderInfoV21102Dto =new SucOrderInfoV21102Dto();;

	public String execute() throws Exception {
		try {
		    
		      SucOrderInfoV21102Dto tmpSucOrderInfoV21102Dto = new SucOrderInfoV21102Dto();
			  tmpSucOrderInfoV21102Dto.setOrder_id(sucOrderInfoV21102Dto.getOrder_id());
			  tmpSucOrderInfoV21102Dto.setTrans_mer_id(sucOrderInfoV21102Dto.getTrans_mer_id());
			  tmpSucOrderInfoV21102Dto.setTrans_ter_id(sucOrderInfoV21102Dto.getTrans_ter_id());
			  tmpSucOrderInfoV21102Dto.setChannel_type(sucOrderInfoV21102Dto.getChannel_type());
			  tmpSucOrderInfoV21102Dto.setTrans_amt(sucOrderInfoV21102Dto.getTrans_amt());
			  tmpSucOrderInfoV21102Dto.setTrans_cur(sucOrderInfoV21102Dto.getTrans_cur());
			  tmpSucOrderInfoV21102Dto.setTrans_time(sucOrderInfoV21102Dto.getTrans_time());
			  tmpSucOrderInfoV21102Dto.setTrans_status(sucOrderInfoV21102Dto.getTrans_status());
			  tmpSucOrderInfoV21102Dto.setTrans_type(sucOrderInfoV21102Dto.getTrans_type());
			  tmpSucOrderInfoV21102Dto.setRes_code(sucOrderInfoV21102Dto.getRes_code());
			  tmpSucOrderInfoV21102Dto.setRes_desc(sucOrderInfoV21102Dto.getRes_desc());
			  tmpSucOrderInfoV21102Dto.setTrans_qid(sucOrderInfoV21102Dto.getTrans_qid());
			  tmpSucOrderInfoV21102Dto.setTrans_trace_number(sucOrderInfoV21102Dto.getTrans_trace_number());
			  tmpSucOrderInfoV21102Dto.setTrans_trace_time(sucOrderInfoV21102Dto.getTrans_trace_time());
			  tmpSucOrderInfoV21102Dto.setSettle_date(sucOrderInfoV21102Dto.getSettle_date());
			  tmpSucOrderInfoV21102Dto.setSettle_amt(sucOrderInfoV21102Dto.getSettle_amt());
			  tmpSucOrderInfoV21102Dto.setSettle_cur(sucOrderInfoV21102Dto.getSettle_cur());
			  tmpSucOrderInfoV21102Dto.setSettle_conver_rate(sucOrderInfoV21102Dto.getSettle_conver_rate());
			  tmpSucOrderInfoV21102Dto.setMobile(sucOrderInfoV21102Dto.getMobile());
			  tmpSucOrderInfoV21102Dto.setId_type(sucOrderInfoV21102Dto.getId_type());
			  tmpSucOrderInfoV21102Dto.setId_no(sucOrderInfoV21102Dto.getId_no());
			  tmpSucOrderInfoV21102Dto.setUser_name(sucOrderInfoV21102Dto.getUser_name());
			  tmpSucOrderInfoV21102Dto.setBind_num(sucOrderInfoV21102Dto.getBind_num());
			  tmpSucOrderInfoV21102Dto.setPan(sucOrderInfoV21102Dto.getPan());
			  tmpSucOrderInfoV21102Dto.setCard_type(sucOrderInfoV21102Dto.getCard_type());
			  tmpSucOrderInfoV21102Dto.setIssbank_id(sucOrderInfoV21102Dto.getIssbank_id());
			  tmpSucOrderInfoV21102Dto.setIssbank_name(sucOrderInfoV21102Dto.getIssbank_name());
			  tmpSucOrderInfoV21102Dto.setCh_info(sucOrderInfoV21102Dto.getCh_info());
			  tmpSucOrderInfoV21102Dto.setAccount1(sucOrderInfoV21102Dto.getAccount1());
			  tmpSucOrderInfoV21102Dto.setAccount2(sucOrderInfoV21102Dto.getAccount2());
			  tmpSucOrderInfoV21102Dto.setOrg_order_id(sucOrderInfoV21102Dto.getOrg_order_id());
			  tmpSucOrderInfoV21102Dto.setCreate_time(sucOrderInfoV21102Dto.getCreate_time());
			  tmpSucOrderInfoV21102Dto.setModify_time(sucOrderInfoV21102Dto.getModify_time());
			  tmpSucOrderInfoV21102Dto.setReserved(sucOrderInfoV21102Dto.getReserved());
			  tmpSucOrderInfoV21102Dto.setExt(sucOrderInfoV21102Dto.getExt());
			  tmpSucOrderInfoV21102Dto.setCsn(sucOrderInfoV21102Dto.getCsn());
			  tmpSucOrderInfoV21102Dto.setTrans_mer_name(sucOrderInfoV21102Dto.getTrans_mer_name());
			  tmpSucOrderInfoV21102Dto.setSpid(sucOrderInfoV21102Dto.getSpid());
		
			sucOrderInfoV21102Service.updatePK(sucOrderInfoV21102Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SucOrderInfoV21102Dto getSucOrderInfoV21102Dto() {
		return sucOrderInfoV21102Dto;
	}

	public final void setStudentDto(SucOrderInfoV21102Dto sucOrderInfoV21102Dto) {
		this.sucOrderInfoV21102Dto = sucOrderInfoV21102Dto;
	}

}
