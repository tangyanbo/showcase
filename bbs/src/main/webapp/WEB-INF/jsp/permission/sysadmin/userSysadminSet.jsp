<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教师授予系统角色</title>
<link href="theme/${theme}/css/common.css" rel="stylesheet" type="text/css" />
<script src="js/permission/sysAdmin.js"></script>
<script type="text/javascript">
	$(function(){
		$("#setSysTable td[tdType='cancelUserRole']").one("click",function(){
			var roleId=$(this).attr("roleId");
			cancelUserRole(roleId,'${userId}');
		});
		$("#setSysTable td[tdType='setUserRole']").one("click",function(){
			var roleId=$(this).attr("roleId");
			setUserRole(roleId,'${userId}');
		});
	});
</script>
</head>
<body>

<div class="clear"></div>
<div class="center">
    
    <div class="clear"></div>
    <table border="0" cellspacing="1" cellpadding="1" class="tab_tit">
      <tr>
        <td class="cut_line tab_tit_bg">角色</td>
        <td class="tab_tit_bg">打勾设置角色</td>
      </tr>
    </table>
                    
    <table border="0" cellspacing="0" cellpadding="0" class="userName_tab" id="setSysTable">      
      <c:forEach items="${roleList}" var="role">
      	<tr>
        	<td class="forty">${role.name}</td>
        	<c:if test="${userRoleMap[role.roleId]}">
        	<td class="hand" roleId="${role.roleId}" title="点击取消" tdType="cancelUserRole">
        		√
        	</td>
        	</c:if>   
        	<c:if test="${!userRoleMap[role.roleId]}">
        	<td class="hand" roleId="${role.roleId}"  title="点击设置" tdType="setUserRole">
        		
        	</td>
        	</c:if>      	
      	</tr>
      </c:forEach>
     
      
    </table>
</div>
</body>
</html>
