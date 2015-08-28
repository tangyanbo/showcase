package ${config.cfg_easy_module_package}.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import  ${config.cfg_easy_module_package}.dao.I${table.className}Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import ${config.cfg_easy_module_package}.model.${table.className}QueryBean;

/**
 * 类功能:自动代码生成模板 DaoImpl 模板
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
@Service("${table.lowerCaseFirstClassName}Dao")
public class ${table.className}DaoImpl extends BaseDaoImpl<${table.className}Dto, String> implements I${table.className}Dao{
	public ${table.className}DaoImpl() {
		super(${table.className}Dto.class);
	}
	
	
	/****
	 * 
	 * @param ${table.lowerCaseFirstClassName}QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult query${table.className}ListPage(${table.className}QueryBean ${table.lowerCaseFirstClassName}QueryBean,PagingObject pagingObject) throws Exception
	 {	
		${table.lowerCaseFirstClassName}QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("${table.lowerCaseFirstClassName}.select_${table.lowerCaseFirstClassName}List_count",${table.lowerCaseFirstClassName}QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List ${table.lowerCaseFirstClassName}List = this.getSqlMapClientTemplate().queryForList("${table.lowerCaseFirstClassName}.select_${table.lowerCaseFirstClassName}List", ${table.lowerCaseFirstClassName}QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(${table.lowerCaseFirstClassName}List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
