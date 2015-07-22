<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>未设置毕业班级</title>
<jsp:include page="../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/difference.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/page.css'/>" />
	<script type="text/javascript">
	jQuery(function($){
		initBasicTab(8);
		
		$(".back").click(function(){
			window.location.href = "showGraduateClass.action";
		});
	});
	</script>
</head>
<body>
	<div id="basicTab" style="padding-bottom:20px;">
		<jsp:include page="basicset_header.jsp" />
		<div id="success"></div>
	</div>
  
	<div>
	<form id="gradeGraduate" action="updateGraduateGrade.action" method="post">
	
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
				<input name="" type="submit" value="提交" class="btn_search btn_submit" />
				<input name="" type="button" value="返回" class="btn_search back"/>
	</form>
	</div>
</body>
</html>