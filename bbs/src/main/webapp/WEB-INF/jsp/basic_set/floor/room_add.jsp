<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				"room.name" : {
					required : true
				},
				"room.roomType.typeId" : {
					required : true
				},
				"room.floor.floorId" : {
					required : true
				}
			},
			messages : {
				"room.name" : "请填写教室名称",
				"room.roomType.typeId" : "请选择教室类型",
				"room.floor.floorId" : "请选择教学楼"
			}			
		});
		
		$("#addForm").submit(function(){
			var valid = $("#addForm").valid();
			if(valid){
				$("#addDiv").dialog("close");
			}
		});
		
		<c:if test="${not empty floor}">
		$("#floorId").attr('value','${floorId}'); 
		</c:if>
		<c:if test="${not empty roomType}">
		$("#typeId").attr('value','${typeId}'); 
		</c:if>
	});	
</script>
</head>

<form id="addForm" action="addRoom.action" method="post">
<input type="hidden" name="typeId" value="${typeId}"/>
<input type="hidden" name="floorId" value="${floorId}"/>
<table>
	<tr>
		<td>教室名<font color="red">*</font></td>
		<td><input type="text" name="room.name" id="name" value="" 
			maxlength="10" /></td>
		<td>限10字</td>
	</tr>
	<tr>
		<td>所属楼<font color="red">*</font></td>
		<td colspan="2">
			<select name="room.floor.floorId" id="floorId">
				<c:forEach items="${floors }" var="f">
				<option value="${f.floorId }">${f.name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>教室类型<font color="red">*</font></td>
		<td colspan="2">
			<select name="room.roomType.typeId" id="typeId">
				<c:forEach items="${roomTypes }" var="r">
				<option value="${r.typeId }">${r.name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>地点</td>
		<td><input type="text" name="room.address" id="courseSort"
			value="" maxlength="20"/></td>
		<td>限20字</td>
	</tr>

</table>
</form>