<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addBankBranchFrom" name="addBankBranchFrom" method="post" action="addBankBranchAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>bank_code</label></th>
							<td>
								<input type="text" id="bankBranchDto.bank_code" name="bankBranchDto.bank_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_code不能为空',missingMessage:'bank_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bank_name</label></th>
							<td>
								<input type="text" id="bankBranchDto.bank_name" name="bankBranchDto.bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>level</label></th>
							<td>
								<input type="text" id="bankBranchDto.level" name="bankBranchDto.level" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'level必须为数字',missingMessage:'level必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>super_code</label></th>
							<td>
								<input type="text" id="bankBranchDto.super_code" name="bankBranchDto.super_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_code不能为空',missingMessage:'super_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>citycode</label></th>
							<td>
								<input type="text" id="bankBranchDto.citycode" name="bankBranchDto.citycode" class="easyui-validatebox" data-options="required:true,invalidMessage:'citycode不能为空',missingMessage:'citycode不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>