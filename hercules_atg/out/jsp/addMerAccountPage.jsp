<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerAccountFrom" name="addMerAccountFrom" method="post" action="addMerAccountAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="merAccountDto.mer_sys_id" name="merAccountDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_account_name</label></th>
							<td>
								<input type="text" id="merAccountDto.sett_account_name" name="merAccountDto.sett_account_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_account_name不能为空',missingMessage:'sett_account_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_account_no</label></th>
							<td>
								<input type="text" id="merAccountDto.sett_account_no" name="merAccountDto.sett_account_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_account_no不能为空',missingMessage:'sett_account_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_agency</label></th>
							<td>
								<input type="text" id="merAccountDto.sett_agency" name="merAccountDto.sett_agency" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_agency不能为空',missingMessage:'sett_agency不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_acc_type</label></th>
							<td>
								<input type="text" id="merAccountDto.sett_acc_type" name="merAccountDto.sett_acc_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_acc_type不能为空',missingMessage:'sett_acc_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="merAccountDto.status" name="merAccountDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="merAccountDto.reserved1" name="merAccountDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="merAccountDto.reserved2" name="merAccountDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="merAccountDto.reserved3" name="merAccountDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved4</label></th>
							<td>
								<input type="text" id="merAccountDto.reserved4" name="merAccountDto.reserved4" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved4不能为空',missingMessage:'reserved4不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved5</label></th>
							<td>
								<input type="text" id="merAccountDto.reserved5" name="merAccountDto.reserved5" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved5不能为空',missingMessage:'reserved5不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sett_agency_name</label></th>
							<td>
								<input type="text" id="merAccountDto.sett_agency_name" name="merAccountDto.sett_agency_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_agency_name不能为空',missingMessage:'sett_agency_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>deduction_type</label></th>
							<td>
								<input type="text" id="merAccountDto.deduction_type" name="merAccountDto.deduction_type" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'deduction_type必须为数字',missingMessage:'deduction_type必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>