<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addOrderInfoFrom" name="addOrderInfoFrom" method="post" action="addOrderInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>terminal_id</label></th>
							<td>
								<input type="text" id="orderInfoDto.terminal_id" name="orderInfoDto.terminal_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="orderInfoDto.sub_mer_id" name="orderInfoDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="orderInfoDto.mer_sys_id" name="orderInfoDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_id_l2</label></th>
							<td>
								<input type="text" id="orderInfoDto.agent_id_l2" name="orderInfoDto.agent_id_l2" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l2必须为数字',missingMessage:'agent_id_l2必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_id_l1</label></th>
							<td>
								<input type="text" id="orderInfoDto.agent_id_l1" name="orderInfoDto.agent_id_l1" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l1必须为数字',missingMessage:'agent_id_l1必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_mer_id</label></th>
							<td>
								<input type="text" id="orderInfoDto.trans_mer_id" name="orderInfoDto.trans_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="orderInfoDto.trans_type" name="orderInfoDto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_type</label></th>
							<td>
								<input type="text" id="orderInfoDto.terminal_type" name="orderInfoDto.terminal_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_type不能为空',missingMessage:'terminal_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_order_id</label></th>
							<td>
								<input type="text" id="orderInfoDto.mer_order_id" name="orderInfoDto.mer_order_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_id不能为空',missingMessage:'mer_order_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_order_time</label></th>
							<td>
								<input type="text" id="orderInfoDto.mer_order_time" name="orderInfoDto.mer_order_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_time不能为空',missingMessage:'mer_order_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_amt</label></th>
							<td>
								<input type="text" id="orderInfoDto.mer_amt" name="orderInfoDto.mer_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_amt必须为数字',missingMessage:'mer_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>currency</label></th>
							<td>
								<input type="text" id="orderInfoDto.currency" name="orderInfoDto.currency" class="easyui-validatebox" data-options="required:true,invalidMessage:'currency不能为空',missingMessage:'currency不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_status</label></th>
							<td>
								<input type="text" id="orderInfoDto.order_status" name="orderInfoDto.order_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_status不能为空',missingMessage:'order_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>refund_status</label></th>
							<td>
								<input type="text" id="orderInfoDto.refund_status" name="orderInfoDto.refund_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'refund_status不能为空',missingMessage:'refund_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>org_order_id</label></th>
							<td>
								<input type="text" id="orderInfoDto.org_order_id" name="orderInfoDto.org_order_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_id必须为数字',missingMessage:'org_order_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_no</label></th>
							<td>
								<input type="text" id="orderInfoDto.card_no" name="orderInfoDto.card_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_no不能为空',missingMessage:'card_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_type</label></th>
							<td>
								<input type="text" id="orderInfoDto.card_type" name="orderInfoDto.card_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issue_bank_id</label></th>
							<td>
								<input type="text" id="orderInfoDto.issue_bank_id" name="orderInfoDto.issue_bank_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'issue_bank_id不能为空',missingMessage:'issue_bank_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>issue_bank_name</label></th>
							<td>
								<input type="text" id="orderInfoDto.issue_bank_name" name="orderInfoDto.issue_bank_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'issue_bank_name不能为空',missingMessage:'issue_bank_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>user_mobile</label></th>
							<td>
								<input type="text" id="orderInfoDto.user_mobile" name="orderInfoDto.user_mobile" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_mobile不能为空',missingMessage:'user_mobile不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>back_url</label></th>
							<td>
								<input type="text" id="orderInfoDto.back_url" name="orderInfoDto.back_url" class="easyui-validatebox" data-options="required:true,invalidMessage:'back_url不能为空',missingMessage:'back_url不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time</label></th>
							<td>
								<input type="text" id="orderInfoDto.trans_time" name="orderInfoDto.trans_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>finish_time</label></th>
							<td>
								<input type="text" id="orderInfoDto.finish_time" name="orderInfoDto.finish_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>user_ip</label></th>
							<td>
								<input type="text" id="orderInfoDto.user_ip" name="orderInfoDto.user_ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_ip不能为空',missingMessage:'user_ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>batch_no</label></th>
							<td>
								<input type="text" id="orderInfoDto.batch_no" name="orderInfoDto.batch_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_no不能为空',missingMessage:'batch_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reffer_no</label></th>
							<td>
								<input type="text" id="orderInfoDto.reffer_no" name="orderInfoDto.reffer_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'reffer_no不能为空',missingMessage:'reffer_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>auth_no</label></th>
							<td>
								<input type="text" id="orderInfoDto.auth_no" name="orderInfoDto.auth_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'auth_no不能为空',missingMessage:'auth_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>voucher_no</label></th>
							<td>
								<input type="text" id="orderInfoDto.voucher_no" name="orderInfoDto.voucher_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'voucher_no不能为空',missingMessage:'voucher_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="orderInfoDto.settle_date" name="orderInfoDto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_cur</label></th>
							<td>
								<input type="text" id="orderInfoDto.settle_cur" name="orderInfoDto.settle_cur" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_cur不能为空',missingMessage:'settle_cur不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_code</label></th>
							<td>
								<input type="text" id="orderInfoDto.resp_code" name="orderInfoDto.resp_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_code不能为空',missingMessage:'resp_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>resp_desc</label></th>
							<td>
								<input type="text" id="orderInfoDto.resp_desc" name="orderInfoDto.resp_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_desc不能为空',missingMessage:'resp_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="orderInfoDto.remark" name="orderInfoDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="orderInfoDto.reserved" name="orderInfoDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_name</label></th>
							<td>
								<input type="text" id="orderInfoDto.account_name" name="orderInfoDto.account_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_name不能为空',missingMessage:'account_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2_no</label></th>
							<td>
								<input type="text" id="orderInfoDto.account2_no" name="orderInfoDto.account2_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_no不能为空',missingMessage:'account2_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2_name</label></th>
							<td>
								<input type="text" id="orderInfoDto.account2_name" name="orderInfoDto.account2_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_name不能为空',missingMessage:'account2_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account2_bank</label></th>
							<td>
								<input type="text" id="orderInfoDto.account2_bank" name="orderInfoDto.account2_bank" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_bank不能为空',missingMessage:'account2_bank不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="orderInfoDto.create_date" name="orderInfoDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>full_card_no</label></th>
							<td>
								<input type="text" id="orderInfoDto.full_card_no" name="orderInfoDto.full_card_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'full_card_no不能为空',missingMessage:'full_card_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>order_rate_type</label></th>
							<td>
								<input type="text" id="orderInfoDto.order_rate_type" name="orderInfoDto.order_rate_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_rate_type不能为空',missingMessage:'order_rate_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_mer_name</label></th>
							<td>
								<input type="text" id="orderInfoDto.trans_mer_name" name="orderInfoDto.trans_mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_name不能为空',missingMessage:'trans_mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="orderInfoDto.reserved1" name="orderInfoDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="orderInfoDto.reserved2" name="orderInfoDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="orderInfoDto.reserved3" name="orderInfoDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>