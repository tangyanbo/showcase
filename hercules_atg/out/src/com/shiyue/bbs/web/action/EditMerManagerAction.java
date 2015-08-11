package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerManagerDto;
import com.shiyue.bbs.service.IMerManagerService;

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
 
@Controller("editMerManagerAction")
@Scope("prototype")
public class EditMerManagerAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerManagerService merManagerService;
	private MerManagerDto merManagerDto =new MerManagerDto();;

	public String execute() throws Exception {
		try {
		    
		      MerManagerDto tmpMerManagerDto = new MerManagerDto();
			  tmpMerManagerDto.setId(merManagerDto.getId());
			  tmpMerManagerDto.setMid(merManagerDto.getMid());
			  tmpMerManagerDto.setMer_type(merManagerDto.getMer_type());
			  tmpMerManagerDto.setLogin_name(merManagerDto.getLogin_name());
			  tmpMerManagerDto.setLogin_pwd(merManagerDto.getLogin_pwd());
			  tmpMerManagerDto.setPurview(merManagerDto.getPurview());
			  tmpMerManagerDto.setReal_name(merManagerDto.getReal_name());
			  tmpMerManagerDto.setPhone(merManagerDto.getPhone());
			  tmpMerManagerDto.setEmail(merManagerDto.getEmail());
			  tmpMerManagerDto.setLogin_count(merManagerDto.getLogin_count());
			  tmpMerManagerDto.setLast_login_time(merManagerDto.getLast_login_time());
			  tmpMerManagerDto.setLogin_ip(merManagerDto.getLogin_ip());
			  tmpMerManagerDto.setCreate_time(merManagerDto.getCreate_time());
			  tmpMerManagerDto.setStatus(merManagerDto.getStatus());
			  tmpMerManagerDto.setRemark(merManagerDto.getRemark());
		
			merManagerService.updatePK(merManagerDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerManagerDto getMerManagerDto() {
		return merManagerDto;
	}

	public final void setStudentDto(MerManagerDto merManagerDto) {
		this.merManagerDto = merManagerDto;
	}

}
