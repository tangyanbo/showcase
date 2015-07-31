package ${config.cfg_easy_module_package}.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.hercules.database.dao.BaseDao;
import com.hercules.database.service.impl.GenericServiceImpl;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import ${config.cfg_easy_module_package}.dao.I${table.className}Dao;
import ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import ${config.cfg_easy_module_package}.model.${table.className}QueryBean;
import ${config.cfg_easy_module_package}.service.I${table.className}Service;


/**
 * 类功能:自动代码生成模板 ServiceImpl 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */

@Scope("prototype")
@Service("${table.lowerCaseFirstClassName}Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class ${table.className}ServiceImpl extends GenericServiceImpl<${table.className}Dto, String> implements I${table.className}Service{
    @Autowired
    private I${table.className}Dao   ${table.lowerCaseFirstClassName}Dao;

	public BaseDao<${table.className}Dto, String> getBaseDao() {
		return ${table.lowerCaseFirstClassName}Dao;
	}
	

	/****
	 * @param  ${table.lowerCaseFirstClassName}QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult query${table.className}ListPage(${table.className}QueryBean ${table.lowerCaseFirstClassName}QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.${table.lowerCaseFirstClassName}Dao.query${table.className}ListPage(${table.lowerCaseFirstClassName}QueryBean, pagingObject);
	 }
	
}
