<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/difference.css'/>" />
<title>批量导入教师</title>
<style type="text/css">
	.icon_explain{
		float:none;
		display:inline-block;
		line-height: 30px;
	}
	.btn_input{margin:2px;}
	.operate .icon_back,.operate .icon_download{
		float: none;
	}
	.operate{
		padding:1em;
		text-align: right;
	}
	#content{
		width:600px;
		text-align: left;
		margin: 0 auto;
	}
	.tbl_excel{
		width: 400px;
	}
</style>
</head>

<body>
<form action="importCourseGroup.action" method="post" enctype="multipart/form-data">
		<div class="operate">
			<a class="icon_download" href="downloadCourseGroupTemplate.action">下载学科分组模板</a>
			<a class="icon_back" href="<c:url value="/toCourseGroup.action"/>">返回</a>
		</div>
	<div id="content">
		<s:actionerror id="actionerror"/>
		<s:actionmessage id="actionmessage" />
		<div>
		  	<label for="txt_file">Excel文件：</label>
		    <input id="txt_file" name="file" type="file" />
		</div>
		<div style="text-align: center;">
			<input name="button" type="submit" value="导入" class="btn_input"/>
		</div>
		<div>
			<span class="icon_explain">导入Excel格式</span>
		</div>
		<div style="padding-left: 2em;overflow-x:auto;">
			<table class="tbl_excel">
			<tr>
	          	<th>学科</th>
	            <th>帐号</th>
	            <th>姓名</th>
			</tr>
			<tr>
	          	<td>语文</td>
				<td>teacher003</td>
				<td>张三</td>
			</tr>
			<tr>
				<td>数学</td>
				<td>teacher004</td>
				<td>李四</td>
			</tr>
			 <tr>
			 	<td>英语</td>
				  <td>teacher005</td>
				  <td>王五</td>
			 </tr>
			 <tr>
			 	<td>英语</td>
				  <td>teacher006</td>
				  <td>赵六</td>
			 </tr>
			 <tr>
			 	<td>体育与健康</td>
				  <td>teacher007</td>
				  <td>刘七</td>
			 </tr>
	        </table>
		</div>
		<div>
			<span class="icon_explain">学科和帐号字段必须填写。</span>
		</div>
	</div>
</form>
</body>
</html>