<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>未设置毕业班级</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/difference.css'/>" />
<script type="text/javascript">
	function reloadyemian()
	{ 
		window.location.href="yearAndSemester.action"; 
	} 
	
	window.setTimeout("reloadyemian();",3000); 
</script>
</head>
<body>
	<div class="backups_content">
	   <h3>未设置当前年度，请稍等正在自动跳转到当前年度设置页面，如果未能跳转请手动跳转<a href="yearAndSemester.action">毕业年级设置</a></h3>
	</div>
</body>
</html>