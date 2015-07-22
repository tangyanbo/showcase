<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tn" uri="/sysesp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<jsp:include page="../../common/head_tag.jsp" />
<title>教师列表</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/pagination.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/msgbox.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/common.css'/>" />
<script src="<c:url value='/js/basic-set/user-set.js'/>"></script>
<script src="<c:url value='/js/msgbox.js'/>"></script>
<script type="text/javascript">
	$(function() {
		initTab($("#basicTab"),0);
		$("img[name='modify']").click(function() {
			toTeacherModify($(this).attr("userId"));
		});
		$("#download").click(function(){
			var array = $("form[name='teacher-form']").serializeArray();
			var form = $("#teacherExcel").empty();
			$.each(array,function(){
				form.append("<input name='"+this.name+"' value='"+this.value+"'/>");
			});
			form.submit();
		});
		$("#orgId").val("${orgId}");
		
		$(".setAdmin").click(function(){
			toSetSys($(this).attr("userId"));
		});
		parent.indexIframeResize();
	});
	function searchTeacher(){
		$("#pagination_pageNo").val(0);
		$("form[name='teacher-form']").submit();
	}
</script>
</head>
<body style="margin: 1px;">
<div id="basicTab">
	<form action='teacherExcel.action' method='post' id="teacherExcel" style="display: none;"></form>
	<div id="setSysDiv" title="设置系统角色" style="display:none;"></div>
	<jsp:include page="../user_header.jsp" />
	<div id="teacher">
	<tn:pagination name="teacher-form" action="findTeacher.action" method="post" totalCount="${pageInfo.totalCount}" currentPageNo="${pageInfo.pageNo}" pageSize="${pageInfo.pageSize}">
	<div class="nav" style="margin-bottom: 10px;" id="teacher-nav" >
			<div>
			<span class="btn_bj" onclick="javascript:doDelete('findTeacher');">删除</span>
			<span class="btn_bj" id="download">下载</span>
			<span>关键词：</span><input type="text" id="keyword" name="keyword" value="${keyword}" />
            <span>部　门：	
            <select style="width:140px;margin-top: 4px;vertical-align: top;" id="orgId" name="orgId">
            <option value="">请选择部门</option>
            <c:forEach items="${orgList}" var="org">
            			<option value="${org.organizationId }" >${org.name }</option>	
			</c:forEach>
            </select></span>
            <span class="btn_bj"  onclick="searchTeacher();">搜索</span>
            </div>
            
            <a href="toImportTeachers.action" title="批量导入用户">
            	<img src="theme/${theme}/images/add2.gif" class="add2" />
            </a>
            <img src="theme/${theme}/images/add1.gif" class="add1" title="新用户注册" id="teacherAddButton" onclick="toTeacherAdd()" />
             <div style="clear:both"></div>
    </div>
    <div style="clear:both"></div>
	<table class="user_table">
		<thead>
			<tr>
            	<th width="5%"><input id="chk1" type="checkbox" onclick="checkAll();" name="checkboxAll" value="checkbox" /></th>
				<th width="15%">用户名</th>
				<th width="15%">姓名</th>
				<th width="10%">性别</th>
				<th width="15%">手机号</th>
                <th width="10%">状态</th>
                <th width="5%">操作</th>
			</tr>
		</thead>
		<tbody>
            <c:if test="${not empty teacherList}">
			<c:forEach var="u" items="${teacherList}">
				<tr>
					<td>
					<c:if test="${!(u.account eq 'admin')}">						
                        <input type="checkbox" name="checkbox2" value="${u.userId }" />	            		
					</c:if>
					</td>
	            	
					<td>${u.account }</td>
					<td>${u.name }</td>
					<td>${mapSex[u.sex]}</td>
					<td>${u.communication.mobileNumber1 }</td>
	                <td nowrap="nowrap">
	                <img src="theme/${theme}/images/read.png"  onclick="javascript:selectPermissions('${u.userId}');"  style="cursor:pointer;" title="查看权限"/>
	                <img src="theme/${theme}/images/user_setting.gif" style="cursor:pointer;" class="setAdmin" userId="${u.userId }" title="设置系统角色"/>
	                <c:if test="${u.status eq 1 }">
	                <span id="statusImg_${u.userId }"><img onclick="javascript:setStatus('${u.userId}','disable','findTeacher')" src="theme/${theme}/images/unlock.png" style="cursor:pointer;" title="设置离校"/></span>
	                </c:if>
	                <c:if test="${u.status eq 2 }">
	                <span id="statusImg_${u.userId }"><img onclick="javascript:setStatus('${u.userId}','active','findTeacher')" src="theme/${theme}/images/lock.png" style="cursor:pointer;" title="设置在校" /></span>
	                </c:if>
	                </td>
	                <td nowrap="nowrap"><img src="theme/${theme}/images/letter1.gif" id="mod" title="修改" name="modify" userId="${u.userId }" /></td>
				</tr>
			</c:forEach>
         	</c:if>
		</tbody>
	</table>
	</tn:pagination>
	<div id="teacherAddDiv"></div>
	<div id="teacherAuthorityDetail"></div>
	</div>
</body>
</html>