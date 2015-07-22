<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>年级设置</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/page.css'/>" />
<jsp:include page="../common/head_tag.jsp" />
<script src="<c:url value='/js/basic-set/grade.js'/>"></script>
<script src="js/jquery.validation/additional-methods.js" type="text/javascript"></script>
<script>
	$(function() {
		initBasicTab(2);
		$(".icon_forbidden").click(function() {
			var gradeId = $(this).attr("id");
			$.confirm("停用年级", "确认停用此年级吗？", function() {
				disableGrade(gradeId);
			});
		});

		$(".icon_using").click(function() {
			var gradeId = $(this).attr("id");
			$.confirm("启用年级", "确认启用此年级吗？", function() {
				activeGrade(gradeId);
			});
		});

		$(".icon_update").click(function() {
			var gradeId = $(this).attr("gradeId");
			toModify(gradeId);
		});

		$(".icon_add_grade").click(function() {
			toAdd();
		});

		$(".btn_submit").click(function() {
			toGraduate();
		});
		parent.indexIframeResize();
	});
</script>

</head>
<body style="margin: 1px;">
	<div id="modifyDiv" title="修改年级" style="display:none;"></div>
	<div id="addDiv" title="添加年级" style="display:none;"></div>
	<div id="basicTab">
		<jsp:include page="basicset_header.jsp" />
		<form id="gradeGraduateForm" action="" method="post">
			<div id="teacher">
				<span style="cursor:pointer;"><span class="grade_word">年级</span><a href="#" class="icon_add_grade r" title="添加年级"></a></span>
				<div style="clear: both"></div>
				<div >
					<div class="grade_tit">
						<div class="grade_tit_bj">
							当前使用年级
						</div>
					</div>
					<ul class="grade clear">
						<c:forEach items="${useGradeList}" var="usegrade">
							<li>${usegrade.name}(${usegrade.schoolStage.name })&nbsp;&nbsp;<a
								href="#" class="icon_update" title="修改" gradeId="${usegrade.gradeId }"></a>&nbsp;&nbsp;<a href="#"
								class="icon_forbidden" title="停用" id="${usegrade.gradeId }" ></a></li>
						</c:forEach>
					</ul>
					<div class="clear"></div>
					<div class="grade_tit">
						<div class="grade_tit_bj">备用年级</div>
					</div>
					<ul class="grade">
						<c:forEach items="${reserveGradeList}" var="reservegrade">
							<li>${reservegrade.name}(${reservegrade.schoolStage.name })&nbsp;&nbsp;<a
								href="#" class="icon_update" gradeId="${reservegrade.gradeId }" title="修改"></a>&nbsp;&nbsp;<a href="#" class="icon_using"  id="${reservegrade.gradeId }" title="启用"></a></li>
						</c:forEach>
					</ul>
					<div class="clear"></div>
					<div class="grade_tit">
						<div class="grade_tit_bj">毕业年级</div>
					</div>
					<ul class="grade bottom_bk">
					<c:forEach items="${useGradeList}" var="usegrade">
						<li><input type="checkbox" name="gradeIds"
							value="${usegrade.gradeId }"
							<c:if test='${usegrade.isGraduation eq 0 }'>checked="checked"</c:if> />${usegrade.name}(${usegrade.schoolStage.name})</li>
					</c:forEach>
					</ul>

					<input name="" type="button" value="提交"
						class="btn_search btn_submit" />
				</div>
			</div>
		</form>
	</div>
</body>
</html>
