<%@ tag pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="32%" height="30" align="left" valign="bottom" class="pagination_f_16">
	共
	<span class="pagination_f_17">${pageInfo.totalCount}</span>条 &nbsp;
	<span class="pagination_f_17">${pageInfo.pageCount}</span>页
</td>
<td width="68%" align="left" valign="bottom">
<div class="pageInfo" id="pageInfoEl">
	<span><a href="" id="backPage" class="pagination_style9">上一页</a></span>
	<c:if test="${pageInfo.pageNo+1 > 6}">
		<c:if test="${(pageInfo.pageNo + 4)>=pageInfo.pageCount }">
			<c:if test="${pageInfo.pageNo >= 9}">
	    		<c:forEach begin="${pageInfo.pageNo-9}" end="${pageInfo.pageCount-1}" var="value" varStatus="loop">
	    			<span>
	    				<c:if test="${pageInfo.pageNo == value}">
	    					<font color="red" size="2px"><b>${value+1 }</b></font>
		    			</c:if>
		    			<c:if test="${pageInfo.pageNo != value}">
		    				<a href="" id="page${value+1 }" class="pagination_style10">${value+1 }</a>
		    			</c:if>
	    			</span>
	    		</c:forEach>
    		</c:if>
    		<c:if test="${pageInfo.pageNo < 9}">
    			<c:forEach begin="0" end="${pageInfo.pageCount-1}" var="value" varStatus="loop">
	    			<span>
	    				<c:if test="${pageInfo.pageNo == value}">
	    					<font color="red" size="2px"><b>${value+1 }</b></font>
		    			</c:if>
		    			<c:if test="${pageInfo.pageNo != value}">
		    				<a href="" id="page${value+1 }" class="pagination_style10">${value+1 }</a>
		    			</c:if>
	    			</span>
	    		</c:forEach>
    		</c:if>
		</c:if>
		<c:if test="${(pageInfo.pageNo + 4)<pageInfo.pageCount }" >
    		<c:forEach begin="${pageInfo.pageNo - 5}" end="${pageInfo.pageNo+4}" var="value" varStatus="loop">
    			<span>
    			<c:if test="${pageInfo.pageNo == value}">
    				<font color="red" size="2px"><b>${value+1 }</b></font>
    			</c:if>
    			<c:if test="${pageInfo.pageNo != value}">
    				<a href="" id="page${value+1 }" class="pagination_style10">${value+1 }</a>
    			</c:if>
    			</span>
    		</c:forEach>
    	</c:if>
    </c:if>
    <c:if test="${pageInfo.pageNo+1 <= 6}">
    	<c:if test="${pageInfo.pageCount < 9 && pageInfo.pageCount>1}">
    		<c:forEach begin="0" end="${pageInfo.pageCount-1}" var="value" varStatus="loop">
				<span>
				<c:if test="${pageInfo.pageNo == value}">
					<font color="red" size="2px"><b>${value+1 }</b></font>
				</c:if>
				<c:if test="${pageInfo.pageNo != value}">
					<a href="" id="page${value+1 }" class="pagination_style10">${value+1 }</a>
				</c:if>
				</span>
	    	</c:forEach>
    	</c:if>
    	<c:if test="${pageInfo.pageCount >= 9}">
	    	<c:forEach begin="0" end="8" var="value" varStatus="loop">
				<span>
				<c:if test="${pageInfo.pageNo == value}">
					<font color="red" size="2px"><b>${value+1 }</b></font>
				</c:if>
				<c:if test="${pageInfo.pageNo != value}">
					<a href="" id="page${value+1 }" class="pagination_style10">${value+1 }</a>
				</c:if>
				</span>
	    	</c:forEach>
    	</c:if>
    </c:if>
	<span><a href="" id="nextPage" class="pagination_style9">下一页</a></span>
</div> 
</td>
</tr>
</table>