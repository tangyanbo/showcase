<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="edit${table.className}From" name="edit${table.className}From" method="post" action="edit${table.className}Action.action">
				<div class="search-panel-bd">
					<table class="search-table">
					   <#list table.columns as c >
					   <#list table.primaryKeys as c1 > 
					   <#if (c1.columnName!=c.columnName)>
						   <#if (c.javaType=='java.util.Date'||(c.javaType=='java.sql.Timestamp'))>
							<tr>
								<th class="wd-20"><label>${c.columnName}</label></th>
								<td>
									<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}"  value="<fmt:formatDate value='${"$"}{${table.lowerCaseFirstClassName}Dto.${c.columnName}}' type='date'  pattern='yyyy-MM-dd'/>" style="width:200px;" readonly="true" />
								</td>
							 </tr>
							<#else>
							 <tr>
								<th class="wd-20"><label>${c.columnName}</label></th>
								<td>
									<input type="text" id="${table.lowerCaseFirstClassName}Dto.${c.columnName}" name="${table.lowerCaseFirstClassName}Dto.${c.columnName}"  value="${"$"}{${table.lowerCaseFirstClassName}Dto.${c.columnName}}" style="width:200px;" readonly="true" />
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