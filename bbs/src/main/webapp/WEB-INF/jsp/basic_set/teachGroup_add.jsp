<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 

<head>
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
				"teachGroup.name" : {
					required : true,
					"uniqueCheck" : {
						"checkUrl" : "isExistTeachGroupName.action",
						"paramName" : "teachGroup.name",
						"paramValue" : $("input[name='teachGroup.name']").val()
					}
				},
				"teachGroup.sort" : {
					required : true,
					digits : true
				}
			},
			messages : {
				"teachGroup.name" : {
					required: "请填写教研组名称"
				},
				"teachGroup.sort" : {
					required : "请填写序号"
				}
			}			
		});
		
		$("#addForm").submit(function(){
			var valid = $("#addForm").valid();
			if(valid){
				$("#addDiv").dialog("close");
			}
		});
	});	
</script>
</head>

<form id="addForm" action="saveTeachGroup.action" method="post">
<table>
	
	<tr>
		<td>教研组名称<font color="red">*</font></td>
		<td><input type="text" name="teachGroup.name" id="name" value="" 
			maxlength="25" /></td>
	</tr>
	<tr>
		<td>序号<font color="red">*</font></td>
		<td><input type="text" name="teachGroup.sort" id="courseSort"
			value="" maxlength="3"/></td>
	</tr>
	<tr>
		<td>包含课程</td>
		<td>
			<s:checkboxlist name="courseIdList" list="courseList"
			listKey="courseId"
			listValue="name"			
			>			
			</s:checkboxlist>
			
		</td>
	</tr>
	

</table>
</form>