<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPayTractCodeFrom" name="editPayTractCodeFrom" method="post" action="editPayTractCodeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="payTractCodeDto.id" name="payTractCodeDto.id" value="${payTractCodeDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>pay_tract_name</label></th>
									<td>
										<input type="text" id="payTractCodeDto.pay_tract_name" name="payTractCodeDto.pay_tract_name" value="${payTractCodeDto.pay_tract_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_tract_name不能为空',missingMessage:'pay_tract_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pay_tract_id</label></th>
									<td>
										<input type="text" id="payTractCodeDto.pay_tract_id" name="payTractCodeDto.pay_tract_id" value="${payTractCodeDto.pay_tract_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_tract_id不能为空',missingMessage:'pay_tract_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="payTractCodeDto.reserved1" name="payTractCodeDto.reserved1" value="${payTractCodeDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="payTractCodeDto.reserved2" name="payTractCodeDto.reserved2" value="${payTractCodeDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="payTractCodeDto.reserved3" name="payTractCodeDto.reserved3" value="${payTractCodeDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="payTractCodeDto.remark" name="payTractCodeDto.remark" value="${payTractCodeDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delPayTractCodeFrom" name="delPayTractCodeFrom" method="post" action="delPayTractCodeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${payTractCodeDto.id}" />
			</form>
		</div>
	</div>
</div>