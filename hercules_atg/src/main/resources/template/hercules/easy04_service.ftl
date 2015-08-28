package ${config.cfg_easy_module_package}.service;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import ${config.cfg_easy_module_package}.model.${table.className}QueryBean;
import com.hercules.database.service.IGenericService;


/**
 * 类功能:自动代码生成模板   IService 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
public interface I${table.className}Service extends IGenericService<${table.className}Dto, String>{

	/****
	 * 
	 * @param ${table.lowerCaseFirstClassName}QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult query${table.className}ListPage(${table.className}QueryBean ${table.lowerCaseFirstClassName}QueryBean,PagingObject pagingObject) throws Exception;

}
