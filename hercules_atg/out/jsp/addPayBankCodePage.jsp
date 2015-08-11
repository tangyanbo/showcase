<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addPayBankCodeFrom" name="addPayBankCodeFrom" method="post" action="addPayBankCodeAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>pay_bank_name</label></th>
							<td>
								<input type="text" id="payBankCodeDto.pay_bank_name" name="payBankCodeDto.pay_bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_bank_name不能为空',missingMessage:'pay_bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pay_bank_id</label></th>
							<td>
								<input type="text" id="payBankCodeDto.pay_bank_id" name="payBankCodeDto.pay_bank_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_bank_id不能为空',missingMessage:'pay_bank_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="payBankCodeDto.reserved1" name="payBankCodeDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="payBankCodeDto.reserved2" name="payBankCodeDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="payBankCodeDto.reserved3" name="payBankCodeDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>