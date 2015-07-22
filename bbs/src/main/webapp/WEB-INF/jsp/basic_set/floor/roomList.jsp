<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>教学楼管理</title>
<jsp:include page="../../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script>
	$(function() {
		initBasicTab(7);
		
		$("#add").click(function(){
			var floorId = $(this).attr("floorId");
			var typeId=$(this).attr("typeId");
			$("#addDiv").load("toRoomAdd.action?floorId=" + floorId+"&typeId="+typeId,function(){
				$("#addDiv").dialog({
					resizable : true,
					autoOpen : false,
					minWidth : 350,
					position: ['',50],
					modal: true,
					show:"slide",
					hide:"slide",
					title : "添加新教室",
					buttons : {
						"提交" : function() {
							$("#addForm").submit();
						}
					},
					close : function(){
						$(this).empty();
					}
				});
				$("#addDiv").dialog("open");
			});	
		});
		
		$(".icon_update").click(function(){
			var floorId = $(this).attr("floorId");
			var roomId = $(this).attr("roomId");
			var typeId=$(this).attr("typeId");
			$("#modifyDiv").load("toRoomUpdate.action?floorId=" + floorId + "&roomId=" + roomId+"&typeId="+typeId,function(){
				$("#modifyDiv").dialog({
					resizable : true,
					autoOpen:false,
					minWidth : 350,
					modal: true,
					position: ['',50],
					show:"slide",
					hide:"slide",
					title : "修改教室信息",
					buttons : {
						"提交" : function() {
							$("#modifyForm").submit();
						}
					},
					close : function(){
						$(this).empty();
					}
				});
				$("#modifyDiv").dialog("open");
			});				
		});
		
		$(".icon_delete").click(function(){
			var floorId = $(this).attr("floorId");
			var roomId = $(this).attr("roomId");
			var typeId=$(this).attr("typeId");
			$.confirm("删除教室","确认删除此教室吗？",function(){
				window.location.href = "deleteRoom.action?floorId=" + floorId + "&roomId=" + roomId+"&typeId="+typeId;
			});
		});
		
		parent.indexIframeResize();
	});
</script>

</head>

<body style="margin: 1px;">
	<div id="addDiv"></div>
	<div id="modifyDiv"></div>
	<div id="basicTab">
		<jsp:include page="../basicset_header.jsp" />
		<div id="teacher">
			<div style="padding-bottom:.5em;height:20px;">
				<div style="width:49%;float:left;font-family: '宋体';">
					<c:if test="${not empty floor }">
						<a href="toFloorList.action">教学楼列表</a>&gt;&gt;${floor.name}
					</c:if>
					<c:if test="${not empty roomType }">
						<a href="toRoomTypeList.action">教室类型列表</a>&gt;&gt;${roomType.name}
					</c:if>
				</div>
				<div style="padding-right:2px;">
					<c:if test="${not empty floor }">
						<a class="icon_back" href="toFloorList.action">返回</a>
					</c:if>
					<c:if test="${not empty roomType }">
						<a class="icon_back" href="toRoomTypeList.action">返回</a>
					</c:if>
					<a href="javascript:void(0);" id="add" class="icon_add_grade r" style="height: 16px;margin-right: .5em;" title="添加教室" floorId="${floor.floorId}" typeId="${roomType.typeId }"></a>
				</div>
			</div>
			<table class="user_table">
				<thead>
					<tr>
						<th width="30%">教室</th>
						<c:if test="${not empty floor }">
							<th width="30%">教室类型</th>
						</c:if>
						<c:if test="${not empty roomType }">
							<th width="30%">教学楼</th>
						</c:if>
						<th width="30%">地点</th>
						<th width="10%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${rooms}" var="room">
						<tr>
							<td>${room.name}</td>
							<c:if test="${not empty floor }">
								<td>${room.roomType.name }</td>
							</c:if>
							<c:if test="${not empty roomType }">
								<td>${room.floor.name }</td>
							</c:if>
							<td>${room.address}</td>
							<td>
								<a class="icon_update" href="javascript:void(0);" typeId="${roomType.typeId }" floorId="${floor.floorId}" roomId="${room.roomId}" title="修改"></a>
								&nbsp;
								<a class="icon_delete" href="javascript:void(0);" typeId="${roomType.typeId }" floorId="${floor.floorId}" roomId="${room.roomId}" title="删除"></a>
							</td>
						</tr>						
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>