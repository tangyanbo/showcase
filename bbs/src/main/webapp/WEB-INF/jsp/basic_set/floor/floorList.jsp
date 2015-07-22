<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>教师管理</title>
<jsp:include page="../../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script>
	$(function() {
		initBasicTab(7);
		
		if("${status}" == "error"){
			$.showFMsgBox("对象下面有数据，不能删除!", 2000);
		}
		
		$("#add").click(function(){
			$("#addDiv").load("toFloorAdd.action",function(){
				$("#addDiv").dialog({
					resizable : true,
					autoOpen : false,
					minWidth : 350,
					position: ['',50],
					modal: true,
					show:"slide",
					hide:"slide",
					title : "添加新楼房",
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
			$("#modifyDiv").load("toFloorUpdate.action?floorId="+floorId,function(){
				$("#modifyDiv").dialog({
					resizable : true,
					autoOpen:false,
					minWidth : 350,
					modal: true,
					position: ['',50],
					show:"slide",
					hide:"slide",
					title : "修改楼房信息",
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
			$.confirm("删除教学楼","确认删除此教学楼吗？",function(){
				window.location.href = "deleteFloor.action?floorId=" + floorId;
			});
		});
		
		toRoomType=function(){
			window.location.href="toRoomTypeList.action";
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
			<div>
				<div style="width:49%;float:left;font-family: '宋体';"><label onclick="toRoomType();"><input type="radio" name="roomParam" value="1" />按教室类型</label>&nbsp;&nbsp;<label><input type="radio" name="roomParam" checked="checked" value="2" />按教学楼</label></div>
				<div style="padding-right:2px;"><a href="javascript:void(0);" id="add" class="icon_add_grade r" title="添加教学楼" ></a></div>
			</div>
			<table class="user_table">
				<thead>
					<tr>
						<th width="30%">教学楼</th>
						<th width="60%">地点</th>
						<th width="10%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${floors}" var="floor">
						<tr>
							<td><a href="toRoomList.action?floorId=${floor.floorId}" title="点击进入教室管理页面">${floor.name}</a></td>
							<td>${floor.address}</td>
							<td>
								<a class="icon_update" href="javascript:void(0);" title="修改" floorId="${floor.floorId}"></a>
								&nbsp;
								<a class="icon_delete" href="javascript:void(0);" title="删除" floorId="${floor.floorId}"></a>
							</td>
						</tr>						
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
