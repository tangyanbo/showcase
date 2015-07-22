<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>教研组设置</title>
<jsp:include page="../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script src="<c:url value='/js/jquery.validation/additional-methods.js'/>"></script>
<script src="<c:url value='/js/basic-set/teachGroup.js'/>"></script>
<script>
	$(function() {
		initBasicTab(6);
		$(".midify").click(function(){
			var teachGroupId = $(this).attr("teachGroupId");
			toModify(teachGroupId);		
		});		
		
		$("#toAdd").click(function(){
			toAdd();
		});
		
		$(".delete").click(function(){
			var teachGroupId = $(this).attr("teachGroupId");
			deleteTeachGroup(teachGroupId);
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
			<div>
				<div style="padding-right:2px;"><a href="#" id="toAdd" class="icon_add_grade r" title="添加教研组" ></a></div>
			</div>
			<table class="user_table">
				<thead>
					<tr>
						<th width="10%">编号</th>
						<th width="10%">名称</th>
						<th width="60%">包含课程</th>
						<th width="5%">序号</th>
						<th width="5%" nowrap="nowrap">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${teachGroupList}" var="teachGroup">
						<tr>
							<td>${teachGroup.teachGroupId}</td>
							<td>${teachGroup.name}</td>
							<td>
								<c:forEach items="${teachGroup.courseList}" var="course" varStatus="status">
									<c:if test="${course.status eq 1 }">
										<c:if test="${!status.first }">
											、
										</c:if>
										${course.name}	
									</c:if>							
								</c:forEach>		
								
							</td>
							<td>${teachGroup.sort }</td>
							<td nowrap="nowrap">
								
									<a class="midify" href="javascript:void(0);" teachGroupId="${teachGroup.teachGroupId}"><img
										src="<c:url value='/theme/${theme}/images/letter1.gif'/>" title="修改教研组" width="15" height="16" border="0" /></a>
										<a class="delete" teachGroupId="${teachGroup.teachGroupId}" href="javascript:void(0);">
										<img src="theme/${theme}/images/icon_11.gif" width="12" height="12" border="0" title="删除教研组" /></a>
										
								</td>
							</tr>						
					</c:forEach>

				</tbody>
			</table>
			<div style="clear: both"></div>
		</div>

	</div>
</body>
</html>
