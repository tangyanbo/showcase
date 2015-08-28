package ${config.cfg_easy_module_package}.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import ${config.cfg_easy_module_package}.service.I${table.className}Service;

 /**
 * 类功能:自动代码生成模板新增   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("add${table.className}Page")
@Scope("prototype")
public class Add${table.className}Page extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private I${table.className}Service ${table.lowerCaseFirstClassName}Service;

	public String execute() throws Exception {

		try {
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

}
