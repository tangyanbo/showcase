<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../../common/head_tag.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统管理员权限赋予</title>
<script src="/base/js/selectusers.js"></script>
<link href="theme/${theme}/css/common.css" rel="stylesheet" type="text/css" />
<script src="js/permission/sysAdmin.js"></script>
<script>
	$(function() {
		initTab($("#tabs"), 0);
		$(".hand").mouseover(function() {
			 $(this).addClass("y_bg");
		});	
		$(".hand").mouseout(function() {
			 $(this).removeClass("y_bg");
		});
		
		//点击设置管理员
		$("[name='user']").click(function() {
			var div = $(this);
			var roleId = $(this).attr("roleId");
			var userIdList = new Array();
			$("input[name='userId']",$(this)).each(function(){
				userIdList.push(this.value);
			});
			$.selectUser(userIdList,function(users){
				saveUsers(div,roleId,users);
			});
		});	
		
	    //点击设置子栏目权限
	    $("[name='category']").click(function(){
	    	var categoryCode = $(this).attr("categoryCode");
	    	window.location.href="toCategoryPermissionSet.action?category.code="+categoryCode;
	    });
		
		parent.indexIframeResize();
	});
</script>
</head>
<body>


<div id="tabs" >
	<ul>
		<li id="courseTeacher"><a href="#tabscontent">权限设置</a></li>
	</ul>	
		
			<div class="batchImportContent selectResource" style="padding:10px;">
				<table width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<th width="15%">
							<div>模块名称</div>
						</th>
						<th>
							<div>管理员</div>
						</th>
						<th>
							<div>子栏目权限</div>
						</th>

					</tr>
					
					<c:forEach items="${moduleList}" var="module">
						<tr>
							<td >${module.name}</td>
							<td name="user" class="hand" roleId="${module.adminRole}">
								<c:forEach items="${module.adminList}" var="user">
        							<input type="hidden" name="userId" value="${user.userId}"/>
        							&nbsp;${user.name}
        						</c:forEach>
							</td>
							
							<c:choose>
								<c:when test="${module.hasChildren eq true }">
									<td name="category" class="hand" roleId="${module.adminRole}" categoryCode="${module.code}">
										<a href="#">点击设置子栏目权限</a>
									</td>
								</c:when>
								<c:otherwise>
									<td roleId="${module.adminRole}" categoryCode="${module.code}">
										
									</td>
								</c:otherwise>
							</c:choose>
							
							
							
							
						</tr>
					</c:forEach>
					
				</table>
			</div>


		</div>
		<div id="tabscontent"></div>
	</div>

</body>
</html>
