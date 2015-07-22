<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/user.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/page.css'/>" />
<script src="<c:url value='/js/basic-set/course.js'/>"></script>

<script type="text/javascript">
	//提交数据库，并重新加载显示页面进行刷新
	function fillForm() {
		
	};
	//点击单选框事件,添加一行
	function checkInfo(e) {
		addTr();
	}
	//增加tr
	function addTr() {
		lth = $("#classTable").children().children().length;
		var sort = $("#classTable input[name='courseList[" + (lth-3) + "].sort']").val();//注意：获取倒数第二行须减3，因为表格的length包含表头
		sort=Number(sort)+1;
		 	var newTr = '<tr>'+
			'<td align="center" style="padding-left: 0px;">'+
			/* '<input type="hidden" value="19">'+  新加行没有courseId*/
			'<input type="checkbox" checked="checked" value="'+(lth-2)+'">'+
			'</td>'+
			'<td style="padding-right:5px;"><input style="width:30px" type="text" name="courseList['+(lth-2)+'].sort"></td>'+
			'<td style="padding-right:5px;"><input style="width:120px" type="text" name="courseList['+(lth-2)+'].name"></td>'+
			'<td style="padding-left: 0px;">';
			<c:forEach items="${gradeAll }" var="grade" varStatus="sta">
				newTr+='<input type="checkbox" name="gradeList" value="${grade.gradeId}" id="gradeList-${sta.index+1}">'+
				'<label for="gradeList-${sta.index}" class="checkboxLabel">${grade.name}</label>'
			</c:forEach>
			newTr=newTr+'<input type="hidden" id="__multiselect_gradeList" name="__multiselect_gradeList" value="">'+
			'</td>'+
			'</tr>'; 
			$("#classTable").children().children().eq(lth-1).before(newTr);	
	}
</script>
<div title="学科设置">
	<table id="classTable" width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
		<tr>
			<th>&nbsp;</th>
			<th>序号</th>
			<th>学科名称</th>
			<th>适用年级</th>
		</tr>
		<s:iterator value="courseList" status="idx">
			<!--循环所有课程  -->
			<tr>
				<td align="center" style="padding-left: 0px;"><input type="hidden" value="${courseId }"></input> 
					<input type="checkbox" checked="checked" value="${idx.index }"></input>
				</td>
				<td style="padding-right: 5px;"><input style="width: 30px" type="text" name="courseList[${idx.index }].sort" value="${sort }"></input></td>
				<td style="padding-right: 5px;"><input style="width: 120px" type="text" name="courseList[${idx.index }].name" value="${name }"></input></td>
				<td style="padding-left: 0px;">
					<%-- <s:set name="gradeIds" value="gradeIdMap[courseId]"/> --%> <%-- <s:checkboxlist name="gradeIds" list="gradeAll" listKey="gradeId" listValue="name" theme="simple">
					</s:checkboxlist> --%> 
						<s:checkboxlist name="gradeList" disabled="diasbled" list="gradeAll" listKey="gradeId" listValue="name" theme="simple"
						value="gradeList.{#this.gradeId}">
						</s:checkboxlist>
				</td>
				<c:if test="${idx.last }">
					<c:set var="maxSort" value="${sort }"></c:set>
					<c:set var="maxId" value="${courseId }"></c:set>
				</c:if>
			</tr>
		</s:iterator>
		<tr>
			<td align="center" style="padding-left: 0px;"><input type="checkbox" value="${fn:length(courseList)}" onchange="checkInfo($(this))" /></td>
			<td style="padding-right: 5px;"><input style="width: 30px" type="text" name="classList[${fn:length(courseList)}].sort" value="${maxSort+1}" />
			</td>
			<td style="padding-right: 5px;"><input style="width: 120px" type="text" name="classList[${fn:length(courseList)}].name" disabled="disabled"
				value="" /></td>
			<td style="padding-left: 0px;"><c:forEach items="${gradeAll }" var="grade" varStatus="">
					<label><input type="checkbox" style="marging-left: 5px" disabled="disabled"></input>${grade.name }</label>
				</c:forEach> <%-- <s:checkboxlist name="gradeList" list="gradeAll" listKey="gradeId" listValue="name" theme="simple">
				</s:checkboxlist> --%></td>
		</tr>
	</table>
</div>

