<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
				"roomType.name" : {
					required : true,
					maxlength : 20
				}
			},
			messages : {
				"roomType.name" : "请填写楼房名称"
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
<form id="modifyForm" action="updateRoomType.action" method="post">
<input type="hidden" value="${roomType.typeId}" name="roomType.typeId" id="typeId" />
<table>
	<tr>
		<td>教室类型名称<font color="red">*</font></td>
		<td><input type="text" name="roomType.name" id="name" value="${roomType.name}" 
			maxlength="20" /></td>
		<td>限20字</td>
	</tr>
	<tr>
		<td>说明</td>
		<td><input type="text" name="roomType.typeContent" id="typeContent"
			value="${roomType.typeContent}" maxlength="100"/></td>
		<td>限100字</td>
	</tr>
</table>
</form>