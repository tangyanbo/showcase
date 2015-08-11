<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMccCategoryCodeFrom" name="editMccCategoryCodeFrom" method="post" action="editMccCategoryCodeAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mcc_category_id</label></th>
								<td>
									<input type="text" id="mccCategoryCodeDto.mcc_category_id" name="mccCategoryCodeDto.mcc_category_id"  value="${mccCategoryCodeDto.mcc_category_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mcc</label></th>
								<td>
									<input type="text" id="mccCategoryCodeDto.mcc" name="mccCategoryCodeDto.mcc"  value="${mccCategoryCodeDto.mcc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>profit</label></th>
								<td>
									<input type="text" id="mccCategoryCodeDto.profit" name="mccCategoryCodeDto.profit"  value="${mccCategoryCodeDto.profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>desc</label></th>
								<td>
									<input type="text" id="mccCategoryCodeDto.desc" name="mccCategoryCodeDto.desc"  value="${mccCategoryCodeDto.desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="mccCategoryCodeDto.remark" name="mccCategoryCodeDto.remark"  value="${mccCategoryCodeDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>