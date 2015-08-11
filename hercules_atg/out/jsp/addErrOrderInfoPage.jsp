<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addErrOrderInfoFrom" name="addErrOrderInfoFrom" method="post" action="addErrOrderInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>order_id</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.order_id" name="errOrderInfoDto.order_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'order_id必须为数字',missingMessage:'order_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_id</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.terminal_id" name="errOrderInfoDto.terminal_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>merchant_id</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.merchant_id" name="errOrderInfoDto.merchant_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_id不能为空',missingMessage:'merchant_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>merchant_name</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.merchant_name" name="errOrderInfoDto.merchant_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_name不能为空',missingMessage:'merchant_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tsn</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.tsn" name="errOrderInfoDto.tsn" class="easyui-validatebox" data-options="required:true,invalidMessage:'tsn不能为空',missingMessage:'tsn不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_code</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.trans_code" name="errOrderInfoDto.trans_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_code不能为空',missingMessage:'trans_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>merchant_order_id</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.merchant_order_id" name="errOrderInfoDto.merchant_order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_order_id不能为空',missingMessage:'merchant_order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>merchant_order_time</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.merchant_order_time" name="errOrderInfoDto.merchant_order_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_order_time不能为空',missingMessage:'merchant_order_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>merchant_order_amt</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.merchant_order_amt" name="errOrderInfoDto.merchant_order_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_order_amt不能为空',missingMessage:'merchant_order_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>merchant_order_currency</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.merchant_order_currency" name="errOrderInfoDto.merchant_order_currency" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_order_currency不能为空',missingMessage:'merchant_order_currency不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>phone_num</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.phone_num" name="errOrderInfoDto.phone_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'phone_num不能为空',missingMessage:'phone_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>product_type</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.product_type" name="errOrderInfoDto.product_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'product_type不能为空',missingMessage:'product_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bus_type</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.bus_type" name="errOrderInfoDto.bus_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_type不能为空',missingMessage:'bus_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.trans_type" name="errOrderInfoDto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_ip</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.terminal_ip" name="errOrderInfoDto.terminal_ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_ip不能为空',missingMessage:'terminal_ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>user_ip</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.user_ip" name="errOrderInfoDto.user_ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_ip不能为空',missingMessage:'user_ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>batch_no</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.batch_no" name="errOrderInfoDto.batch_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_no不能为空',missingMessage:'batch_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>voucher_no</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.voucher_no" name="errOrderInfoDto.voucher_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'voucher_no不能为空',missingMessage:'voucher_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_code</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.resp_code" name="errOrderInfoDto.resp_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_code不能为空',missingMessage:'resp_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_desc</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.resp_desc" name="errOrderInfoDto.resp_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_desc不能为空',missingMessage:'resp_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.trans_time" name="errOrderInfoDto.trans_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.create_date" name="errOrderInfoDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>full_card_no</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.full_card_no" name="errOrderInfoDto.full_card_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'full_card_no不能为空',missingMessage:'full_card_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>full_card_no2</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.full_card_no2" name="errOrderInfoDto.full_card_no2" class="easyui-validatebox" data-options="required:true,invalidMessage:'full_card_no2不能为空',missingMessage:'full_card_no2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="errOrderInfoDto.reserved1" name="errOrderInfoDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>