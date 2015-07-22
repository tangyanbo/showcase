<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>师悦数字化校园应用平台</title>
   <jsp:include page="common/head_tag.jsp" />
  <link href="theme/standard/css/index.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="js/jquery.menu-aim.js"></script>
  <script type="text/javascript" src="js/index.js"></script>
  <script type="text/javascript" src="js/selectusers.js"></script>
  <script type="text/javascript">
  	if(self!=top) top.location=self.location;
  	$(document).ready(function() {
  		$("#passwordDiv").dialog({
			resizable : true,
			autoOpen : false,
			minWidth : 550,
			modal : true,
			show : "slide",
			hide : "slide",
			title : "修改密码",
			buttons : {
				"提交"  : modifyConfirm
			},
			close : function(){
				$(this).empty();
			}
		});
  		$("#passwordButton").click(function() {
	  		$("#passwordDiv").load("toModifyPassword.action",function() {
	  			$("#passwordDiv").dialog("open");
	  		});
  		});
  		
  		$(".sys_site").hover(function(){$(".sys_controls").show();},function(){$(".sys_controls").hide();});
  	});
  	function modifyConfirm() {
  		if(checkPasswordLength() && checkPasswordLength()) {
			$.post("modifyPassword.action",$("form").serialize(),function(data) {
				if(data == "success") {
					$("#passwordDiv").dialog("close");
					$.showSMsgBox("修改成功");
				} else {
					$(".errorPassword").show();
				}
			});
		}
  	}
  </script>
</head>
<body>
<div id="box">
	<div id="head">
    	<div class="logo"></div>
        <div class="quick_menu">
        	<div class="quick_menu_items" id="esc"><a href="<c:url value="/logout.jsp"/>"><img src="<c:url value='/theme/${theme}/images/head_btn3.png'/>" id="esc" /><p>退出</p></a></div>
            <div class="quick_menu_items" id="help"><a href="#help"><img src="<c:url value='/theme/${theme}/images/head_btn2.png'/>" id="help" /><p>帮助</p></a></div>
            <div class="quick_menu_items" id="index"><a href="index.action"><img src="<c:url value='/theme/${theme}/images/head_btn1.png'/>" id="index" /><p>首页</p></a></div>
        </div>
    </div>
    
   	<div id="side">
   	
   		<ul class="menu">
   			<c:if test="${bzr }">
   			<li class="side_menu_items" data-submenu-id="10000"><p>基础平台</p></li></c:if>
   			<c:forEach items="${firstLevelMenu }" var="cate">
   				<c:if test="${cate.showInApp }">
   				<li class="side_menu_items" data-submenu-id="${cate.categoryId }"><p>${cate.name }</p></li>
   				</c:if>
   			</c:forEach>
   		</ul>
   		
   		
   		
    	<div id="menu_level_2">
    	<c:if test="${bzr }">
    		<div class="side_menu_open" id="10000">
	        	<div class="open_title"><img src="<c:url value='/theme/${theme}/images/icon_open.gif'/>" width="17" height="17" />基础平台</div>
				<div id="menuContentDiv">
						 <div class="list_menu list_menu1"><a href="/base/findStudent.action" target="content" name="学生管理" >学生管理</a> </div>
						 
	            </div>
	        </div></c:if>
	            
    	
    	<c:forEach items="${firstLevelMenu }" var="cate">
    		<div class="side_menu_open" id="${cate.categoryId }">
	        	<div class="open_title"><img src="<c:url value='/theme/${theme}/images/icon_open.gif'/>" width="17" height="17" />${cate.name }</div>
				<div id="menuContentDiv">
					<c:forEach items="${cate.childList }" var="child">
						<c:if test="${child.showInApp }">
						 <div class="list_menu list_menu1"><a href="${child.url}" target="${child.openStyle}" name="${child.name}">${child.name}</a> </div>
						 </c:if>
					</c:forEach>
	            </div>
	    	</div>
    		
    	</c:forEach>
		    
	    	
    	</div>
    </div>
    
    <!-- 
    <div id="side_bottom"></div>
     -->
    <div id="main">
    	<div class="location"><span style="float:left;">你的当前位置：</span>
    	<span id="daohangSpan" style="float:left;"><a href="index.action" style="color: #0d80d7;text-decoration: none;">首页</a><span  name="url_span"></span></span>
    	<span style="float:left;"><iframe allowtransparency="true" frameborder="0" width="180" height="36" scrolling="no" src="http://tianqi.2345.com/plugin/widget/index.htm?s=3&z=2&t=0&v=0&d=3&k=&f=9&q=1&e=1&a=1&c=54511&w=180&h=36"></iframe></span>
			<c:if test="${showDeskTop }">
    		<span class="sys_site" title="个人桌面设置">
				<div class="sys_controls">
			        <ul>
			            <li title="内容设置"><a href="/desktop/toDesktopSetUp.action" target="content">内容设置</a></li>
			            <li title="布局设置"><a href="/desktop/toDesktopLayout.action" target="content">布局设置</a></li>
			        </ul>
			    </div>
			</span>
			</c:if>
			<span class="alter" id="passwordButton" title="修改密码"></span>
    	</div>
    	<iframe id="index-iframe-content" src="${showDeskTop ? '/desktop/toDesktop.action' : '' }" name="content" width="100%" height="598px" marginheight="0" frameborder="0" ></iframe>
    </div>
    <div id="passwordDiv" style="display : none;"></div>
    <div id="foot">c 2012 Shiyue Inc, All Rights Reserved</div>
</div>
</body></html>