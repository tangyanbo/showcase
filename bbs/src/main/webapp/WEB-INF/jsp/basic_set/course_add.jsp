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
				"course.name" : {
					required : true,
					"uniqueCheck" : {
						"checkUrl" : "isExistCourseName.action",
						"paramName" : "course.name",
						"paramValue" : $("input[name='course.name']").val()
					}
				},
				"course.sort" : {
					required : true,
					digits : true
				},
				"course.description" : {
					maxlength : 50
				}
			},
			messages : {
				"course.name" : {
					required : "请填写课程名称"
				},
				"course.sort" : {
					required : "请填写序号"
				},
				"course.description" : "最大不能超过50字节"
			}			
		});
		
		$("#addForm").submit(function(){
			var valid = $("#addForm").valid();
			if(valid){
				$("#addDiv").dialog("close");
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
</head>

<form id="addForm" action="addCourse.action" method="post">
<table>
	
	<tr>
		<td>学科名称<font color="red">*</font></td>
		<td><input type="text" name="course.name" id="name" value="" 
			maxlength="25" /></td>
	</tr>
	<tr>
		<td>序号<font color="red">*</font></td>
		<td><input type="text" name="course.sort" id="courseSort"
			value="" maxlength="3"/></td>
	</tr>
	<tr>
		<td><input id="checkAll" type="checkbox" />适用年级</td>
		<td>
			<s:checkboxlist name="gradeIdList" list="gradeList"
			listKey="gradeId"
			listValue="name"			
			>			
			</s:checkboxlist>
			
			
		</td>
	</tr>
	<tr>
		<td>描述</td>
		<td><textarea name="course.description" id="description"
				cols="35" rows="5" maxlength="50"></textarea></td>
	</tr>

</table>
</form>