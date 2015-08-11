<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addBankCardFeeFrom" name="addBankCardFeeFrom" method="post" action="addBankCardFeeAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>bank_code</label></th>
							<td>
								<input type="text" id="bankCardFeeDto.bank_code" name="bankCardFeeDto.bank_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_code不能为空',missingMessage:'bank_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bank_name</label></th>
							<td>
								<input type="text" id="bankCardFeeDto.bank_name" name="bankCardFeeDto.bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>fee</label></th>
							<td>
								<input type="text" id="bankCardFeeDto.fee" name="bankCardFeeDto.fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'fee不能为空',missingMessage:'fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>arrive_time</label></th>
							<td>
								<input type="text" id="bankCardFeeDto.arrive_time" name="bankCardFeeDto.arrive_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'arrive_time不能为空',missingMessage:'arrive_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="bankCardFeeDto.create_time" name="bankCardFeeDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>