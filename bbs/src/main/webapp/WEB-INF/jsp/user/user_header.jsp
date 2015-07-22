<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<script>
	$(function() {
		$("#teacher").click(function() {
			toTeacher();
		});
		$("#student").click(function() {
			toStudent();
		});
	});
</script>

</head>
<form id="userSetForm" action="" method="post" namespace="">
	<input type="hidden" name="navName" id="navName">
	<input type="hidden" name="tabId" id="tabId">
</form>

<ul>
	<li id="teacher"><a href="#teacher">教师用户</a></li>
	<li id="student"><a href="#teacher">学生用户</a></li>
</ul>

