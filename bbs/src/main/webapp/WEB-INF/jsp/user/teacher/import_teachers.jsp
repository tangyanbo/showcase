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
		width:800px;
		text-align: left;
		margin: 0 auto;
	}
</style>
</head>

<body>
<form action="importTeachers.action" method="post" enctype="multipart/form-data">
		<div class="operate">
			<a class="icon_download" href="downloadTeacherTemplate.action">下载导入用户模板</a>
			<a class="icon_back" href="<c:url value="/findTeacher.action"/>">返回</a>
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
	          	<th>帐号</th>
	            <th>姓名</th>
	            <th>性别</th>
	            <th>手机号</th>
	            <th>身份证</th>
	            <th>密码</th>
	            <th>生日</th>
	            <th>部门名称</th>
	            <th>年级名称</th>
	            <th>学科名称</th>
	          </tr>
	          <tr>
					  <td>zhangsan</td>
					  <td>张三</td>
					  <td>男性</td>
					  <td>13123412546</td>
					  <td>523324215439873254</td>
					  <td>123456</td>
					  <td>2002/3/5</td>
					  <td>人事部</td>
					  <td>高一</td>
					  <td>语文</td>
				</tr>
				<tr>
					  <td>zhangsan1</td>
					  <td>李四</td>
					  <td>女性</td>
					  <td>13123412546</td>
					  <td>523324215439873255</td>
					  <td>123456</td>
					  <td>2002/3/6</td>
					  <td>人事部</td>
					  <td>高一</td>
					  <td>语文</td>
				 </tr>
			 <tr>
				  <td>zhangsan2</td>
				  <td>王五</td>
				  <td>男性</td>
				  <td>13123412546</td>
				  <td>523324215439873256</td>
				  <td>123456</td>
				  <td>2002/3/7</td>
				  <td>人事部</td>
					  <td>高一</td>
					  <td>语文</td>
			 </tr>
			 <tr>
				  <td>zhangsan3</td>
				  <td>赵六</td>
				  <td>男性</td>
				  <td>13123412546</td>
				  <td>523324215439873257</td>
				  <td>123456</td>
				  <td>2002/3/8</td>
				  <td>人事部</td>
					  <td>高一</td>
					  <td>语文</td>
			 </tr>
			 <tr>
				  <td>zhangsan4</td>
				  <td>刘七</td>
				  <td>男性</td>
				  <td>15832454325</td>
				  <td>523324215439873258</td>
				  <td>123456</td>
				  <td>2002/3/9</td>
				  <td>人事部</td>
					  <td>高一</td>
					  <td>语文</td>
			 </tr>
	        </table>
		</div>
		<div>
			<span class="icon_explain">帐号、姓名、密码、等都必须填写。</span>
		</div>
	</div>
</form>
</body>
</html>