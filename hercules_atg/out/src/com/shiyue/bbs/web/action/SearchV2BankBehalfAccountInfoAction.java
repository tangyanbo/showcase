package com.shiyue.bbs.web.action;

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

import com.shiyue.bbs.model.dto.V2BankBehalfAccountInfoDto;
import com.shiyue.bbs.service.IV2BankBehalfAccountInfoService;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import com.shiyue.bbs.model.V2BankBehalfAccountInfoQueryBean;
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
 
@Controller("searchV2BankBehalfAccountInfoAction")
@Scope("prototype")
public class SearchV2BankBehalfAccountInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IV2BankBehalfAccountInfoService v2BankBehalfAccountInfoService;
	
	private V2BankBehalfAccountInfoQueryBean v2BankBehalfAccountInfoQueryBean = new V2BankBehalfAccountInfoQueryBean();

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
			if (v2BankBehalfAccountInfoQueryBean == null) {
				v2BankBehalfAccountInfoQueryBean = new V2BankBehalfAccountInfoQueryBean();
			}
			;

			PagingObject init_pg = PangingUtils.getPagingObjectFormRequest();
			PageResult pageResult = v2BankBehalfAccountInfoService.queryV2BankBehalfAccountInfoListPage(
					v2BankBehalfAccountInfoQueryBean, init_pg);
			pageResult.getResultList();

			// 1.遍历增加自定义内容
			List<Map> rows = pageResult.getResultList();
			for (Map d : rows) {
				// 2.自定义按钮设置在此处
				d.put("EDIT","<a href='javascript:return void(0);' onClick=\"v2BankBehalfAccountInfo_list.updateFormSubmit('"+ d.get("BANKID")+ "');return false;\"><i class='icon-edit'></i></a>");
				d.put("DETAIL","<a href='javascript:return void(0);'onClick=\"v2BankBehalfAccountInfo_list.detailFormSubmit('"+ d.get("BANKID")+ "');return false;\"><i class='icon-search'></i></a>");
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
	
	public final V2BankBehalfAccountInfoQueryBean getV2BankBehalfAccountInfoQueryBean() {
		return v2BankBehalfAccountInfoQueryBean;
	}

	public final void setV2BankBehalfAccountInfoQueryBean(V2BankBehalfAccountInfoQueryBean v2BankBehalfAccountInfoQueryBean) {
		this.v2BankBehalfAccountInfoQueryBean = v2BankBehalfAccountInfoQueryBean;
	}

}
