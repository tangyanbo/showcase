<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../../common/head_tag.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>年级组长设置</title>
<script src="js/selectusers.js"></script>
<link href="theme/${theme}/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="theme/${theme}/css/page.css"
	type="text/css" />
<script src="js/permission/gradeLeader.js"></script>
<script>
	$(function() {
		initTab($("#tabs"), 2);

		//点击设置年级组长
		$(".user").click(function() {
			var div = $(this);
			var gradeId = $(this).attr("gradeId");
			var userIdList = new Array();
			$("input[name='userId']", $(this)).each(function() {
				userIdList.push(this.value);
			});
			$.selectUser({groupType:'gradeHeadman',users:userIdList}, function(users) {
				saveUsers(div, gradeId, users);
			});

		});
		parent.indexIframeResize();
		
	});
</script>
</head>
<body>
	<div id="tabs" class="teachersGroup">
		<jsp:include page="headtab.jsp" />		
		<div  class="labelClass leader_table">
			<table cellpadding="0" cellspacing="0">
				<tr>
				<c:forEach items="${gradeLeaderList}" var="leaderVO" varStatus="status">	
						<c:if test="${status.index%2!=0}">
							<td class="center_bg center_width"></td>
						</c:if>
						<td class="deep_bg content_width fontBold">${leaderVO.grade.name}</td>
						<td class="table_content content_width user" gradeId="${leaderVO.grade.gradeId}">
							<c:forEach items="${leaderVO.gradeLeader}" var="user">
								<input type="hidden" name="userId" value="${user.userId}" />
								&nbsp;${user.name}							
							</c:forEach>						
						</td>											
						
						<c:if test="${status.index%2!=0}">				
							</tr>
							<tr>
						</c:if>						
				</c:forEach>
				</tr>
			</table>
		</div>
		<div id="tabscontent"></div>
	</div>
</body>
</html>