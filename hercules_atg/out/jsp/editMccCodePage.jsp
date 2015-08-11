<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMccCodeFrom" name="editMccCodeFrom" method="post" action="editMccCodeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="mccCodeDto.id" name="mccCodeDto.id" value="${mccCodeDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="mccCodeDto.remark" name="mccCodeDto.remark" value="${mccCodeDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>profit</label></th>
									<td>
										<input type="text" id="mccCodeDto.profit" name="mccCodeDto.profit" value="${mccCodeDto.profit}" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit不能为空',missingMessage:'profit不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="mccCodeDto.desc" name="mccCodeDto.desc" value="${mccCodeDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mcc</label></th>
									<td>
										<input type="text" id="mccCodeDto.mcc" name="mccCodeDto.mcc" value="${mccCodeDto.mcc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mcc不能为空',missingMessage:'mcc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delMccCodeFrom" name="delMccCodeFrom" method="post" action="delMccCodeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${mccCodeDto.id}" />
			</form>
		</div>
	</div>
</div>