<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>年度学期</title>
<link rel="stylesheet" href="theme/standard/css/common.css"
	type="text/css" />
<link rel="stylesheet" href="theme/standard/css/user.css"
	type="text/css" />
<link rel="stylesheet" href="theme/standard/css/page.css"
	type="text/css" />
<jsp:include page="../common/head_tag.jsp" />
<script src="<c:url value='/js/basic-set/yearAndSemester.js'/>"></script>
<script src="<c:url value='/js/date/WdatePicker.js'/>"></script>
<script>
	$(function() {
		initBasicTab(1);
		$("#termAddButton").click(toTermAdd); 
		$("#yearAndSemesterForm").validate({
			rules : {
				"year.value" : "required",
				"schoolterm.schooltermvalue" : "required"
			},
			messages : {
				"year.value" : "请选择当前年度",
				"schoolterm.schooltermvalue" : "请选择当前学期"
			},
			errorPlacement: function(error, element) {
				errorPlacement(error, element);
			}
		});
		$("#confirmButton").click(function() {
			if ($("#yearAndSemesterForm").valid()) {
				$("#yearAndSemesterForm").submit();
			}
		});
		$("a[name='deleteButton']").click(function() {
			termDelete($(this).attr("termId"));
		});
		try{
			parent.indexIframeResize();
		} catch(e) {
			
		}
		
		toUpdateStartDate=function(id,startDate){
			$("span[id='"+id+"start']").html('<input type="text" id="'+id+'input" onclick="WdatePicker({dateFmt:\'yyyy-MM-dd\'})" readonly="readonly" name="schoolterm.startDate" onchange="updateStartDate(\''+id+'\',\''+startDate+'\');" value="'+startDate+'" />');
		};
		
		updateStartDate=function(id,oldDate){
			var newDate=oldDate;
			$.confirm("修改开始日期","开始日期发生了变化是否提交？",function() {
				newDate=$("span[id='"+id+"start']").children("input").val();
				$.ajax({
					url : "updateTermStartTime.action",
					data : {"schoolterm.startDate":newDate,"schoolterm.schooltermId":id},
					dataType : "text",
					success: function(msg){
					    $.showSMsgBox("修改成功！");
					    $("#"+id+"start").html(newDate);
					},
					error : exceptionHandler
				}); 
			},function(){
				$("#"+id+"start").html(newDate);
			});
		};
		
		toUpdateEndDate=function(id,endDate){
			$("span[id='"+id+"end']").html('<input type="text" id="'+id+'input" onclick="WdatePicker({dateFmt:\'yyyy-MM-dd\'})" readonly="readonly" name="schoolterm.endDate" onchange="updateEndDate(\''+id+'\',\''+endDate+'\');" value="'+endDate+'" />');
		};
		
		updateEndDate=function(id,oldDate){
			var newDate=oldDate;
			$.confirm("修改结束日期","结束日期发生了变化是否提交？",function() {
				newDate=$("span[id='"+id+"end']").children("input").val();
				$.ajax({
					url : "updateTermEndTime.action",
					data : {"schoolterm.endDate":newDate,"schoolterm.schooltermId":id},
					dataType : "text",
					success: function(msg){
					    $.showSMsgBox("修改成功！");
					    $("#"+id+"end").html(newDate);
					},
					error : exceptionHandler
				}); 
			},function(){
				$("#"+id+"end").html(newDate);
			});
		};
	});
</script>
</head>

<body>
	<div class="originalselectResource" id="basicTab">
		<jsp:include page="basicset_header.jsp" />
		<div id="teacher">
		<form id="yearAndSemesterForm" action="yearAndSemesterInit.action" method="post">
		<div style="padding-right:2px;"><a href="javascript:void(0);" id="termAddButton" class="icon_add_grade r" title="添加学期" ></a></div>
			<s:if test="initialized=='uninitialized'">
			<div class="functional">
				<span class="fontBold">请选择当前年度：</span>
				<select id="currentYearSelect" name="year.value">
					<option value="">---请选择当前年度---</option>
					<option value="<s:property value="realYear - 1" />-<s:property value="realYear" />"><s:property value="realYear - 1" />-<s:property value="realYear" /></option>
					<option value="<s:property value="realYear" />-<s:property value="realYear + 1" />"><s:property value="realYear" />-<s:property value="realYear + 1" /></option>
				</select>
				<span errorFor="year.value" style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					
				</span>
			</div>
			</s:if>
			<s:else>
				<span class="term_time">当前年度是：<label >[<s:property value="year.value" />]
				</label></span>
				<script>
					$(document).ready(function() {
						$(":radio").click(chanageTerm);
					});
				</script>
			</s:else>
			<table class="user_table">
				<thead>
					<tr>
						<th width="40%">
							<div>学期名称</div>
						</th>
						<th width="10%">
							<div>值</div>
						</th>
						<th width="20%">
							<div>开始日期</div>
						</th>
						<th width="20%">
							<div>结束日期</div>
						</th>
						<th>
							<div>操作</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="schoolterms">
						<tr><td><input title="设置为当前学期" <s:if test="schoolterm.schooltermId==schooltermId">checked="checked"</s:if> type="radio" name="schoolterm.schooltermvalue" value="<s:property value="schooltermvalue" />" /><s:property value="name" /><s:if test="schoolterm.schooltermId==schooltermId"><span style="color:#ff0000; font-family: Verdana;line-height:20px;">[当前学期]</span></s:if></td>
						<td>&nbsp;<s:property value="schooltermvalue" /></td>
						<td>&nbsp;&nbsp;<span id="<s:property value='schooltermId' />start" style="padding:0;margin:0;"><s:date name="startDate" format="yyyy-MM-dd" /></span>&nbsp;<a href="#" class="icon_update" title="修改" onclick="toUpdateStartDate('<s:property value='schooltermId' />','<s:date name="startDate" format="yyyy-MM-dd" />');"></a></td>
						<td>&nbsp;&nbsp;<span id="<s:property value='schooltermId' />end" style="padding:0;margin:0;"><s:date name="endDate" format="yyyy-MM-dd" /></span>&nbsp;<a href="#" class="icon_update" title="修改" onclick="toUpdateEndDate('<s:property value='schooltermId' />','<s:date name="endDate" format="yyyy-MM-dd" />');"></a></td>
						<td><a class="delect" title="删除学期" href="#" name="deleteButton" termId="<s:property value="schooltermId" />"></a></td></tr>
					</s:iterator>
				</tbody>
			</table>
			<span errorFor="schoolterm.schooltermvalue" style="color:#ff0000; font-family: Verdana;line-height:20px;
				vertical-align:middle;">
					
			</span>
			<br/>
			<s:if test="initialized=='uninitialized'">
				<button type="button" id="confirmButton" class="btn_search btn_submit">确认</button>
			</s:if>
		</form>
		</div>
	</div>
	<div id="termAddDiv">
	</div>
</body>
</html>
