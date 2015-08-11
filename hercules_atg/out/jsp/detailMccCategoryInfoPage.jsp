<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMccCategoryInfoFrom" name="editMccCategoryInfoFrom" method="post" action="editMccCategoryInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mcc_category_name</label></th>
								<td>
									<input type="text" id="mccCategoryInfoDto.mcc_category_name" name="mccCategoryInfoDto.mcc_category_name"  value="${mccCategoryInfoDto.mcc_category_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>profit</label></th>
								<td>
									<input type="text" id="mccCategoryInfoDto.profit" name="mccCategoryInfoDto.profit"  value="${mccCategoryInfoDto.profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>desc</label></th>
								<td>
									<input type="text" id="mccCategoryInfoDto.desc" name="mccCategoryInfoDto.desc"  value="${mccCategoryInfoDto.desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="mccCategoryInfoDto.remark" name="mccCategoryInfoDto.remark"  value="${mccCategoryInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>