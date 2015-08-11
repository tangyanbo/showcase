<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addOrderInfoBakFrom" name="addOrderInfoBakFrom" method="post" action="addOrderInfoBakAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>batch_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.batch_id" name="orderInfoBakDto.batch_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_id不能为空',missingMessage:'batch_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.terminal_id" name="orderInfoBakDto.terminal_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.sub_mer_id" name="orderInfoBakDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.mer_sys_id" name="orderInfoBakDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_id_l2</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.agent_id_l2" name="orderInfoBakDto.agent_id_l2" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l2必须为数字',missingMessage:'agent_id_l2必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_id_l1</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.agent_id_l1" name="orderInfoBakDto.agent_id_l1" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l1必须为数字',missingMessage:'agent_id_l1必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_mer_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.trans_mer_id" name="orderInfoBakDto.trans_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.trans_type" name="orderInfoBakDto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_type</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.terminal_type" name="orderInfoBakDto.terminal_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_type不能为空',missingMessage:'terminal_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_order_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.mer_order_id" name="orderInfoBakDto.mer_order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_id不能为空',missingMessage:'mer_order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_order_time</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.mer_order_time" name="orderInfoBakDto.mer_order_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_time不能为空',missingMessage:'mer_order_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_amt</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.mer_amt" name="orderInfoBakDto.mer_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_amt必须为数字',missingMessage:'mer_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_fee</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.order_fee" name="orderInfoBakDto.order_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_fee不能为空',missingMessage:'order_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>currency</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.currency" name="orderInfoBakDto.currency" class="easyui-validatebox" data-options="required:true,invalidMessage:'currency不能为空',missingMessage:'currency不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_desc</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.order_desc" name="orderInfoBakDto.order_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_desc不能为空',missingMessage:'order_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_over_time</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.order_over_time" name="orderInfoBakDto.order_over_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_over_time不能为空',missingMessage:'order_over_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_status</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.order_status" name="orderInfoBakDto.order_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_status不能为空',missingMessage:'order_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>refund_status</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.refund_status" name="orderInfoBakDto.refund_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'refund_status不能为空',missingMessage:'refund_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>org_order_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.org_order_id" name="orderInfoBakDto.org_order_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_id必须为数字',missingMessage:'org_order_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>org_order_amt</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.org_order_amt" name="orderInfoBakDto.org_order_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_amt必须为数字',missingMessage:'org_order_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.card_no" name="orderInfoBakDto.card_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_no不能为空',missingMessage:'card_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_type</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.card_type" name="orderInfoBakDto.card_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issue_bank_id</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.issue_bank_id" name="orderInfoBakDto.issue_bank_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'issue_bank_id不能为空',missingMessage:'issue_bank_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issue_bank_name</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.issue_bank_name" name="orderInfoBakDto.issue_bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'issue_bank_name不能为空',missingMessage:'issue_bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>user_mobile</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.user_mobile" name="orderInfoBakDto.user_mobile" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_mobile不能为空',missingMessage:'user_mobile不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>back_url</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.back_url" name="orderInfoBakDto.back_url" class="easyui-validatebox" data-options="required:true,invalidMessage:'back_url不能为空',missingMessage:'back_url不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.create_time" name="orderInfoBakDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.trans_time" name="orderInfoBakDto.trans_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>finish_time</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.finish_time" name="orderInfoBakDto.finish_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>user_ip</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.user_ip" name="orderInfoBakDto.user_ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_ip不能为空',missingMessage:'user_ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>batch_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.batch_no" name="orderInfoBakDto.batch_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_no不能为空',missingMessage:'batch_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reffer_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.reffer_no" name="orderInfoBakDto.reffer_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'reffer_no不能为空',missingMessage:'reffer_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>auth_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.auth_no" name="orderInfoBakDto.auth_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'auth_no不能为空',missingMessage:'auth_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>voucher_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.voucher_no" name="orderInfoBakDto.voucher_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'voucher_no不能为空',missingMessage:'voucher_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_amt</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.settle_amt" name="orderInfoBakDto.settle_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_amt不能为空',missingMessage:'settle_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.settle_date" name="orderInfoBakDto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_cur</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.settle_cur" name="orderInfoBakDto.settle_cur" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_cur不能为空',missingMessage:'settle_cur不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_conver_rate</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.settle_conver_rate" name="orderInfoBakDto.settle_conver_rate" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_conver_rate不能为空',missingMessage:'settle_conver_rate不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trace_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.trace_no" name="orderInfoBakDto.trace_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'trace_no不能为空',missingMessage:'trace_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>qid</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.qid" name="orderInfoBakDto.qid" class="easyui-validatebox" data-options="required:true,invalidMessage:'qid不能为空',missingMessage:'qid不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_code</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.resp_code" name="orderInfoBakDto.resp_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_code不能为空',missingMessage:'resp_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_desc</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.resp_desc" name="orderInfoBakDto.resp_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_desc不能为空',missingMessage:'resp_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.remark" name="orderInfoBakDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.reserved" name="orderInfoBakDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.ext" name="orderInfoBakDto.ext" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_name</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.account_name" name="orderInfoBakDto.account_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_name不能为空',missingMessage:'account_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.account2_no" name="orderInfoBakDto.account2_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_no不能为空',missingMessage:'account2_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2_name</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.account2_name" name="orderInfoBakDto.account2_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_name不能为空',missingMessage:'account2_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2_bank</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.account2_bank" name="orderInfoBakDto.account2_bank" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_bank不能为空',missingMessage:'account2_bank不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_fee</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.trans_fee" name="orderInfoBakDto.trans_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_fee不能为空',missingMessage:'trans_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bus_type</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.bus_type" name="orderInfoBakDto.bus_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_type不能为空',missingMessage:'bus_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.create_date" name="orderInfoBakDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>full_card_no</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.full_card_no" name="orderInfoBakDto.full_card_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'full_card_no不能为空',missingMessage:'full_card_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_rate_type</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.order_rate_type" name="orderInfoBakDto.order_rate_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_rate_type不能为空',missingMessage:'order_rate_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_mer_name</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.trans_mer_name" name="orderInfoBakDto.trans_mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_name不能为空',missingMessage:'trans_mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.reserved1" name="orderInfoBakDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.reserved2" name="orderInfoBakDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="orderInfoBakDto.reserved3" name="orderInfoBakDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>