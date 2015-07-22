<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/jquery-ui-themes/themes/redmond/jquery-ui-1.10.3.custom.css'/>" />
<link href="theme/${theme}/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/user.css'/>" />
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/msgbox.css'/>" />
<script src="<c:url value='/js/jquery-1.8.2.min.js'/>"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>
<script src="<c:url value='/js/basic-set/basic-set.js'/>"></script>
<script src="<c:url value='/js/common/base.js'/>"></script>
<script src="<c:url value='/js/common/exception.js'/>"></script>
<script src="js/jquery.validation/jquery.validate.js"></script>
<script src="<c:url value='/js/jquery.validation/additional-methods.js'/>"></script>
<script src="js/jquery.validation/messages_zh.js"></script>
<script type="text/javascript" src="<c:url value='/js/msgbox.js'/>"></script>
<script>
	$(function(){
		$.ajaxSetup ({
			cache: false
			});
	});
</script>