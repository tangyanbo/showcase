package ${config.cfg_easy_module_package}.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import ${config.cfg_easy_module_package}.service.I${table.className}Service;

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
 
@Controller("edit${table.className}Action")
@Scope("prototype")
public class Edit${table.className}Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private I${table.className}Service ${table.lowerCaseFirstClassName}Service;
	private ${table.className}Dto ${table.lowerCaseFirstClassName}Dto =new ${table.className}Dto();;

	public String execute() throws Exception {
		try {
		    
		      ${table.className}Dto tmp${table.className}Dto = new ${table.className}Dto();
			<#list table.columns as c >	
			  tmp${table.className}Dto.set${c.columnNameFcu}(${table.lowerCaseFirstClassName}Dto.get${c.columnNameFcu}());
	 		</#list>
		
			${table.lowerCaseFirstClassName}Service.updatePK(${table.lowerCaseFirstClassName}Dto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final ${table.className}Dto get${table.className}Dto() {
		return ${table.lowerCaseFirstClassName}Dto;
	}

	public final void setStudentDto(${table.className}Dto ${table.lowerCaseFirstClassName}Dto) {
		this.${table.lowerCaseFirstClassName}Dto = ${table.lowerCaseFirstClassName}Dto;
	}

}
