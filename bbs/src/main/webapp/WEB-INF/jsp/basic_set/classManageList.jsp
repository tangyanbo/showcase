<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="./js/jquery.form.js"></script>

<div class="leTitle">
	<span class="leminTitle">${grade.name}一览</span>
</div>
<table id="classTable" width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
	<tr>
		<th style="border: none" width="20%">序号</th>
		<th style="border: none" width="60%">班级名称</th>
	</tr>
</table>
<div style="overflow: auto;height: 365px">
	<table id="classTable" width="100%" border="0" cellspacing="0" cellpadding="0" class="table0">
		<c:forEach items="${classList }" var="cla" varStatus="sta">
		<tr>
			<td width="20%"><span>${cla.sort }</span></td>
			<td width="60%">${cla.name }</td>
		</tr>
		</c:forEach>
	</table>
</div>

