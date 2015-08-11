<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addOrderStatictisFrom" name="addOrderStatictisFrom" method="post" action="addOrderStatictisAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>order_id</label></th>
							<td>
								<input type="text" id="orderStatictisDto.order_id" name="orderStatictisDto.order_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'order_id必须为数字',missingMessage:'order_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="orderStatictisDto.sub_mer_id" name="orderStatictisDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_amt</label></th>
							<td>
								<input type="text" id="orderStatictisDto.mer_amt" name="orderStatictisDto.mer_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_amt必须为数字',missingMessage:'mer_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_fee</label></th>
							<td>
								<input type="text" id="orderStatictisDto.trans_fee" name="orderStatictisDto.trans_fee" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'trans_fee必须为数字',missingMessage:'trans_fee必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_amt</label></th>
							<td>
								<input type="text" id="orderStatictisDto.clear_amt" name="orderStatictisDto.clear_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'clear_amt必须为数字',missingMessage:'clear_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_type</label></th>
							<td>
								<input type="text" id="orderStatictisDto.clear_type" name="orderStatictisDto.clear_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_type不能为空',missingMessage:'clear_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_tract</label></th>
							<td>
								<input type="text" id="orderStatictisDto.clear_tract" name="orderStatictisDto.clear_tract" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_tract不能为空',missingMessage:'clear_tract不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_time</label></th>
							<td>
								<input type="text" id="orderStatictisDto.clear_time" name="orderStatictisDto.clear_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_time不能为空',missingMessage:'clear_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="orderStatictisDto.create_time" name="orderStatictisDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="orderStatictisDto.trans_type" name="orderStatictisDto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="orderStatictisDto.settle_date" name="orderStatictisDto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="orderStatictisDto.reserved" name="orderStatictisDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="orderStatictisDto.create_date" name="orderStatictisDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_batch_no</label></th>
							<td>
								<input type="text" id="orderStatictisDto.clear_batch_no" name="orderStatictisDto.clear_batch_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_batch_no不能为空',missingMessage:'clear_batch_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>