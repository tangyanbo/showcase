<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../../common/head_tag.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查询部门教师</title>
<script src="js/selectusers.js"></script>
<link href="theme/${theme}/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="theme/${theme}/css/page.css"
	type="text/css" />
<script src="js/permission/orgLeader.js"></script>
<script src="js/PrintArea/jquery.PrintArea.js"></script>
<script>
	$(function() {
		initTab($("#tabs"), 3);

		//点击设置部门负责人
		$(".user").click(function() {
			var div = $(this);
			var orgId = $(this).attr("orgId");
			var userIdList = new Array();
			$(":hidden[name='userId']", $(this)).each(function() {
				userIdList.push(this.value);
			});
			$.selectUser(userIdList, function(users) {
				saveUsers(div, orgId, users);
			});
		});
		parent.indexIframeResize();
		//打印
		$("#print").click(function(){
           var options = { mode : "iframe"};
           $("#PrintArea").printArea( options ); 
        });
	});
</script>
</head>
<body>
	<div id="tabs" class="teachersGroup">
		<jsp:include page="headtab_query.jsp" />
		
		<div class="detailContent">
		<div class="researchContent">
			<div class="researchTitle">
				<span class="label_title fontBold">查询结果：</span>
			</div>
			<div class="researchDiv">
				<div>
					<span class="researchGrade researchPrint"><span><img src="theme/${theme}/images/print.jpg" /><a class="fontBlue fontBold" href="#" id="print">打印</a></span>
					<!-- 
					<span><img src="theme/${theme}/images/excel.jpg" />
					 
					<a class="fontBlue fontBold" href="">导出excel</a>
					
					</span>
					-->
					</span>
					<div style="clear:both"></div>
				</div>
				<div class="selectResource" id="PrintArea">
					<table width="100%" cellpadding="0" cellspacing="0" >
						<tr>
						<th width="150" >
							<div>部门</div>
						</th>
						<th width="100" >
							<div>角色</div>
						</th>
						<th>
							<div>成员</div>
						</th>
						</tr>
						
						<c:forEach items="${orgMemberList}" var="orgMemberVO">
						<tr>
							<td class="fontBold" rowspan="2">${orgMemberVO.org.name}</td>
							<td>组长</td>
							<td>
								<div>
									<c:forEach items="${orgMemberVO.orgLeader}" var="user">
										<input type="hidden" name="userId" value="${user.userId}" />
        									${user.name}
        							</c:forEach>
								</div>
							</td>
						</tr>
						<tr>
							<td>成员</td>
							<td>
								<div>
									<c:forEach items="${orgMemberVO.orgMember}" var="user">
										<input type="hidden" name="userId" value="${user.userId}" />
        									${user.name}
        							</c:forEach>
								</div>
							</td>
						</tr>
					</c:forEach>
						
					</table>
				</div>
				
				
				
			</div>
		</div>
		
	</div>
		<div id="tabscontent"></div>
	</div>
</body>
</html>