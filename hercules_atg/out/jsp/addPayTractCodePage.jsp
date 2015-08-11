<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addPayTractCodeFrom" name="addPayTractCodeFrom" method="post" action="addPayTractCodeAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>pay_tract_name</label></th>
							<td>
								<input type="text" id="payTractCodeDto.pay_tract_name" name="payTractCodeDto.pay_tract_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_tract_name不能为空',missingMessage:'pay_tract_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pay_tract_id</label></th>
							<td>
								<input type="text" id="payTractCodeDto.pay_tract_id" name="payTractCodeDto.pay_tract_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_tract_id不能为空',missingMessage:'pay_tract_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="payTractCodeDto.reserved1" name="payTractCodeDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="payTractCodeDto.reserved2" name="payTractCodeDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="payTractCodeDto.reserved3" name="payTractCodeDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="payTractCodeDto.remark" name="payTractCodeDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>