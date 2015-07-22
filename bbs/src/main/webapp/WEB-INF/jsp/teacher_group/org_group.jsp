<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags"  prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../common/head_tag.jsp" />
<title>部门分组</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script src="js/selectusers.js"></script>
<script type="text/javascript">
	$(function(){
		initTab(0);
		var orgId="${orgId}";
		$("#"+orgId).attr("class","label_select fontOrange");
		<c:if test="${not empty userList}">
			$("#addOrgGroup").hide();
		</c:if>
		$(".label_style").click(function(){
			$("#toSelect input[name='orgId']").val(this.id);
			$("#toSelect").submit();
		});
		$("#addOrgTeacher").click(function(){
			$.selectUser(eval("${us}"),showUsers,"string");
		});
		$("#add_org_group").click(function(){
			$.selectUser(eval("${us}"),showUsers,"string");
		});
		showUsers=function(users){
			$("#addForm input[name='userIdStr']").val(users);
			$("#addForm").submit();
		};
		$(".teacherDelete").click(function(){
			var userName=$(this).attr("userName");
			var userId=this.id;
			$.confirm("删除","确认从此部门中移除'"+userName+"'？",function() {
				$("#deleteForm input[name='userId']").val(userId);
				$("#deleteForm").submit();
			});
		});
		parent.indexIframeResize();
	});
</script>
</head>
<body>
<form action="toOrgGroup.action" id="toSelect" method="post" style="display: none;">
	<input type="hidden" name="orgId" />
</form>
<form action="saveOrgGroup.action" id="addForm" method="post" style="display: none;">
	<input type="hidden" name="orgId" id="orgId" value="${orgId }" />
	<input type="hidden" name="userIdStr" />
</form>
<form action="deleteOrgGroup.action" id="deleteForm" method="post" style="display: none;">
	<input type="hidden" name="orgId" value="${orgId }" />
	<input type="hidden" name="userId" />
</form>
<div id="tabs" class="teachersGroup">
	<jsp:include page="teacher_group_header.jsp" />		
	<div class="labelClass">
		<div class="labelContent">
			<a href="toOrgGroupImport.action" class="btn_import"></a>
			<div class="titleDiv">
				<span class="label_title fontBold">部门列表：</span>
			</div>
			<div class="contentDiv" id="orgDiv"><span style="color:red;"><s:actionerror /></span>
			<c:forEach items="${orgList}" var="org">
				<span class="label_style" id="${org.organizationId}">${org.name }</span>
			</c:forEach>
			</div>
		</div>
	</div>
	<div class="detailContent">
		<div class="label_title fontBold">成员列表：</div>
		<div class="contentDiv">
			<c:if test="${not empty orgId }">
			<div class="positionDiv" id="addOrgGroup">
				<div class="wordDiv fontGray fontSixteen" style="cursor: pointer;" id="addOrgTeacher">
					单击此处添加成员...
				</div>
				<div class="imgDiv"></div>
			</div>
			</c:if>
			<c:if test="${not empty userList}">
				<c:forEach items="${userList}" var="u">
					<span><span class="spanStyle">${u.name}</span><span class="teacherDelete" id="${u.userId }" userName="${u.name}">&nbsp;</span></span>
				</c:forEach>
				<span class="add_member" id="add_org_group">&nbsp;</span>
			</c:if>
		</div>
	</div>
</div>
</body>
</html>