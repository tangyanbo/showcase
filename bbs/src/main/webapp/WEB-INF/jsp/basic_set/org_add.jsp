<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<style type="text/css">
#addForm label.error {	
	color: red;
	padding-top:5px;
	font-family: Verdana;
}
</style>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/user.css'/>" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#addForm").validate({
			rules :{
				"org.name" : {
					required : true,
					"uniqueCheck" : {
						"checkUrl" : "isExistOrgName.action",
						"paramName" : "org.name",
						"paramValue" : $("input[name='org.name']").val()
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
		
		$("#addForm").submit(function(){
			var valid = $(this).valid();
			if(valid){
				$("#addDiv").dialog("close");
			}
		});
	});
	
</script>

<form class="xxxx" action="addOrg.action" method="post" id="addForm">
	<table>
		
		<tr>
			<td align="right" style="font-size: 14px;"><font color="red">*</font>部门名称</td>
			<td><input type="text" name="org.name" value="" maxlength="50"/></td>
		</tr>
		<tr>
			<td align="right" style="font-size: 14px;"><font color="red">*</font>序号</td>
			<td><input type="text" name="org.sort" value="" maxlength="3"/></td>
		</tr>
	</table>
</form>