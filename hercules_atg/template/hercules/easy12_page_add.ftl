<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="add${table.className}From" name="add${table.className}From" method="post" action="add${table.className}Action.action">
				<div class="search-panel-bd">
				 <table class="search-table">
					<#list table.columns as c >
					  <#list table.primaryKeys as c1 > 
					  <#if (c1.columnName!=c.columnName)>
					    <#if (c.javaType=='java.util.Date'||(c.javaType=='java.sql.Timestamp'))>
						<tr>
							<th class="wd-20"><label>${c.columnName}</label></th>
							<td>
								<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}" class="easyui-datebox" data-options="required:true,invalidMessage:'${c.columnName}格式必须为yyyy-mm-dd',missingMessage:'${c.columnName}格式必须为yyyy-mm-dd'"  style="width:200px;"/>
							</td>
						 </tr>
						</#if>
					    <#if (c.javaType=='java.math.BigDecimal')||(c.javaType=='java.lang.Long') ||(c.javaType=='java.lang.Integer')||(c.javaType=='java.lang.Float')||(c.javaType=='java.lang.Double')>
						 <tr>
							<th class="wd-20"><label>${c.columnName}</label></th>
							<td>
								<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'${c.columnName}必须为数字',missingMessage:'${c.columnName}必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
					    </#if>
					    <#if (c.javaType=='java.lang.String')||(c.javaType=='Boolean')> 
						 <tr>
							<th class="wd-20"><label>${c.columnName}</label></th>
							<td>
								<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}" class="easyui-validatebox" data-options="required:true,invalidMessage:'${c.columnName}不能为空',missingMessage:'${c.columnName}不能为空'" style="width:200px;"/>
							</td>
						  </tr>
					    </#if>
					   </#if>
					  </#list>
					 </#list>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>