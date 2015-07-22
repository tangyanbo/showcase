<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
				"floor.name" : {
					required : true,
					maxlength : 10
				}
			},
			messages : {
				"floor.name" : "请填写楼房名称"
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

<form id="addForm" action="addFloor.action" method="post">
<table>
	
	<tr>
		<td>楼名<font color="red">*</font></td>
		<td><input type="text" name="floor.name" id="name" value="" 
			maxlength="10" /></td>
		<td>限10字</td>
	</tr>
	<tr>
		<td>地点</td>
		<td><input type="text" name="floor.address" id="courseSort"
			value="" maxlength="20"/></td>
		<td>限20字</td>
	</tr>

</table>
</form>