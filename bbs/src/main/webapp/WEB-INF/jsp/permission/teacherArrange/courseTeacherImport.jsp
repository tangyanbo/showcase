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
<jsp:include page="../../common/head_tag.jsp" />
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

<script type="text/javascript">
jQuery(function($){
	$("#gradeId").change(function(){
		$("#download").attr("href","downloadCourseTeacherTemplate.action?gradeId="+this.value);
	});
	
});
</script>
</head>

<body>
<form action="importCourseTeacher.action" method="post" enctype="multipart/form-data">
		<div class="operate">
			<a class="icon_back" href="<c:url value="/toCourseTeacherSet.action?gradeId=${gradeId }"/>">返回</a>
		</div>
	<div id="content">
		<s:actionerror id="actionerror"/>
		<s:actionmessage id="actionmessage" />
		<div style="margin-bottom: 1em;">
			<s:select id="gradeId" name="gradeId" list="gradeList" listKey="gradeId" listValue="name"></s:select><a id="download" class="icon_download" style="float: none;" href="downloadCourseTeacherTemplate.action?gradeId=${gradeId }">任课教师安排模板下载</a>
		
		</div>
		<div>
		  	<label for="txt_file">Excel文件：</label>
		    <input id="txt_file" name="file" type="file" />
		</div>
		<div style="text-align: center;">
			<input name="button" type="submit" value="导入" class="btn_input"/>
		</div>
		<div>
			<span class="icon_explain">导入步骤：</span>
			<div style="margin-left: 2em;">
				<p>1)选择您要安排任教的年级</p>
				<p>2)下载任课教师安排模板</p>
				<p>3)填写任课教师帐号</p>
				<p>4)选择文件并导入</p>
			</div>
		</div>
		<div>
			<span class="icon_explain">导入Excel格式</span>
		</div>
		<div style="padding-left: 2em;overflow-x:auto;">
			<table class="tbl_excel">
			<tr>
	          	<th>年级</th>
	            <th>班级</th>
	            <th>语文</th>
	            <th>数学</th>
	            <th>英语</th>
			</tr>
			<tr>
	          	<td>小学一年级</td>
				<td>小学一年级(1)班</td>
				<td>teacher003</td>
				<td>teacher004</td>
				<td>teacher005</td>
			</tr>
			<tr>
	          	<td>小学一年级</td>
				<td>小学一年级(2)班</td>
				<td>teacher003</td>
				<td>teacher004</td>
				<td>teacher005</td>
			</tr>
			<tr>
	          	<td>小学一年级</td>
				<td>小学一年级(3)班</td>
				<td>teacher003</td>
				<td>teacher004</td>
				<td>teacher005</td>
			</tr>
			<tr>
	          	<td>小学一年级</td>
				<td>小学一年级(4)班</td>
				<td>teacher003</td>
				<td>teacher004</td>
				<td>teacher005</td>
			</tr>
			<tr>
	          	<td>小学一年级</td>
				<td>小学一年级(5)班</td>
				<td>teacher003</td>
				<td>teacher004</td>
				<td></td>
			</tr>
	       </table>
		</div>
	</div>
</form>
</body>
</html>