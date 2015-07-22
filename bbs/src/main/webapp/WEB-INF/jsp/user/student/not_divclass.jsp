<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form id="input">
		<input type="hidden" name=clazzSelectedId  value="${clazzSelectedId}"/>
		<c:forEach items="${studentDivideClass}" var="student">
			<span>
				<input type="checkbox" name="studentIds" id="checkbox" value="${student.userId}" />
				${student.studentNumber}${student.name}
			</span>
		</c:forEach>
</form>