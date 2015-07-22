<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tn" uri="/sysesp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<jsp:include page="../../common/head_tag.jsp" />
<title>学生列表</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/pagination.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script src="<c:url value='/js/basic-set/user-set.js'/>"></script>
<script type="text/javascript">
$(function() {
	initTab($("#basicTab"),1);
	$("#grade").change(function(){
		classChange();
	});
	if("${gradeId}"!=""){
		$("#grade").val("${gradeId}");
		classChange();
	}
	function classChange(){
		$("#class").empty();
		$("#class").append('<option value="">请选择班级</option>');
		if($("#grade").val()!=""){
			getClass($("#grade").val(),"${classId}");
		}
	}
	
	$("#download").click(function(){
		var array = $("form[name='student-form']").serializeArray();
		var form = $("#stuExcel").empty();
		$.each(array,function(){
			form.append("<input name='"+this.name+"' value='"+this.value+"'/>");
		});
		form.submit();
	});
	parent.indexIframeResize();
});

function searchStudent(){
	$("#pagination_pageNo").val(0);
	$("form[name='student-form']").submit();
}
</script>
</head>
<body style="margin: 1px;">
<div id="basicTab">
	<form action='studentExcel.action' method='post' id="stuExcel" style="display: none;"></form>
	
	<c:if test="${not empty classList }">
	<ul><li id="studentTab"><a href="#teacher">学生用户</a></li></ul>
	</c:if>
	<c:if test="${empty classList }">
		<jsp:include page="../user_header.jsp" />
	</c:if>
	
	<tn:pagination action="findStudent.action" name="student-form" method="post" totalCount="${pageInfo.totalCount}" currentPageNo="${pageInfo.pageNo}" pageSize="${pageInfo.pageSize}">
	<div id="teacher">
	<div class="nav" id="stu-nav">
			<div>
			<span class="btn_bj" onclick="javascript:doDelete('findStudent');">删除</span>
			<span class="btn_bj" id="download">下载</span>
            <span>关键词：</span><input type="text" id="keyword" name="keyword" value="${keyword}" />
            	<c:if test="${empty classList }">
               <span>年　级：
                <select id="grade" name="gradeId" style="width:100px;margin-top: 4px;vertical-align: top;">
                	<option value="">请选择年级</option>
                	<c:forEach items="${grades }" var="grade">
                		<option value="${grade.gradeId }">${grade.name }</option>
                	</c:forEach>              
                </select></span></c:if>
                <span>班　级
                <select id="class" name="classId" style="width: 150px;margin-top: 4px;vertical-align: top;"> 
                <c:if test="${not empty classList }">
                	<c:forEach items="${classList }" var="c">
                	<option value="${c.classId }">${c.name }</option>
                	</c:forEach>
                </c:if>           
                </select></span>
            	<span class="btn_bj"  onclick="searchStudent();">搜索</span>
            </div><c:if test="${empty classList }">
            <a href="toImportStudents.action" title="批量导入用户">
            	<img src="theme/${theme}/images/add2.gif" class="add2" />
            </a></c:if>
            <img src="theme/${theme}/images/add1.gif" class="add1" title="新用户注册" onclick="toStudentAdd()" />
            <c:if test="${empty classList }"> 
            <span class="add1 spanType" style="display:block;"><span class="grade_word" onclick="javascript:window.location.href='toModifyNumber.action';">批量修改学号</span><a href="toModifyNumber.action" class="icon_add_ppggxh" title="批量修改学号" style="display:block;float:right;margin-left: 5px;"></a>
            <span class="grade_word"  onclick="toStudentTypes()">学生类型</span><a href="javascript:toStudentTypes();" class="icon_add_xslx" title="添加学生类型" style="display:block;float:right"></a></span></c:if>
            <div style="clear:both"></div>
        </div>
    <div style="clear:both"></div>
	<table class="user_table">
		<thead>
			<tr>
            	<th width="5%"><input id="chk1" type="checkbox" onclick="checkAll();" name="checkboxAll" value="checkbox" /></th>
				<th width="10%">用户名</th>
				<th width="10%">学号</th>
				<th width="10%">姓名</th>				
				<th width="10%">性别</th>
				<th width="15%">学生类型</th>
				<th width="15%">手机号</th>
                <th width="10%">状态</th>
                <th width="5%">操作</th>
			</tr>
		</thead>
		<tbody>
			

            <c:if test="${not empty stuList}">
			<c:forEach var="u" items="${stuList}">
				<tr>
	            	<td>
                        <input type="checkbox" name="checkbox2" value="${u.userId }" />
	            	</td>
					<td>${u.account }</td>
					<td>${u.studentNumber }</td>
					<td>${u.name }</td>
					<td>${mapSex[u.sex]}</td>
					<!-- -->
					<td>${u.studentType.name}</td>
					
					<td>&nbsp;${u.communication.mobileNumber1 }</td>
	                <td nowrap="nowrap">
	              
	                <c:if test="${u.status eq 1 }">
	                <span id="statusImg_${u.userId }"><img onclick="javascript:setStatus('${u.userId}','disable','findStudent')"  src="theme/${theme}/images/unlock.png" style="cursor:pointer;" title="设置离校"/></span>
	                </c:if>
	                <c:if test="${u.status eq 2 }">
	                <span id="statusImg_${u.userId }"><img onclick="javascript:setStatus('${u.userId}','active','findStudent')" src="theme/${theme}/images/lock.png" style="cursor:pointer;" title="设置在校"/></span>
	                </c:if>
	                
	                </td>
	                <td nowrap="nowrap"><img src="theme/${theme}/images/letter1.gif" id="mod" title="修改" onclick="javascript:toStudentModify('${u.userId }');" /></td>
				</tr>
			</c:forEach>
         	</c:if>
		</tbody>
	</table>
	</div>
	</tn:pagination>
	<div id="studentAddAndModifyDiv"></div>
	<div id="studentTypeList"></div>
</div>
</body>
</html>