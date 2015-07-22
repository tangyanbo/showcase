<%@ page language="java" import="java.util.*,java.net.URLDecoder" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String msg = request.getParameter("msg");
	msg = new String(msg.getBytes("iso-8859-1"),"utf-8");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/difference.css'/>" />
<title>注册</title>

</head>

<body>
	<center>
		<form action="register.action" method="post">

			<div style="margin-top: 50px;">
				<h1>
				<%=msg%>
				
				</h1>

				<div style="margin-top: 50px;">
					<label style="font-size: larger;"> 请填写序列号: </label>
					
					<s:textfield name="licenseId"/>
					
					<div style="margin-top: 10px;">
						<input type="submit" />
					</div>
						
				</div>
			</div>
		</form>
	</center>
</body>
</html>