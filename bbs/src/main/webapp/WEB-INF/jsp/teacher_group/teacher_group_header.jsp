<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(function() {
		$("#orgGroup").click(function(){
			window.location.href="toOrgGroup.action";
		});
		$("#gradeGroup").click(function(){
			window.location.href="toGradeGroup.action";
		});
		$("#courseGroup").click(function(){
			window.location.href="toCourseGroup.action";
		});
	});
	
	function initTab(tabId) {
		$('#tabs').tabs({
			active : tabId
		}).show();
	}
</script>
<ul>
	<li id="orgGroup" ><a href="#tabs">部门分组</a></li>
	<li id="gradeGroup" ><a href="#tabs">年级分组</a></li>
	<li id="courseGroup" ><a href="#tabs">学科分组</a></li>
</ul>

