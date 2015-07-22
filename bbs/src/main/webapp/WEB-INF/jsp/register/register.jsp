<%@ page language="java" import="java.util.*,java.net.URLDecoder"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	/* String msg = request.getParameter("msg");
	if(msg == null){
		msg = (String)request.getAttribute("msg");
	}else{
		msg = new String(msg.getBytes("iso-8859-1"), "utf-8");
	}	 */
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<style type="text/css">
.form_yz {
	position: absolute;
	left: 50%;
	top: 40%;
	width: 480px;
	height: 160px;
	margin-left: -240px;
	margin-top: -80px;
}

.form_yz h3 {
	color: #999;
	letter-spacing: 5px;
	font-weight: normal
}

.f_xlh {
	background: url(theme/${theme}/images/form_xlh.gif) no-repeat;
	width: 471px;
	height: 42px;
	line-height: 42px;
	border: none;
	outline: none;
	/*font-size:12px;*/
	color: #c7c6c6;
	text-indent: 10px;
}

.f_xlh:focus {
	background: url(theme/${theme}/images/form_xlhf.gif) no-repeat;
}

.f_sub {
	display: block;
	margin: 0px auto;
	width: 160px;
	height: 40px;
	background: #3eb0d8;
	color: #fff;
	font-size: 14px;
	letter-spacing: 8px;
	text-align: center;
	border: none;
	outline: none;
	margin-top: 2em;
	cursor: pointer;
	font-weight: 800
}

.f_sub:hover {
	background: #ff7200
}
</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>注册</title>
	<script src="<c:url value='/js/jquery-1.8.2.min.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$(".f_xlh").click(function(){
			$(this).val("");
		});
		
	});
	
</script>
</head>





<body>
	<form action="register.action" method="post">
		<div class="form_yz">			
			<h3>
				${msg}
			</h3>
			<s:actionerror cssStyle="color:red"/>
			<input type="text" class="f_xlh" name="licenseId"
				value="请输入序列号"> <input type="submit"
				class="f_sub" value="提交">
		</div>
	</form>
</body>
</html>
