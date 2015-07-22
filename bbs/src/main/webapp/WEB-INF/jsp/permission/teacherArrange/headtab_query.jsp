<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>按角色查询</title>
<script>
	$(function() {
		
		$("#queryByRole").click(function() {
			window.location.href = "toClassTeacherQuery.action";
		});
		selectedRoleType();
		function selectedRoleType() {
			var roleType = "${roleType}";
			if (roleType == "classTeacher") {
				$("#classTeacher").removeClass("label_style");
				$("#classTeacher").addClass("label_select fontOrange");
			} else if (roleType == "courseTeacher") {
				$("#courseTeacher").removeClass("label_style");
				$("#courseTeacher").addClass("label_select fontOrange");
			} else if (roleType == "org") {
				$("#org").removeClass("label_style");
				$("#org").addClass("label_select fontOrange");
			} else {
				$("#teachGroup").removeClass("label_style");
				$("#teachGroup").addClass("label_select fontOrange");
			}
		}
		
		$("#classTeacher").click(function(){
			window.location.href = "toClassTeacherQuery.action";
		});
		$("#courseTeacher").click(function(){
			window.location.href = "toCourseTeacherQuery.action";
		});
		$("#org").click(function(){
			window.location.href = "toOrgMemberQuery.action";
		});
		$("#teachGroup").click(function(){
			window.location.href = "toTeachGroupMemberQuery.action";
		});
		
		$("#yearId").change(function(){
			window.location.href = "toClassTeacherQuery.action?selectedYear=" + $(this).val();
		});
	});
</script>
</head>

<body>
	<ul>
		<li id="queryByRole"><a href="#tabscontent">按角色查询</a></li>
	</ul>
	<div class="labelClass">
	<div class="labelContent">
		<div class="titleDiv">
			<span class="label_title fontBold">角色类型：</span>
		</div>
		<div class="contentDiv">
			<span class="researchGrade"><span class="fontBold">
			
			年度：</span>
			
				<s:select id="yearId" list="#application.yearList" listKey="value" listValue="name"
					name="selectedYear" >
					
				</s:select> 
				
				
			</span> 
			
				<span id="classTeacher" class="label_style">班主任</span> <span
				id="courseTeacher" class="label_style">任课教师</span> <span
				id="org" class="label_style">部门</span> 
				<span id="teachGroup"
				class="label_style">教研组</span>
		</div>
	</div>
</div>
</body>
</html>

