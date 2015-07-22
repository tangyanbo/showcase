<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 


<head>
<style type="text/css">
#modifyForm label.error {	
	color: red;
	padding-top:5px;
	font-family: Verdana;
}
</style>
<link rel="stylesheet" type="text/css"	href="<c:url value='/theme/${theme}/css/user.css'/>" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#modifyForm").validate({
			rules :{
				"course.name" : {
					required : true,
					"uniqueCheck" : {
						"checkUrl" : "isExistCourseName.action",
						"paramName" : "course.name",
						"paramValue" : "${course.name}"
					}
				},
				"course.sort" : {
					required : true,
					digits : true
				}
			},
			messages : {
				"course.name" : {
					required : "请填写课程名称"
				},
				"course.sort" : {
					required : "请填写序号"
				}
			}			
		});
		
		$("#modifyForm").submit(function(){
			var valid = $("#modifyForm").valid();
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
</head>
<form id="modifyForm" action="updateCourse.action" method="post">
<table>
	<tr>
		<td>学科编号</td>
		<td><span id="courseId_span">${course.courseId}</span><input type="hidden" value="${course.courseId}"
			name="course.courseId" id="courseId" /></td>
	</tr>
	<tr>
		<td>学科名称<font color="red">*</font></td>
		<td><input type="text" name="course.name" id="name" value="${course.name}" 
			maxlength="25" /></td>
	</tr>
	<tr>
		<td>序号<font color="red">*</font></td>
		<td><input type="text" name="course.sort" id="courseSort"
			value="${course.sort}" maxlength="3"/></td>
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
				cols="35" rows="5" maxlength="50">${course.description}</textarea></td>
	</tr>

</table>
</form>