<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>部门管理</title>
<jsp:include page="../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/page.css'/>" />
<style type="text/css">
#modifyForm label.error {	
	color: red;
	padding-top:5px;
	font-family: Verdana;
}
</style>
<script src="<c:url value='/js/basic-set/org.js'/>"></script>
<script>
	$(function() {
		initBasicTab(4);
		$(".toModify").click(function(){
			var orgId = $(this).attr("orgId");
			toModify(orgId);			
		});
		$(".delete").click(function(){
			var orgId = $(this).attr("orgId");
			deleteOrg(orgId);
		});
		$("#toAdd").click(function(){
			var orgId = $(this).attr("orgId");
			toAdd(orgId);
		});
		parent.indexIframeResize();
	});
</script>
</head>
<body style="margin: 1px;">
	<div id="addDiv"></div>
	<div id="modifyDiv"></div>
	<div id="basicTab">
		<jsp:include page="basicset_header.jsp" />
		<div id="teacher">
			<div style="padding-right:2px;"><a href="#" id="toAdd" class="icon_add_grade r" title="添加部门" ></a></div>
			<table class="user_table">
				<thead>
					<tr>
						<th width="5%" nowrap="nowrap">序号</th>
						<th width="15%" nowrap="nowrap">编号</th>
						<th width="50%" nowrap="nowrap">名称</th>
						<th width="5%" nowrap="nowrap">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orgList}"
						var="org">
						<tr>
							<td nowrap="nowrap">${org.sort }</td>
							<td nowrap="nowrap">${org.organizationId}</td>
							<td nowrap="nowrap">${org.name }</td>
							<td nowrap="nowrap">
							<a class="toModify" orgId="${org.organizationId}"
								href="javascript:void(0);"><img
									src="theme/${theme}/images/letter1.gif" width="15" height="16"
									border="0" title="编辑部门" /></a>&nbsp;
							<a class="delete" orgId="${org.organizationId}" href="javascript:void(0);"
								><img
									src="theme/${theme}/images/icon_11.gif" width="12" height="12"
									border="0" title="删除部门" /></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

	</div>

	<div id="selectTeacher" style='overflow: outo;' title='用户选择'>
		<iframe name="selectUserIframe" id="selectUserIframe" src=""
			style="width: 100%; height: 100%" align="middle" frameborder="0"></iframe>
	</div>
</body>
</html>
