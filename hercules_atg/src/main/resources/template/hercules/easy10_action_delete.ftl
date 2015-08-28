package ${config.cfg_easy_module_package}.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import ${config.cfg_easy_module_package}.service.I${table.className}Service;

 /**
 * 类功能:自动代码生成模板删除   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("del${table.className}Action")
@Scope("prototype")
public class Del${table.className}Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private I${table.className}Service ${table.lowerCaseFirstClassName}Service;
	
	private  String pkid;

	public String execute() throws Exception {
		try {
			${table.className}Dto param${table.className}Dto = new ${table.className}Dto();
			
		//设置主键
		<#if (table.primaryKeys?size==1)>
			<#list table.primaryKeys as c > 
			param${table.className}Dto.set${c.columnNameFcu}(pkid);
			</#list>
		</#if>
			${table.lowerCaseFirstClassName}Service.deletePK(param${table.className}Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ERROR;
	}


	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
