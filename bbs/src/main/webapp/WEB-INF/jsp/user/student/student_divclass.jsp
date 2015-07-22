<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<jsp:include page="../../common/head_tag.jsp" />
<link href="theme/${theme}/css/difference.css" rel="stylesheet" type="text/css" />

<title>学生分班</title>
<script type="text/javascript">
$(function() {
	initBasicTab(1);
	parent.indexIframeResize();
	
	$(".select").click(function(){
		window.location.href = "toStuDivClass.action";
	});
	
	$(".noselect").click(function(){
		window.location.href = "toStudentDivideClass.action";
	});
});
</script>
</head>
<body>

<ul class="TabControl">
	<li class="select">
    	<span class="border_radius_l"></span>
        <span class="word_title">学生批量分班</span>
        <span class="border_radius_r"></span>
    </li>
     
    <li class="noselect">
    	<span class="border_radius_l"></span>
        <span class="word_title">分班调整</span>
        <span class="border_radius_r"></span>
    </li>
   
</ul>
<div class="clear top_space"></div>
<form action="divideStuIntoClass.action" method="post" enctype="multipart/form-data">
<div class="row">
<s:actionerror/>
<s:actionmessage/>
  	<span class="l">Excel文件：</span>
    <input name="file" type="file" class="file" />
    <img src="theme/${theme}/images/nv_hidden.gif" width="14" height="14" class="img"/>
    <span class="l"><a href="downloadDivClassTemplate.action">下载模板</a></span>
  </div>
<div class="clear"></div>


	<div class="row">
  		<input name="" type="submit" value="导入" class="btn_input"/>
	</div>
</form>

  <div class="row">
  	<span class="icon_explain">导入Excel格式</span>
    <span class="example">
    	<table border="0" cellspacing="0" cellpadding="0">
          <tr class="example_tit_bj">
            <td>学号</td>
            <td>姓名</td>
            <td>年级名称</td>
            <td>班级名称</td>
          </tr>
          <tr>
            <td>01</td>
            <td>张三</td>
            <td>一年级</td>
            <td>一班</td>
          </tr>
        </table>

    </span>
  </div>
  <div class="clear"></div>
<div class="row">
  	<span class="icon_explain">学号、姓名、年级名称和班级名称都必须填写。</span>
  </div>
  <div class="clear"></div>
<div class="row">
  	<span class="icon_explain">年级名称和班级名称都必须和本系统的年级名称、班级名称保持一致。</span>
  </div>
</body>
</html>