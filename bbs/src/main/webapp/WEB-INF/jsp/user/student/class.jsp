<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../../common/head_tag.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"  href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet"  href="<c:url value='/theme/${theme}/css/user.css'/>" />
<link rel="stylesheet"  href="<c:url value='/theme/${theme}/css/page.css'/>" type="text/css" />
<title>学生分班调整</title>
<style type="text/css">
	.reNoClass{color:green;cursor:pointer;display:none;}
	.reClass{color:green;cursor:pointer;}
</style>
<script type="text/javascript">
	$(function() {
		initBasicTab(2);
		parent.indexIframeResize();
		
		var message = $("#message").val();
		if(message != null && message != ""){
			$.showSMsgBox(message, 2000);			
		}
		
		$(".noselect").click(function(){
			window.location.href = "toStuDivClass.action";
		});
		
		$(".select").click(function(){
			window.location.href = "toStudentDivideClass.action";
		});
		
		$(".clickGrade").click(function(){
			var gradeId = $(this).attr("gradeId");
	    	 window.location.href = "toStudentDivideClass.action?gradeSelectedId=" + gradeId;
		});
		
		$(".clickClass").click(function(){
			var gradeId = $(".label_select").attr("gradeId");
			var classId = $(this).attr("classId");
			window.location.href = "toStudentDivideClass.action?clazzSelectedId=" + classId + "&gradeSelectedId=" + gradeId;
		});
		
		$(".btn_output").click(function(){
			var clazzSelectedId = $("#clazzSelectedId").val();
			$("#dClass").load("outputStudent.action", $("#output").serialize(), 
					function(response,status,xhr){
				if(status == 'success')
				{
					$.showSMsgBox("移除学生成功");
					$("#nClass").load("findNotDivideClass.action?clazzSelectedId=" + clazzSelectedId);
				}
				else
				{
					$.showSMsgBox("移除学生失败");
				}
			});
		});
		
		$(".btn_input").click(function(){
			var clazzSelectedId = $("#clazzSelectedId").val();
			$("#dClass").load("inputStudent.action", $("#input").serialize(), 
					function(response,status,xhr){
				if(status == 'success')
				{
					$.showSMsgBox("添加学生成功");
					$("#nClass").load("findNotDivideClass.action?clazzSelectedId=" + clazzSelectedId);
				}
				else
				{
					$.showSMsgBox("添加学生失败");
				}
			});
		});
		
		$("#searchDClass").click(function(){
			$("#reDclass").attr("class", "reClass");
			var keyWord = $("#dKeyWord").val();
			var clazzSelectedId = $("#clazzSelectedId").val();
			
			$("#dClass").load("searchDClass.action", {'keyWord': keyWord, 'clazzSelectedId' : clazzSelectedId});
		});
		
		$("#searchNClass").click(function(){
			var keyWord = $("#nKeyWord").val();
			$("#reNclass").attr("class", "reClass");
			$("#nClass").load("searchNClass.action", {'keyWord': keyWord});
		});
		
		$("#reDclass").click(function(){
			$("#dKeyWord").val("");
			$(this).attr("class", "reNoClass");
			var clazzSelectedId = $("#clazzSelectedId").val();
			$("#dClass").load("searchDClass.action", {'keyWord': '', 'clazzSelectedId' : clazzSelectedId});
		});
		
		$("#reNclass").click(function(){
			$("#nKeyWord").val("");
			$(this).attr("class", "reNoClass");
			var clazzSelectedId = $("#clazzSelectedId").val();
			$("#nClass").load("findNotDivideClass.action?clazzSelectedId=" + clazzSelectedId);
		});
	});
</script>
</head>
<body>
<input type="hidden" name=clazzSelectedId id="clazzSelectedId" value="${clazzSelectedId}"/>
<input type="hidden" id="message" value="${message}"/>
<ul class="TabControl">
	<li class="noselect">
    	<span class="border_radius_l"></span>
        <span class="word_title">学生批量分班</span>
        <span class="border_radius_r"></span>
    </li>
    <li class="select "noselect"">
    	<span class="border_radius_l"></span>
        <span class="word_title">分班调整</span>
        <span class="border_radius_r"></span>
    </li>
</ul>
<div class="clear"></div>
<div class="labelClass">
	<div class="labelContent">
		<div class="titleDiv">
			<span class="label_title fontBold">年级：</span>
		</div>
		<div class="contentDiv">
            <c:forEach items="${grades}" var="grade">
            	<c:if test="${grade.gradeId == gradeSelected.gradeId}">
            		<span class="label_select fontOrange clickGrade" gradeId="${grade.gradeId}">
            			${grade.name}
            		</span>
            	</c:if>
            	<c:if test="${grade.gradeId != gradeSelected.gradeId}">
            		<span class="label_style clickGrade"  gradeId="${grade.gradeId}">
            			${grade.name}
            		</span>
            	</c:if>
            </c:forEach>
		</div>
	</div>
</div>
<div class="clear"></div>
<div class="labelClass">
	 <div class="labelContent">
		  <div class="titleDiv">
			   <span class="label_title fontBold">班级：</span>
		  </div>
		  <div class="contentDiv">
		  	<c:forEach items="${classesList}" var="clazz">
		  		<c:if test="${clazz.classId == clazzSelected.classId}">
            		<span class="label_select fontOrange clickClass"  classId="${clazz.classId}">
            			${clazz.name}
            		</span>
            	</c:if>
            	<c:if test="${clazz.classId != clazzSelected.classId}">
            		<span class="label_style clickClass" classId="${clazz.classId}">
            			${clazz.name}
            		</span>
            	</c:if>
		  	</c:forEach>
		 </div>
	</div>
</div>
<div class="clear"></div>
<div class="stu_titleDiv">
	<span class="fontBold">班级：</span>
</div>
<div class="stu_titleDiv">
	<span class="fontBold">未分班：</span>
</div>
<div class="clear"></div>
<div class="class_stu roll">
	<div class="search_stu"><input id="dKeyWord" name="" type="text" /><input name="" type="button" id="searchDClass" value=" " class="stu_btn_search"/><a id="reDclass" class="reNoClass">返回</a></div>
	
	<div id="dClass">
	<form id="output">
		<input type="hidden" name=clazzSelectedId value="${clazzSelectedId}"/>
		<c:forEach items="${classSelectedInStudent}" var="student">
			<span>
				<input type="checkbox" name="studentIds" id="checkbox" value="${student.userId}"/>
				${student.studentNumber}${student.name}
			</span>
		</c:forEach>
	</form>
	</div>
	
</div>
<div class="input_output">
	<input name="" type="button" value=" " class="btn_input" /><input name="" type="button" value=" " class="btn_output" />
</div>
<div class="class_stu roll">
	<div class="search_stu"><input id="nKeyWord" name="" type="text" /><input name="" type="button" id="searchNClass" value=" " class="stu_btn_search"/><a id="reNclass" class="reNoClass">返回</a></div>
	<div id="nClass">
	<form id="input">
		<input type="hidden" name=clazzSelectedId  value="${clazzSelectedId}"/>
		<c:forEach items="${studentDivideClass}" var="student">
			<span>
				<input type="checkbox" name="studentIds" id="checkbox" value="${student.userId}" />
				${student.studentNumber}${student.name}
			</span>
		</c:forEach>
	</form>
	</div>
</div>
<div class="clear"></div>
</body>
</html>