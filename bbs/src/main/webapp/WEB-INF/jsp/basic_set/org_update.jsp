<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/user.css'/>" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#modifyForm").validate({
			rules :{
				"org.name" : {
					required : true,
					"uniqueCheck" : {
						"checkUrl" : "isExistOrgName.action",
						"paramName" : "org.name",
						"paramValue" : "${org.name}"
					}
				},
				"org.sort" : {
					required : true,
					digits : true
				}
			},
			messages : {
				"org.name" : {
					required : "请填写部门名称"
				},
				"org.sort" : {
					required : "请填写序号"
				}
			}			
		});
		
		$("#modifyForm").submit(function(){
			var valid = $(this).valid();
			if(valid){
				$("#modifyDiv").dialog("close");
			}
		});
		
		$("#checkAll").click(function(){
			var checked = $(this).attr("checked");
			if(checked == "checked"){
				$("[name='gradeIdList']").attr("checked","checked");
			}else{
				$("[name='gradeIdList']").removeAttr("checked");
			}			
		});		
	});
	
</script>

<form action="updateOrg.action" method="post" id="modifyForm" title="添加/修改部门">
	<input type="hidden" name="org.organizationId" value="${org.organizationId}"/>
	<table>
		<tr>
			<td align="right" style="font-size: 14px;"><font color="red">*</font>编号</td>
			<td><span id="orgId_span">${org.organizationId}</span></td>
		</tr>
		<tr>
			<td align="right" style="font-size: 14px;"><font color="red">*</font>部门名称</td>
			<td><input type="text" name="org.name" value="${org.name}" maxlength="50"/></td>
		</tr>
		<tr>
			<td align="right" style="font-size: 14px;"><font color="red">*</font>序号</td>
			<td><input type="text" name="org.sort" value="${org.sort}" maxlength="3"/></td>
		</tr>
	</table>
</form>