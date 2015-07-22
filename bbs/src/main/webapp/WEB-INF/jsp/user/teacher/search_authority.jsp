<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/difference.css'/>" />
<script type="text/javascript" src="<c:url value='/js/jquery.validation/additional-methods.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/msgbox.js'/>"></script>
</head>

<body>
<div>
	<s:if test="roleMap.size>0">
    <s:iterator value="roleMap" id="list">
    	<table border="0" cellspacing="1" cellpadding="1" class="tab_tit">
      		<tr>
        		<td class="tab_tit_bg"><s:property value="key" /></td>
      		</tr>
    	</table>
	    <ul class="sa_bk">
		    <s:iterator value="value" id="role">
	    		<li>
		    		<s:property value="name" />
	    		</li>
		    </s:iterator>
        <div class="clear"></div>
	    </ul>
    </s:iterator>
    </s:if>
    <s:else>
    	暂无权限
    </s:else>
</div>
</body>
</html>
