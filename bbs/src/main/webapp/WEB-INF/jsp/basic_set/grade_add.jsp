<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
				"grade.name" : {
					required : true,
					"uniqueCheck" : {
						"checkUrl" : "isExistGradeName.action",
						"paramName" : "grade.name",
						"paramValue" : $("input[name='grade.name']").val()
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
					digits : "序号为整数"
				}
			}			
		});
	});

	
</script>
</head>
<form id="addForm" action="saveGrade.action" method="post">
<table>
	<tr>
		<td>年级名称<font color="red">*</font></td>
		<td><input type="text" name="grade.name" maxlength="10" /></td>
	</tr>
	<tr>
		<td>所属学段<font color="red">*</font></td>
		<td>&nbsp;&nbsp;
			<select name="grade.stageId" id="stageId">
				<c:forEach items="${stageList }" var="stage">
				<option value="${stage.stageId }">${stage.name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>序号<font color="red">*</font></td>
		<td><input type="text" name="grade.sort" maxlength=4 /></td>
	</tr>
</table>
</form>