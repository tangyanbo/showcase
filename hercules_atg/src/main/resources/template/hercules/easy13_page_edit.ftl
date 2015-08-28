<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="edit${table.className}From" name="edit${table.className}From" method="post" action="edit${table.className}Action.action">
				<div class="search-panel-bd">
					<#if (table.primaryKeys?size==1)>
						<#list table.primaryKeys as c > 
							<input type="hidden" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}" value="${"$"}{${table.lowerCaseFirstClassName}Dto.${c.columnName}}" />
						</#list>
					</#if>
					<table class="search-table">
					   <#list table.columns as c >
					   <#list table.primaryKeys as c1 > 
					  	<#if (c1.columnName!=c.columnName)>
						    <#if (c.javaType=='java.util.Date'||(c.javaType=='java.sql.Timestamp'))>
								<tr>
									<th class="wd-20"><label>${c.columnName}</label></th>
									<td>
										<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}" value="${"$"}{${table.lowerCaseFirstClassName}Dto.${c.columnName}}" class="easyui-datebox" data-options="required:true,invalidMessage:'${c.columnName}格式必须为yyyy-mm-dd',missingMessage:'${c.columnName}格式必须为yyyy-mm-dd'"  style="width:200px;"/>
									</td>
								 </tr>
								</#if>
							    <#if (c.javaType=='java.math.BigDecimal')||(c.javaType=='java.lang.Long') ||(c.javaType=='java.lang.Integer')||(c.javaType=='java.lang.Float')||(c.javaType=='java.lang.Double')>
								 <tr>
									<th class="wd-20"><label>${c.columnName}</label></th>
									<td>
										<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}" value="${"$"}{${table.lowerCaseFirstClassName}Dto.${c.columnName}}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'${c.columnName}必须为数字',missingMessage:'${c.columnName}必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
							    </#if>
							    <#if (c.javaType=='java.lang.String')||(c.javaType=='Boolean')> 
								 <tr>
									<th class="wd-20"><label>${c.columnName}</label></th>
									<td>
										<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}" value="${"$"}{${table.lowerCaseFirstClassName}Dto.${c.columnName}}" class="easyui-validatebox" data-options="required:true,invalidMessage:'${c.columnName}不能为空',missingMessage:'${c.columnName}不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					   		 </#if>
						  </#if>
					   </#list>
					 </#list>
					</table>
				</div>
			</form>
			<form id="del${table.className}From" name="del${table.className}From" method="post" action="del${table.className}Action.action">
				<#if (table.primaryKeys?size==1)>
					<#list table.primaryKeys as c > 
						<input type="hidden" id="pkid" name="pkid" value="${"$"}{${table.lowerCaseFirstClassName}Dto.${c.columnName}}" />
					</#list>
				</#if>
			</form>
		</div>
	</div>
</div>