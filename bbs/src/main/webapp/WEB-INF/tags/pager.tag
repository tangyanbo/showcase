<%@ tag pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<div class="pagination">
	<c:if test="${pager.pageCount>1}">
		<pg:pager url="" items="${pager.totalCount}"
			maxPageItems="${pager.pageSize}"
			maxIndexPages="5"
			export="currentPageNumber=pageNumber">
			<div class="pagination-info">共${pager.totalCount}条
				${pager.pageCount}页</div>
				
			<ul>
				<pg:first>
					<li><a href="${pageUrl}" id="first-page">首页</a>
					</li>
				</pg:first>
				<pg:prev>
					<li><a href="${pageUrl}" id="previou-page">上一页</a>
					</li>
				</pg:prev>
				<pg:pages>
					<c:choose>
						<c:when test="${currentPageNumber eq pageNumber}">
							<li><a href="#" id="pagination-current">${pageNumber }</a>
							</li>
						</c:when>
						<c:otherwise>
							<li><a href="${pageUrl}">${pageNumber }</a>
							</li>
						</c:otherwise>
					</c:choose>
				</pg:pages>
				<pg:next>
					<li><a href="${pageUrl}" id="next-page">下一页</a></li>
				</pg:next>
				<pg:last>
					<li><a href="${pageUrl}" id="last-page">尾页</a>
					</li>
				</pg:last>
			</ul>

		</pg:pager>
	</c:if>
</div>