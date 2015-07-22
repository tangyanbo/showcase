<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../../common/head_tag.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>任课教师查询</title>
<style>
.selectResource table {min-width:500px;_width:500px;}
.selectResource table th div{
	padding:0 1em;
}

</style>
<script src="js/selectusers.js"></script>
<link href="theme/${theme}/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="theme/${theme}/css/page.css"
	type="text/css" />
<script src="js/permission/courseTeacher.js"></script>
<script src="js/PrintArea/jquery.PrintArea.js"></script>
<script>
	$(function() {

		$(".hand").mouseover(function() {
			$(this).addClass("y_bg");
		});
		$(".hand").mouseout(function() {
			$(this).removeClass("y_bg");
		});

		//点击设置任课教师
		$(".hand").click(function() {
			var div = $(this);
			var classId = $(this).attr("classId");
			var courseId = $(this).attr("courseId");
			var userIdList = new Array();
			$(":hidden[name='userId']", $(this)).each(function() {
				userIdList.push(this.value);
			});
			$.selectUser(userIdList, function(users) {
				saveUsers(div, classId, courseId, users);
			});

		});

		//点击年级
		$(".gradeDiv").click(
				function() {
					var gradeId = $(this).attr("gradeId");
					window.location.href = "toCourseTeacherQuery.action?gradeId="
							+ gradeId;
		});
		
		initTab($("#tabs"),0);
		parent.indexIframeResize();
		//打印
		$("#print").click(function(){
           var options = { mode : "iframe"};
           $("#PrintArea").printArea( options ); 
        });
	});
</script>
</head>
<body>
<div id="tabs">
	<jsp:include page="headtab_query.jsp" />
	<div  class="labelClass">
		<div class="labelContent">
			<div class="titleDiv">
				<span class="label_title fontBold">年级列表：</span>
			</div>
			<div class="contentDiv">

				<c:forEach items="${gradeList}" var="grade">
					<c:choose>
						<c:when test="${grade.gradeId == gradeId}">
							<span class="label_select fontOrange gradeDiv"
								gradeId="${grade.gradeId}">${grade.name}</span>
						</c:when>
						<c:otherwise>
							<span class="label_style gradeDiv" gradeId="${grade.gradeId}">${grade.name}</span>
						</c:otherwise>
					</c:choose>
				</c:forEach>

			</div>
		</div>
	</div>
	<div class="detailContent">
		<div class="researchContent">
			<div class="researchTitle">
				<span class="label_title fontBold">查询结果：</span>
			</div>
			<div class="researchDiv">
				<div>
					<span class="researchGrade researchPrint"><span><img src="theme/${theme}/images/print.jpg" /><a class="fontBlue fontBold" href="#" id="print">打印</a></span>
					<!-- 
					<span><img src="theme/${theme}/images/excel.jpg" />
					 
					<a class="fontBlue fontBold" href="">导出excel</a>
					
					</span>
					-->
					</span>
					<div style="clear:both"></div>
				</div>
				<div class="selectResource" id="PrintArea"  style="overflow-x:auto;">
					<table cellpadding="0" cellspacing="0">
						<tr>
						<th width="150" >
							<div>班级名称</div>
						</th>
						<c:forEach items="${courseList}" var="course">
						<th nowrap="nowrap">
							<div>${course.name}</div>
						</th>
						</c:forEach>
						</tr>
						
						<c:forEach items="${classList}" var="cla">
						<tr>
						<td class="fontBold">${cla.name}</td>
						<c:forEach items="${courseList}" var="course">
							<c:set var="key" value="${cla.classId }-${course.courseId }"></c:set>
							<td classId="${cla.classId}"
								courseId="${course.courseId}">
								<div class="courseTeacher">
									<c:forEach items="${userRoleMap[key]}" var="user">
										<input type="hidden" name="userId" value="${user.userId}" />
        									${user.name}
        								</c:forEach>
								</div>
							</td>
						</c:forEach>
					</tr>
					</c:forEach>
						
					</table>
				</div>
				
				
				
			</div>
		</div>
		
	</div>
	
	<div id="tabscontent"></div>
</div>
</body>
</html>

