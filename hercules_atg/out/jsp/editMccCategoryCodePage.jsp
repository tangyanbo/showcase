<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMccCategoryCodeFrom" name="editMccCategoryCodeFrom" method="post" action="editMccCategoryCodeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="mccCategoryCodeDto.id" name="mccCategoryCodeDto.id" value="${mccCategoryCodeDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>mcc_category_id</label></th>
									<td>
										<input type="text" id="mccCategoryCodeDto.mcc_category_id" name="mccCategoryCodeDto.mcc_category_id" value="${mccCategoryCodeDto.mcc_category_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mcc_category_id必须为数字',missingMessage:'mcc_category_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mcc</label></th>
									<td>
										<input type="text" id="mccCategoryCodeDto.mcc" name="mccCategoryCodeDto.mcc" value="${mccCategoryCodeDto.mcc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mcc不能为空',missingMessage:'mcc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>profit</label></th>
									<td>
										<input type="text" id="mccCategoryCodeDto.profit" name="mccCategoryCodeDto.profit" value="${mccCategoryCodeDto.profit}" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit不能为空',missingMessage:'profit不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="mccCategoryCodeDto.desc" name="mccCategoryCodeDto.desc" value="${mccCategoryCodeDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="mccCategoryCodeDto.remark" name="mccCategoryCodeDto.remark" value="${mccCategoryCodeDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delMccCategoryCodeFrom" name="delMccCategoryCodeFrom" method="post" action="delMccCategoryCodeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${mccCategoryCodeDto.id}" />
			</form>
		</div>
	</div>
</div>