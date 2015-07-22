<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../common/head_tag.jsp" />
<style>
<!--
label.error {margin-left: 5px;color: red;}
-->
</style>
<script src="<c:url value='/js/basic-set/yearAndSemester.js'/>"></script>
<script type="text/javascript">
<!--
	$(document).ready(function() {
		$("#termAddForm").validate({
			rules : {
				"schoolterm.schooltermvalue" : "required",
				"schoolterm.name" : {
					required : true,
					maxlength : 10
				},
				"schoolterm.startDate" : "required",
				"schoolterm.endDate" : "required"
			},
			messages : {
				"schoolterm.schooltermvalue" : "请选择学期",
				"schoolterm.name" : "请填写学期名",
				"schoolterm.startDate" : "不能为空",
				"schoolterm.endDate" : "不能为空"
			}
		});
		$("#termAddForm").submit(function() {
			if($("#termAddForm").valid()) {
				$("#termAddDiv").dialog("close");
			}
		});
	});
//-->
</script>
<form id="termAddForm" action="termAdd.action" method="post">
	<ul class="add_form">
	<li><span style="color: red;margin-left:10px;padding-right:10px">*</span>学期<s:select onchange="selectAnotherTerm()" list="termCodes" listKey="value" listValue="name" headerKey="" headerValue="---请选择学期---" name="schoolterm.schooltermvalue" style="margin-left:5px"></s:select></li>
	<li><span style="color: red;margin-left:10px;padding-right:10px">*</span>名称<s:textfield key="schoolterm.name" name="schoolterm.name" maxlength="10" style="margin-left:5px" ></s:textfield></li>
	<li><span style="color: red;margin-left:10px;padding-right:10px">*</span>学期开始时间<s:textfield key="schoolterm.startDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" name="schoolterm.startDate" style="margin-left:5px" type="text" /></li>
	<li><span style="color: red;margin-left:10px;padding-right:10px">*</span>学期结束时间<s:textfield key="schoolterm.endDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" name="schoolterm.endDate" style="margin-left:5px" type="text" /></li>
	</ul>
</form>