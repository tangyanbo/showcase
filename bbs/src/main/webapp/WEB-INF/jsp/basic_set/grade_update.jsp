<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<style type="text/css">
#modifyForm label.error {	
	color: red;
	padding-top:5px;
	font-family: Verdana;
}
</style>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/user.css'/>" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#modifyForm").validate({
			rules :{
				"grade.name" : {
					required : true,
					"uniqueCheck" : {
						"checkUrl" : "isExistGradeName.action",
						"paramName" : "grade.name",
						"paramValue" : "${grade.name}"
					}
				},
				"grade.sort" : {
					required : true,
					digits : true
				}
			},
			messages : {
				"grade.name" : {
					required : "请填写年级名称"
				},
				"grade.sort" : {
					required : "请填写序号",
					digits : "序号为正整数"
				}
			}			
		});
		$("#stageId").val("${grade.stageId}");
	});

	
</script>
</head>
<form id="modifyForm" action="updateGrade.action" method="post">
<input type="hidden" value="${grade.gradeId}" name="grade.gradeId" />
<table>
	<tr>
		<td>年级名称<font color="red">*</font></td>
		<td><input type="text" value="${grade.name}" name="grade.name" maxlength="10" /></td>
	</tr>
	<tr>
		<td>所属学段<font color="red">*</font></td>
		<td>
			&nbsp;&nbsp;&nbsp;<select name="grade.stageId" id="stageId">
				<c:forEach items="${stageList }" var="stage">
				<option value="${stage.stageId }">${stage.name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>序号<font color="red">*</font></td>
		<td><input type="text" name="grade.sort" value="${grade.sort}" maxlength=4 /></td>
	</tr>
</table>
</form>