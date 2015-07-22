<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		
		$("#modifyForm").submit(function(){
			var valid = $("#modifyForm").valid();
			if(valid){
				$("#modifyDiv").dialog("close");
			}
		});
		
		$("#floorId").attr('value','${room.floor.floorId}'); 
		$("#typeId").attr('value','${room.roomType.typeId}'); 
		
	});	
</script>
</head>

<form id="modifyForm" action="updateRoom.action" method="post">
<input type="hidden" name="room.roomId" value="${room.roomId}"/>
<input type="hidden" name="typeId" value="${typeId}"/>
<input type="hidden" name="floorId" value="${floorId}"/>
<table>
	<tr>
		<td>所属楼<font color="red">*</font></td>
		<td colspan="2">
			<select name="room.floor.floorId" id="floorId">
				<option value="">请选择</option>
				<c:forEach items="${floors }" var="floor">
				<option value="${floor.floorId }">${floor.name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>教室类型<font color="red">*</font></td>
		<td colspan="2">
			<select name="room.roomType.typeId" id="typeId">
				<option value="">请选择</option>
				<c:forEach items="${roomTypes }" var="roomType">
				<option value="${roomType.typeId }">${roomType.name }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>教室名<font color="red">*</font></td>
		<td><input type="text" name="room.name" id="name" value="${room.name}" 
			maxlength="10" /></td>
		<td>限10字</td>
	</tr>
	<tr>
		<td>地点</td>
		<td><input type="text" name="room.address" id="courseSort"
			value="${room.address}" maxlength="20"/></td>
		<td>限20字</td>
	</tr>

</table>
</form>