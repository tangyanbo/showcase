package ${config.cfg_easy_module_package}.web.action;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.hercules.common.tool.json.JsonDateFormatUtil;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import com.ldbank.common.tools.opensymphony.page.PangingUtils;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;

import ${config.cfg_easy_module_package}.model.dto.${table.className}Dto;
import ${config.cfg_easy_module_package}.service.I${table.className}Service;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import ${config.cfg_easy_module_package}.model.${table.className}QueryBean;
 /**
 * 类功能:自动代码生成模板查询   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("search${table.className}Action")
@Scope("prototype")
public class Search${table.className}Action extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private I${table.className}Service ${table.lowerCaseFirstClassName}Service;
	
	private ${table.className}QueryBean ${table.lowerCaseFirstClassName}QueryBean = new ${table.className}QueryBean();

	public String execute() throws Exception {
		try {
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return ERROR;
	}
	
	/***
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getListData() {

		try {
			if (${table.lowerCaseFirstClassName}QueryBean == null) {
				${table.lowerCaseFirstClassName}QueryBean = new ${table.className}QueryBean();
			}
			;

			PagingObject init_pg = PangingUtils.getPagingObjectFormRequest();
			PageResult pageResult = ${table.lowerCaseFirstClassName}Service.query${table.className}ListPage(
					${table.lowerCaseFirstClassName}QueryBean, init_pg);
			pageResult.getResultList();

			// 1.遍历增加自定义内容
			List<Map> rows = pageResult.getResultList();
			for (Map d : rows) {
				// 2.自定义按钮设置在此处
				d.put("EDIT","<a href='javascript:return void(0);' onClick=\"${table.lowerCaseFirstClassName}_list.updateFormSubmit('"+ d.get("<#if (table.primaryKeys?size==1)><#list table.primaryKeys as c >${c.getColumnNameUpperCase()}</#list></#if>")+ "');return false;\"><i class='icon-edit'></i></a>");
				d.put("DETAIL","<a href='javascript:return void(0);'onClick=\"${table.lowerCaseFirstClassName}_list.detailFormSubmit('"+ d.get("<#if (table.primaryKeys?size==1)><#list table.primaryKeys as c >${c.getColumnNameUpperCase()}</#list></#if>")+ "');return false;\"><i class='icon-search'></i></a>");
           		}

			// 3.组合输出列表查询所需数据
			// JsonConfig 用于解析转换的设置
			JsonConfig config = new JsonConfig();
			JsonDateFormatUtil.formatDateForJsonConfig_type1(config);

			JSONArray json_rows = JSONArray.fromObject(rows, config);
			String json = "{\"total\":\""
					+ pageResult.getPagingObject().getTotal_record()
					+ "\",\"rows\":" + json_rows.toString() + "}";
			System.out.println(json);
			outJSOND(this.getResponse(), json);

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return null;
	}
	
	public final ${table.className}QueryBean get${table.className}QueryBean() {
		return ${table.lowerCaseFirstClassName}QueryBean;
	}

	public final void set${table.className}QueryBean(${table.className}QueryBean ${table.lowerCaseFirstClassName}QueryBean) {
		this.${table.lowerCaseFirstClassName}QueryBean = ${table.lowerCaseFirstClassName}QueryBean;
	}

}
