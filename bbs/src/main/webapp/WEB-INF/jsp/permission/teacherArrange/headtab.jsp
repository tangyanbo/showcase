<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>任课教师设置</title>
<script>
$(function() {
	$("#courseTeacher").click(function(){
		window.location.href = "toCourseTeacherSet.action";
	});
	$("#classTeacher").click(function(){
		window.location.href = "toClassTeacherSet.action";
	});
	$("#gradeLeader").click(function(){
		window.location.href = "toGradeLeaderSet.action";
	});
	$("#orgLeader").click(function(){
		window.location.href = "toOrgLeaderSet.action";
	});
	$("#teachGroupLeader").click(function(){
		window.location.href = "toTeachGroupLeaderSet.action";
	});
});
</script>
</head>

<body>
	<ul>
		<li id="courseTeacher"><a href="#tabscontent">任课教师</a></li>
		<li id="classTeacher"><a href="#tabscontent">班主任</a></li>
		<li id="gradeLeader"><a href="#tabscontent">年级组长</a></li>
		<li id="orgLeader"><a href="#tabscontent">部门负责人</a></li>
		<li id="teachGroupLeader"><a href="#tabscontent">教研组长</a></li>
	</ul>	

</body>
</html>

