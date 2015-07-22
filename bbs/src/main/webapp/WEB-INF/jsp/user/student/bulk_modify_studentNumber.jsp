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
<title>批量修改学号</title>
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
		width:860px;
		text-align: left;
		margin: 0 auto;
	}
	
</style>
</head>

<body>
<form action="modifyStudentsNumber.action" method="post" enctype="multipart/form-data">
	<div class="operate">
		<a class="icon_download" href="downloadModifyNumber.action">下载导入用户模板</a>
		<a class="icon_back" href="<c:url value="/findStudent.action"/>">返回</a>
	</div>
	<div id="content" style="width:430px;">
		<s:actionerror id="errorMessage" />
		<s:actionmessage id="message" />
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
		<div style="padding-left: 2em;">
			<table class="tbl_excel">
	          <tr>
	          	<th colspan="4" align="center">高一（1）班</th>
	          </tr>
	          <tr>
	          	<th>帐号</th>
	          	<th>新学号</th>
	            <th>姓名</th>
	            <th>性别</th>
	          </tr>
	          <tr>
					  <td>zhangsan</td>
					  <td>201307020351</td>
					  <td>张三</td>
					  <td>男性</td>
				</tr>
	        </table>
		</div>
		<div>
			<span class="icon_explain">帐号、学号必须填写。</span>
		</div>
		<div>
			<span class="icon_explain">学号不能重复。</span>
		</div>
		<div>
			<span class="icon_explain">要想只导入一个班级则在模版中删掉其他班级的sheet。</span>
		</div>
	</div>
</form>
<%-- <form action="modifyStudentsNumber.action" method="post" enctype="multipart/form-data">
<div>
 <a class="icon_download" href="downloadModifyNumber.action">下载学生批量修改学号模板</a>
		<a class="icon_back" href="<c:url value="/findStudent.action"/>">返回</a>
		</div>
	<div id="content" style="width:550px;">
		<s:actionerror id="errorMessage" />
		<s:actionmessage id="message" />
		<div style="margin-top: 10px;">
		  	<label for="txt_file">Excel文件：</label>
		    <input id="txt_file" name="file" type="file" />
		</div>
		<div style="margin-left: 100px;margin-top: 20px;margin-bottom: 20px;">
			<input name="button" type="submit" value="导入" class="btn_input"/>
		</div>
		<div>
			<span class="icon_explain">帐号、学号必须填写。</span>
		</div>
		<div>
			<span class="icon_explain">学号不能重复。</span>
		</div>
		<div>
			<span class="icon_explain">要想只导入一个班级则在模版中删掉其他班级的sheet。</span>
		</div>
		<div>
			<span class="icon_explain">导入Excel格式</span>
			<table class="tbl_excel">
			  <tr>
	          	<th colspan="4" align="center">高一（1）班</th>
	          </tr>
	          <tr>
	          	<th>帐号</th>
	          	<th>新学号</th>
	            <th>姓名</th>
	            <th>性别</th>
	          </tr>
	          <tr>
					  <td>zhangsan</td>
					  <td>201307020351</td>
					  <td>张三</td>
					  <td>男性</td>
				</tr>
				                     
	        </table>
		</div>
	</div>
</form> --%>
</body>
</html>