<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addAccountManageFrom" name="addAccountManageFrom" method="post" action="addAccountManageAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="accountManageDto.mer_sys_id" name="accountManageDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_amt</label></th>
							<td>
								<input type="text" id="accountManageDto.mer_amt" name="accountManageDto.mer_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_amt不能为空',missingMessage:'mer_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>fee_amt</label></th>
							<td>
								<input type="text" id="accountManageDto.fee_amt" name="accountManageDto.fee_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'fee_amt不能为空',missingMessage:'fee_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_type</label></th>
							<td>
								<input type="text" id="accountManageDto.account_type" name="accountManageDto.account_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_type不能为空',missingMessage:'account_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="accountManageDto.status" name="accountManageDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="accountManageDto.settle_date" name="accountManageDto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="accountManageDto.create_time" name="accountManageDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>update_time</label></th>
							<td>
								<input type="text" id="accountManageDto.update_time" name="accountManageDto.update_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'update_time不能为空',missingMessage:'update_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>update_oper_id</label></th>
							<td>
								<input type="text" id="accountManageDto.update_oper_id" name="accountManageDto.update_oper_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'update_oper_id不能为空',missingMessage:'update_oper_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>change_status</label></th>
							<td>
								<input type="text" id="accountManageDto.change_status" name="accountManageDto.change_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'change_status不能为空',missingMessage:'change_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>change_amt</label></th>
							<td>
								<input type="text" id="accountManageDto.change_amt" name="accountManageDto.change_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'change_amt不能为空',missingMessage:'change_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>change_oper_id</label></th>
							<td>
								<input type="text" id="accountManageDto.change_oper_id" name="accountManageDto.change_oper_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'change_oper_id不能为空',missingMessage:'change_oper_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>change_reason</label></th>
							<td>
								<input type="text" id="accountManageDto.change_reason" name="accountManageDto.change_reason" class="easyui-validatebox" data-options="required:true,invalidMessage:'change_reason不能为空',missingMessage:'change_reason不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="accountManageDto.reserved1" name="accountManageDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="accountManageDto.reserved2" name="accountManageDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="accountManageDto.reserved3" name="accountManageDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>