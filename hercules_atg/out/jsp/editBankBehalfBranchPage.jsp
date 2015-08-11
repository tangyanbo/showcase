<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editBankBehalfBranchFrom" name="editBankBehalfBranchFrom" method="post" action="editBankBehalfBranchAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="bankBehalfBranchDto.bank_line_id" name="bankBehalfBranchDto.bank_line_id" value="${bankBehalfBranchDto.bank_line_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>bank_line_number</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.bank_line_number" name="bankBehalfBranchDto.bank_line_number" value="${bankBehalfBranchDto.bank_line_number}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_line_number不能为空',missingMessage:'bank_line_number不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_name</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.bank_name" name="bankBehalfBranchDto.bank_name" value="${bankBehalfBranchDto.bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>online_bank_number</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.online_bank_number" name="bankBehalfBranchDto.online_bank_number" value="${bankBehalfBranchDto.online_bank_number}" class="easyui-validatebox" data-options="required:true,invalidMessage:'online_bank_number不能为空',missingMessage:'online_bank_number不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_line_number</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.settle_line_number" name="bankBehalfBranchDto.settle_line_number" value="${bankBehalfBranchDto.settle_line_number}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_line_number不能为空',missingMessage:'settle_line_number不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.status" name="bankBehalfBranchDto.status" value="${bankBehalfBranchDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>interbank_settle_status</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.interbank_settle_status" name="bankBehalfBranchDto.interbank_settle_status" value="${bankBehalfBranchDto.interbank_settle_status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'interbank_settle_status不能为空',missingMessage:'interbank_settle_status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_type</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.bank_type" name="bankBehalfBranchDto.bank_type" value="${bankBehalfBranchDto.bank_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_type不能为空',missingMessage:'bank_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.create_time" name="bankBehalfBranchDto.create_time" value="${bankBehalfBranchDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>finish_time</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.finish_time" name="bankBehalfBranchDto.finish_time" value="${bankBehalfBranchDto.finish_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>keyword</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.keyword" name="bankBehalfBranchDto.keyword" value="${bankBehalfBranchDto.keyword}" class="easyui-validatebox" data-options="required:true,invalidMessage:'keyword不能为空',missingMessage:'keyword不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>code</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.code" name="bankBehalfBranchDto.code" value="${bankBehalfBranchDto.code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'code不能为空',missingMessage:'code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>with_holding_code</label></th>
									<td>
										<input type="text" id="bankBehalfBranchDto.with_holding_code" name="bankBehalfBranchDto.with_holding_code" value="${bankBehalfBranchDto.with_holding_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'with_holding_code不能为空',missingMessage:'with_holding_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delBankBehalfBranchFrom" name="delBankBehalfBranchFrom" method="post" action="delBankBehalfBranchAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${bankBehalfBranchDto.bank_line_id}" />
			</form>
		</div>
	</div>
</div>