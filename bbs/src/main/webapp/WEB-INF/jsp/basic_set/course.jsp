<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>学科设置</title>
<jsp:include page="../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script src="<c:url value='/js/basic-set/course.js'/>"></script>
<script>
	$(function() {
		
		initBasicTab(5);
		
		$(".disable").click(function(){
			var courseId = $(this).attr("courseId");
			$.confirm("停用课程","确认停用此课程吗？",function(){
				disableCourse(courseId);
			});
		});
		
		$(".active").click(function(){
			var courseId = $(this).attr("courseId");
			$.confirm("启用课程","确认启用此课程吗？",function(){
				activeCourse(courseId);
			});
		});
		
		$(".midify").click(function(){
			var courseId = $(this).attr("courseId");
			toModify(courseId);		
		});		
		
		$("#toAdd").click(function(){
			toAdd();
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
				<div style="float:left;padding-top:15px;">当前使用学科</div>		
				<div style="padding-right:2px;"><a href="#" id="toAdd" class="icon_add_grade r" title="添加课程" ></a></div>
			</div>
			<table class="user_table">
				<thead>
					<tr>
						<th width="10%">编号</th>
						<th width="10%">名称</th>
						<th width="60%">开设此课的年级</th>
						<th width="5%">序号</th>
						<th width="5%" nowrap="nowrap">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${activeCourseList}" var="activeCourse">
						<tr>
							<td>${activeCourse.courseId}</td>
							<td>${activeCourse.name}</td>
							<td>
								<c:if test="${not empty activeCourse.gradeList}">
										适用于
								</c:if>
								<c:forEach items="${activeCourse.gradeList}" var="grade" varStatus="status">
									<c:if test="${!status.first }">
										、
									</c:if>
									${grade.name}								
								</c:forEach>		
								
							</td>
							<td>${activeCourse.sort }</td>
							<td nowrap="nowrap">
									<a class="midify" href="javascript:void(0);" courseId="${activeCourse.courseId}"><img
										src="<c:url value='/theme/${theme}/images/letter1.gif'/>" title="修改课程" width="15" height="16" border="0" /></a>
									<a class="disable" courseId="${activeCourse.courseId}" href="javascript:void(0);">停用</a>
								</td>
							</tr>						
					</c:forEach>

				</tbody>
			</table>
			<br> 备用学科
				<table class="user_table">
					<thead>
						<tr>
							<th width="10%">编号</th>
							<th width="10%">名称</th>
							<th width="60%">开设此课的年级</th>
							<th width="5%">序号</th>
							<th width="5%" nowrap="nowrap">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${disabledCourseList}" var="disabledCourse">
							<tr>
							<td>${disabledCourse.courseId}</td>
							<td>${disabledCourse.name}</td>
							<td>
								<c:if test="${not empty disabledCourse.gradeList}">
										适用于
								</c:if>
								<c:forEach items="${disabledCourse.gradeList}" var="grade" varStatus="status">
									<c:if test="${!status.first }">
										、
									</c:if>
									${grade.name}								
								</c:forEach>
							
							</td>
							<td>${disabledCourse.sort}</td>
							<td nowrap="nowrap">								
								<a courseId="${disabledCourse.courseId}" class="midify" href="javascript:void(0);" ><img
										src="<c:url value='/theme/${theme}/images/letter1.gif'/>" title="修改课程" width="15" height="16" border="0" /></a>
								<a class="active" courseId="${disabledCourse.courseId}" href="javascript:void(0);">启用</a>
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
