<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script type="text/javascript">
	function toModify(){
		$("#confirmSet").css("display","").next().css("display","none");
		$('#course-container').panel('refresh', 'toCourseEdit.action');
	}
</script>
<div title="学科设置">
	<div id="course-container" class="easyui-panel" style="height: 360px;overflow: auto;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
			<tr>
				<!-- <th>&nbsp;</th> -->
				<th>序号</th>
				<th>学科名称</th>
				<th>适用年级</th>
			</tr>
			<c:forEach items="${activeCourseList}" var="course">
				<!--循环所有启用课程  -->
				<tr>
					<td>${course.sort }</td>
					<td>${course.name }</td>
					<td><c:forEach items="${course.gradeList}" var="grade">
							<!-- 循环选中该课程的年级  -->
							${grade.name}
							</c:forEach>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="tabbottom">
		<span class="icon-ok" id="confirmSet" style="display: none" onclick="fillForm()">确认设置</span>
		<span class="icon-ok" onclick="toModify()">学科设置</span>
	</div>
	<div class="tShow">
		<p>提示：</p>
		<p>1、要添加新的学科请勾选复选框并填入学科名称、序号、勾选适用年级；</p>
		<p>2、如果需要删除某班级则取消勾选复选框；</p>
		<p>3、删除学科并不会删除班级等其他信息。</p>
	</div>
</div>

