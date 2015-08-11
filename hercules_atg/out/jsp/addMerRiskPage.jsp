<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerRiskFrom" name="addMerRiskFrom" method="post" action="addMerRiskAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_type</label></th>
							<td>
								<input type="text" id="merRiskDto.mer_type" name="merRiskDto.mer_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_type不能为空',missingMessage:'mer_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="merRiskDto.mer_sys_id" name="merRiskDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_name</label></th>
							<td>
								<input type="text" id="merRiskDto.sub_mer_name" name="merRiskDto.sub_mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_name不能为空',missingMessage:'sub_mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>debit_per_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.debit_per_card_quota" name="merRiskDto.debit_per_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'debit_per_card_quota不能为空',missingMessage:'debit_per_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>debit_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.debit_card_quota" name="merRiskDto.debit_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'debit_card_quota不能为空',missingMessage:'debit_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>debit_card_count</label></th>
							<td>
								<input type="text" id="merRiskDto.debit_card_count" name="merRiskDto.debit_card_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'debit_card_count不能为空',missingMessage:'debit_card_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>credit_per_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.credit_per_card_quota" name="merRiskDto.credit_per_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'credit_per_card_quota不能为空',missingMessage:'credit_per_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>credit_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.credit_card_quota" name="merRiskDto.credit_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'credit_card_quota不能为空',missingMessage:'credit_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>credit_card_count</label></th>
							<td>
								<input type="text" id="merRiskDto.credit_card_count" name="merRiskDto.credit_card_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'credit_card_count不能为空',missingMessage:'credit_card_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.terminal_card_quota" name="merRiskDto.terminal_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_card_quota不能为空',missingMessage:'terminal_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>transfer_per_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.transfer_per_card_quota" name="merRiskDto.transfer_per_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'transfer_per_card_quota不能为空',missingMessage:'transfer_per_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>transfer_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.transfer_card_quota" name="merRiskDto.transfer_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'transfer_card_quota不能为空',missingMessage:'transfer_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>transfer_card_count</label></th>
							<td>
								<input type="text" id="merRiskDto.transfer_card_count" name="merRiskDto.transfer_card_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'transfer_card_count不能为空',missingMessage:'transfer_card_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_transfer_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.terminal_transfer_card_quota" name="merRiskDto.terminal_transfer_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_transfer_card_quota不能为空',missingMessage:'terminal_transfer_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pay_credit_per_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.pay_credit_per_card_quota" name="merRiskDto.pay_credit_per_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_credit_per_card_quota不能为空',missingMessage:'pay_credit_per_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pay_credit_card_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.pay_credit_card_quota" name="merRiskDto.pay_credit_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_credit_card_quota不能为空',missingMessage:'pay_credit_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pay_credit_card_count</label></th>
							<td>
								<input type="text" id="merRiskDto.pay_credit_card_count" name="merRiskDto.pay_credit_card_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_credit_card_count不能为空',missingMessage:'pay_credit_card_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time_begin</label></th>
							<td>
								<input type="text" id="merRiskDto.trans_time_begin" name="merRiskDto.trans_time_begin" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time_begin不能为空',missingMessage:'trans_time_begin不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time_end</label></th>
							<td>
								<input type="text" id="merRiskDto.trans_time_end" name="merRiskDto.trans_time_end" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time_end不能为空',missingMessage:'trans_time_end不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_rules</label></th>
							<td>
								<input type="text" id="merRiskDto.trans_rules" name="merRiskDto.trans_rules" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_rules不能为空',missingMessage:'trans_rules不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>query_credit_card_count</label></th>
							<td>
								<input type="text" id="merRiskDto.query_credit_card_count" name="merRiskDto.query_credit_card_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'query_credit_card_count不能为空',missingMessage:'query_credit_card_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>query_debit_card_count</label></th>
							<td>
								<input type="text" id="merRiskDto.query_debit_card_count" name="merRiskDto.query_debit_card_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'query_debit_card_count不能为空',missingMessage:'query_debit_card_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_trans_quota</label></th>
							<td>
								<input type="text" id="merRiskDto.mer_trans_quota" name="merRiskDto.mer_trans_quota" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_trans_quota必须为数字',missingMessage:'mer_trans_quota必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>