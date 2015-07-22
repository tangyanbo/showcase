<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="./js/jquery.form.js"></script>
<script type="text/javascript">

//验证名称和sort的非空性
function checkClassNameSort(){
	var nameInput = $("#classUpdateOrSaveDiv input[name*='.name']");//获取所有的修改的name
	var sortInput = $("#classUpdateOrSaveDiv input[name*='.sort']");//获取所有的修改的sort
	var flag = true;
	$.each(nameInput,function(i,input){
		if($(input).val().length == 0) {
			flag = false;
		}
	});
	$.each(sortInput,function(i,input){
		if($(input).val().length == 0) {
			flag = false;
		}
	});
	return flag;
}

//点击单选框事件
function checkClassInfo(e){
	var trIndex = $(e).attr("trIndex");
	if($(e).prop("checked")) {//选中
		if($("#classTable input[name='classList["+ trIndex +"].name']").prop("disabled")) {//判断该tr是否为禁用的
			if($("#classTable").children().children().length == Number(trIndex)+2) {
				//禁用的启用时下方添加
				addClassTr(trIndex);
			}
		}
		$("#classTable input[name='classList["+ trIndex +"].name']").attr("disabled",false).focus();
	}else{//取消
		$("#classTable input[name='classList["+ trIndex +"].name']").attr("disabled","disabled");
	}
}
//增加tr
function addClassTr(trIndex){
	trIndex = $("#classTable").children().children().length;
	var sort = $("input[type='checkbox'][trIndex='"+ Number(trIndex-2) +"']").attr("trSort");
	sort = Number(sort)+1;
	var newTr = '<tr><td><input type="checkbox" trIndex="'+ Number(trIndex-1) +'" trSort="'+ sort +'" onchange="checkClassInfo($(this))"><input type="hidden" name="classList['+ Number(trIndex-1) +'].grade.gradeId" value="${grade.gradeId}"/></td><td>'+ sort +'<input type="hidden" name="classList['+ Number(trIndex-1) +'].sort" value="'+ sort +'"/></td><td><input type="text" name="classList['+Number(trIndex-1)+'].name" disabled="disabled"></td></tr>'
	$("#classTable").append(newTr);
	
}

//接收异步异常事件
function exceptionMsg(jqXHR){
	var errorObj = JSON.parse(jqXHR.responseText);
	if(errorObj.msg){
		var errorMessage = errorObj.msg;			
		$.showFMsgBox(errorMessage);
	}else{
		$.showFMsgBox("操作失败!");
	}
}

//填充表单
function fillClassForm(){
	$("#classUpdateOrSaveDiv").empty();
	$("#delClassDiv").empty();
	var checks = $("#classTable input:checked");//获得所有选中的checkbox
	var unChecks = $("#classTable input[type='checkbox']:not(:checked)");//获得所有未选中的checkbox
	$.each(checks,function(i,c){
		var inputs = $(c).parent().parent().find("input").clone();
		$("#classUpdateOrSaveDiv").append(inputs);
	});
	$.each(unChecks,function(i,uc){
		if(Number($(uc).attr("trIndex"))+2 != $("#classTable tr").length) {//判断是最后一个
			var inputs = $(uc).parent().parent().find("input").clone();
			$.each(inputs,function(j,input){
				var name = $(input).prop("name");
				name = name.replace("classList","delClassList");
				$(input).attr("name",name);
			});
			$("#delClassDiv").append(inputs);
		}
	});
	submitClassForm();
}

//提交class表单
function submitClassForm(){
	if(checkClassNameSort()) {
		$("#subClassForm").ajaxSubmit({
			type:"post",
			dataType:"json",
			url:"updateClassList.action",
			success:function(data){
				$("#class-container").panel('refresh', 'toClassManageList.action?gradeId=${gradeId}');
				$("#confirmClassSet").css("display","none").next().css("display","");
			},
			error : exceptionMsg
		});
	}else{
		$.showFMsgBox("序号或名称不能为空！");
	}
}

</script>

<div class="leTitle">
	<span class="leminTitle">${grade.name}一览</span>
</div>
<table width="100%" style="border: none;" border="0" cellspacing="0" cellpadding="0" class="table0">
	<tr>
		<th style="border: none" width="4.8%"></th>
		<th style="border: none" width="20%">序号</th>
		<th style="border: none" width="60%">班级名称</th>
	</tr>
</table>
<div  style="overflow: auto;height: 365px">
<table id="classTable" width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
	<tr style="display: none;">
	</tr>
	<c:forEach items="${classList }" var="cla" varStatus="sta">
	<tr>
		<td width="5%"><input onchange="checkClassInfo($(this))" checked="checked" trIndex="${sta.index }" trSort="${cla.sort }" type="checkbox"><input type="hidden" name="classList[${sta.index }].classId" value="${cla.classId }"/></td>
		<td width="20%">${cla.sort }<input type="hidden" name="classList[${sta.index }].sort" value="${cla.sort }"/><input type="hidden" name="classList[${sta.index }].grade.gradeId" value="${grade.gradeId}"/></td>
		<td width="60%"><input type="text" name="classList[${sta.index }].name" value="${cla.name }"></td>
		<c:if test="${sta.last }">
			<c:set var="maxSort" value="${cla.sort }"></c:set>
		</c:if>
	</tr>
	</c:forEach>
	<tr>
		<td width="5%"><input type="checkbox" trIndex="${fn:length(classList)}" trSort="${maxSort+1 }" onchange="checkClassInfo($(this))"></td>
		<td width="20%">${maxSort+1}<input type="hidden" name="classList[${fn:length(classList)}].sort" value="${maxSort+1}"/><input type="hidden" name="classList[${fn:length(classList)}].grade.gradeId" value="${grade.gradeId}"/></td>
		<td width="60%"><input type="text" name="classList[${fn:length(classList)}].name" disabled="disabled"></td>
	</tr>
</table>
</div>

<form id="subClassForm" action="" method="post" style="display: none">

<div id="classUpdateOrSaveDiv"></div>
<div id="delClassDiv">

</div>

</form>