<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addV2BankBehalfOrderFrom" name="addV2BankBehalfOrderFrom" method="post" action="addV2BankBehalfOrderAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_order_id</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.mer_order_id" name="v2BankBehalfOrderDto.mer_order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_id不能为空',missingMessage:'mer_order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_order_time</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.mer_order_time" name="v2BankBehalfOrderDto.mer_order_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_time不能为空',missingMessage:'mer_order_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bus_mer_id</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.bus_mer_id" name="v2BankBehalfOrderDto.bus_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_mer_id不能为空',missingMessage:'bus_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.status" name="v2BankBehalfOrderDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.create_time" name="v2BankBehalfOrderDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>finish_time</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.finish_time" name="v2BankBehalfOrderDto.finish_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>total_number</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.total_number" name="v2BankBehalfOrderDto.total_number" class="easyui-validatebox" data-options="required:true,invalidMessage:'total_number不能为空',missingMessage:'total_number不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>success_mumber</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.success_mumber" name="v2BankBehalfOrderDto.success_mumber" class="easyui-validatebox" data-options="required:true,invalidMessage:'success_mumber不能为空',missingMessage:'success_mumber不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>fail_number</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.fail_number" name="v2BankBehalfOrderDto.fail_number" class="easyui-validatebox" data-options="required:true,invalidMessage:'fail_number不能为空',missingMessage:'fail_number不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>amount</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.amount" name="v2BankBehalfOrderDto.amount" class="easyui-validatebox" data-options="required:true,invalidMessage:'amount不能为空',missingMessage:'amount不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_amount</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.trans_amount" name="v2BankBehalfOrderDto.trans_amount" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_amount不能为空',missingMessage:'trans_amount不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>back_url</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.back_url" name="v2BankBehalfOrderDto.back_url" class="easyui-validatebox" data-options="required:true,invalidMessage:'back_url不能为空',missingMessage:'back_url不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_id</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.order_id" name="v2BankBehalfOrderDto.order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_id不能为空',missingMessage:'order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_name</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.mer_name" name="v2BankBehalfOrderDto.mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_name不能为空',missingMessage:'mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="v2BankBehalfOrderDto.sub_mer_id" name="v2BankBehalfOrderDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_id不能为空',missingMessage:'sub_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>