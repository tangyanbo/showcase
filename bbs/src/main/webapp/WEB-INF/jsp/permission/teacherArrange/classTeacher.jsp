<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../../common/head_tag.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>班主任设置</title>
<script src="js/selectusers.js"></script>
<link href="theme/${theme}/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="theme/${theme}/css/page.css"
	type="text/css" />
<script src="js/permission/classTeacher.js"></script>
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
			var userIdList = new Array();
			$("input[name='userId']", $(this)).each(function() {
				userIdList.push(this.value);
			});
			$.selectUser({groupType:'headTeacher',users:userIdList}, function(users) {
				saveUsers(div, classId, users);
			});

		});

		//点击年级
		$(".gradeDiv").click(
				function() {
					var gradeId = $(this).attr("gradeId");
					window.location.href = "toClassTeacherSet.action?gradeId="
							+ gradeId;
				});
		initTab($("#tabs"), 1);
		parent.indexIframeResize();
	});
</script>
</head>
<body>
	<div id="tabs">
		<jsp:include page="headtab.jsp" />
		
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
			<div class="label_title fontBold">成员列表：</div>
			<div class="batchImportContent selectResource">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<th width="15%">
							<div>班级名称</div>
						</th>
						<th>
							<div>班主任</div>
						</th>


					</tr>

					<c:forEach items="${classTeacherList}" var="classTeacher">
						<tr>
							<td class="fontBold">${classTeacher.clazz.name}</td>
							<td class="hand" classId="${classTeacher.clazz.classId}">
								<div class="classTeacher">
									<c:forEach items="${classTeacher.classTeacher}" var="user">
										<input type="hidden" name="userId" value="${user.userId}" />
        									&nbsp;${user.name}
        							</c:forEach>
								</div>
							</td>
						</tr>
					</c:forEach>

				</table>
			</div>


		</div>
		<div id="tabscontent"></div>
	</div>

</body>
</html>
