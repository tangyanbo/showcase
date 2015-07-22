<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(function() {
		$("#school").click(function() {
			toSchoolInfo();
		});
		$("#yearAndSemester").click(function() {
			toYearSemester();
		});
		$("#grade").click(function() {
			toGrade();
		});
		$("#class").click(function() {
			toClass();
		});
		$("#class").click(function() {
			toClass();
		});
		$("#org").click(function() {
			toOrg();
		});
		$("#teachGroup").click(function() {
			toTeachGroup();
		});
		$("#course").click(function() {
			toCourse();
		});
		$("#floor").click(function() {
			toFloor();
		});
		
		$("#backup").click(function() {
			toBackup();
		});
	});
</script>
<form id="basicSetForm" action="" method="post" namespace="">
	<input type="hidden" name="navName" id="navName">
	<input type="hidden" name="tabId" id="tabId">
</form>

<ul>
	<li id="school"><a href="#teacher">学校信息</a></li>
	<li id="yearAndSemester"><a href="#teacher">年度学期</a></li>
	<li id="grade"><a href="#teacher">年级设置</a></li>
	<li id="class"><a href="#teacher">班级设置</a></li>
	<li id="org"><a href="#teacher">部门设置</a></li>
	<li id="course"><a href="#teacher">学科设置</a></li>
	<li id="teachGroup"><a href="#teacher">教研组设置</a></li>
	<li id="floor"><a href="#teacher">教室管理</a></li>
	<li id="backup"><a href="#teacher">备份升级</a></li>
	<!--  
	<li><a href="#teacher">节次时间设置</a></li>
	-->
</ul>

