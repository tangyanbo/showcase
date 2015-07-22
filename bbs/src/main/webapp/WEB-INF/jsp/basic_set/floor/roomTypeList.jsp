<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>教室类型管理</title>
<jsp:include page="../../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script>
	$(function() {
		initBasicTab(7);
		toFloorList=function(){
			window.location.href="toFloorList.action";
		};
		
		if("${status}" == "error"){
			$.showFMsgBox("对象下面有数据，不能删除!", 2000);
		}
		
		toAdd=function(){
			$("#addDiv").load("toRoomTypeAdd.action",function(){
				$("#addDiv").dialog({
					resizable : true,
					autoOpen : false,
					minWidth : 350,
					position: ['',50],
					modal: true,
					show:"slide",
					hide:"slide",
					title : "添加教室类型",
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
		};
		
		toUpdate=function(typeId){
			$("#modifyDiv").load("toRoomTypeUpdate.action?typeId="+typeId,function(){
				$("#modifyDiv").dialog({
					resizable : true,
					autoOpen:false,
					minWidth : 350,
					modal: true,
					position: ['',50],
					show:"slide",
					hide:"slide",
					title : "修改教室类型",
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
		};
		
		toDelete=function(typeId){
			$.confirm("删除教室类型","确认删除此教室类型吗？",function(){
				window.location.href = "deleteRoomType.action?typeId=" + typeId;
			});
		};
		
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
				<div style="width:49%;float:left;font-family: '宋体';"><label><input type="radio" name="roomParam" value="1" checked="checked" />按教室类型</label>&nbsp;&nbsp;<label onclick="toFloorList();"><input type="radio" name="roomParam" value="2" />按教学楼</label></div>
				<div style="padding-right:2px;">
					<a href="javascript:void(0);" onclick="toAdd();" class="icon_add_grade r" style="height: 16px;margin-right: .5em;" title="添加教室类型"></a>
				</div>
			</div>
			<table class="user_table">
				<thead>
					<tr>
						<th width="30%">教室类型</th>
						<th width="60%">说明</th>
						<th width="10%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${roomTypes}" var="roomType">
						<tr>
							<td><a href="toRoomList.action?typeId=${roomType.typeId}" title="点击进入教室管理页面">${roomType.name}</a></td>
							<td>${roomType.typeContent}</td>
							<td>
								<a class="icon_update" href="javascript:void(0);" title="修改" onclick="toUpdate('${roomType.typeId}')" ></a>
								&nbsp;
								<a class="icon_delete" href="javascript:void(0);" title="删除" onclick="toDelete('${roomType.typeId}')" ></a>
							</td>
						</tr>						
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
