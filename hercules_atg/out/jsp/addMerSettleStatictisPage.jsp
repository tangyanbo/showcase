<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerSettleStatictisFrom" name="addMerSettleStatictisFrom" method="post" action="addMerSettleStatictisAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mid</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.mid" name="merSettleStatictisDto.mid" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mid必须为数字',missingMessage:'mid必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_type</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.mer_type" name="merSettleStatictisDto.mer_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_type不能为空',missingMessage:'mer_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.mer_sys_id" name="merSettleStatictisDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_name</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.mer_name" name="merSettleStatictisDto.mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_name不能为空',missingMessage:'mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_num</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.account_num" name="merSettleStatictisDto.account_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_num不能为空',missingMessage:'account_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_name</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.account_name" name="merSettleStatictisDto.account_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_name不能为空',missingMessage:'account_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_agency_id</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.account_agency_id" name="merSettleStatictisDto.account_agency_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_agency_id不能为空',missingMessage:'account_agency_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.settle_date" name="merSettleStatictisDto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sum_amt</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.sum_amt" name="merSettleStatictisDto.sum_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'sum_amt不能为空',missingMessage:'sum_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sum_trans_fee</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.sum_trans_fee" name="merSettleStatictisDto.sum_trans_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'sum_trans_fee不能为空',missingMessage:'sum_trans_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_amt</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.clear_amt" name="merSettleStatictisDto.clear_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_amt不能为空',missingMessage:'clear_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.create_date" name="merSettleStatictisDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.create_time" name="merSettleStatictisDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_order_id</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.clear_order_id" name="merSettleStatictisDto.clear_order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_order_id不能为空',missingMessage:'clear_order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>faile_amt</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.faile_amt" name="merSettleStatictisDto.faile_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'faile_amt不能为空',missingMessage:'faile_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bp_serial_number</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.bp_serial_number" name="merSettleStatictisDto.bp_serial_number" class="easyui-validatebox" data-options="required:true,invalidMessage:'bp_serial_number不能为空',missingMessage:'bp_serial_number不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>count_fee</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.count_fee" name="merSettleStatictisDto.count_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'count_fee不能为空',missingMessage:'count_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_desc</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.clear_desc" name="merSettleStatictisDto.clear_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_desc不能为空',missingMessage:'clear_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.reserved" name="merSettleStatictisDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>stop_clear_amt</label></th>
							<td>
								<input type="text" id="merSettleStatictisDto.stop_clear_amt" name="merSettleStatictisDto.stop_clear_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'stop_clear_amt必须为数字',missingMessage:'stop_clear_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>