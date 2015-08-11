<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editOrderInfo1From" name="editOrderInfo1From" method="post" action="editOrderInfo1Action.action">
				<div class="search-panel-bd">
							<input type="hidden" id="orderInfo1Dto.order_id" name="orderInfo1Dto.order_id" value="${orderInfo1Dto.order_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>terminal_id</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.terminal_id" name="orderInfo1Dto.terminal_id" value="${orderInfo1Dto.terminal_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_id</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.sub_mer_id" name="orderInfo1Dto.sub_mer_id" value="${orderInfo1Dto.sub_mer_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.mer_sys_id" name="orderInfo1Dto.mer_sys_id" value="${orderInfo1Dto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_id_l2</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.agent_id_l2" name="orderInfo1Dto.agent_id_l2" value="${orderInfo1Dto.agent_id_l2}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l2必须为数字',missingMessage:'agent_id_l2必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_id_l1</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.agent_id_l1" name="orderInfo1Dto.agent_id_l1" value="${orderInfo1Dto.agent_id_l1}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l1必须为数字',missingMessage:'agent_id_l1必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_mer_id</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.trans_mer_id" name="orderInfo1Dto.trans_mer_id" value="${orderInfo1Dto.trans_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_type</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.trans_type" name="orderInfo1Dto.trans_type" value="${orderInfo1Dto.trans_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>terminal_type</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.terminal_type" name="orderInfo1Dto.terminal_type" value="${orderInfo1Dto.terminal_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_type不能为空',missingMessage:'terminal_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_order_id</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.mer_order_id" name="orderInfo1Dto.mer_order_id" value="${orderInfo1Dto.mer_order_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_id不能为空',missingMessage:'mer_order_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_order_time</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.mer_order_time" name="orderInfo1Dto.mer_order_time" value="${orderInfo1Dto.mer_order_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_order_time不能为空',missingMessage:'mer_order_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_amt</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.mer_amt" name="orderInfo1Dto.mer_amt" value="${orderInfo1Dto.mer_amt}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_amt必须为数字',missingMessage:'mer_amt必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>currency</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.currency" name="orderInfo1Dto.currency" value="${orderInfo1Dto.currency}" class="easyui-validatebox" data-options="required:true,invalidMessage:'currency不能为空',missingMessage:'currency不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>order_status</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.order_status" name="orderInfo1Dto.order_status" value="${orderInfo1Dto.order_status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_status不能为空',missingMessage:'order_status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>refund_status</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.refund_status" name="orderInfo1Dto.refund_status" value="${orderInfo1Dto.refund_status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'refund_status不能为空',missingMessage:'refund_status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>org_order_id</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.org_order_id" name="orderInfo1Dto.org_order_id" value="${orderInfo1Dto.org_order_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'org_order_id必须为数字',missingMessage:'org_order_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_no</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.card_no" name="orderInfo1Dto.card_no" value="${orderInfo1Dto.card_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_no不能为空',missingMessage:'card_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_type</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.card_type" name="orderInfo1Dto.card_type" value="${orderInfo1Dto.card_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_type不能为空',missingMessage:'card_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>issue_bank_id</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.issue_bank_id" name="orderInfo1Dto.issue_bank_id" value="${orderInfo1Dto.issue_bank_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'issue_bank_id不能为空',missingMessage:'issue_bank_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>issue_bank_name</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.issue_bank_name" name="orderInfo1Dto.issue_bank_name" value="${orderInfo1Dto.issue_bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'issue_bank_name不能为空',missingMessage:'issue_bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>user_mobile</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.user_mobile" name="orderInfo1Dto.user_mobile" value="${orderInfo1Dto.user_mobile}" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_mobile不能为空',missingMessage:'user_mobile不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>back_url</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.back_url" name="orderInfo1Dto.back_url" value="${orderInfo1Dto.back_url}" class="easyui-validatebox" data-options="required:true,invalidMessage:'back_url不能为空',missingMessage:'back_url不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_time</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.trans_time" name="orderInfo1Dto.trans_time" value="${orderInfo1Dto.trans_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>finish_time</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.finish_time" name="orderInfo1Dto.finish_time" value="${orderInfo1Dto.finish_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>user_ip</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.user_ip" name="orderInfo1Dto.user_ip" value="${orderInfo1Dto.user_ip}" class="easyui-validatebox" data-options="required:true,invalidMessage:'user_ip不能为空',missingMessage:'user_ip不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>batch_no</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.batch_no" name="orderInfo1Dto.batch_no" value="${orderInfo1Dto.batch_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'batch_no不能为空',missingMessage:'batch_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reffer_no</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.reffer_no" name="orderInfo1Dto.reffer_no" value="${orderInfo1Dto.reffer_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reffer_no不能为空',missingMessage:'reffer_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>auth_no</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.auth_no" name="orderInfo1Dto.auth_no" value="${orderInfo1Dto.auth_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'auth_no不能为空',missingMessage:'auth_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>voucher_no</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.voucher_no" name="orderInfo1Dto.voucher_no" value="${orderInfo1Dto.voucher_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'voucher_no不能为空',missingMessage:'voucher_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_date</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.settle_date" name="orderInfo1Dto.settle_date" value="${orderInfo1Dto.settle_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>resp_code</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.resp_code" name="orderInfo1Dto.resp_code" value="${orderInfo1Dto.resp_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_code不能为空',missingMessage:'resp_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>resp_desc</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.resp_desc" name="orderInfo1Dto.resp_desc" value="${orderInfo1Dto.resp_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'resp_desc不能为空',missingMessage:'resp_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.remark" name="orderInfo1Dto.remark" value="${orderInfo1Dto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.reserved" name="orderInfo1Dto.reserved" value="${orderInfo1Dto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account_name</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.account_name" name="orderInfo1Dto.account_name" value="${orderInfo1Dto.account_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_name不能为空',missingMessage:'account_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account2_no</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.account2_no" name="orderInfo1Dto.account2_no" value="${orderInfo1Dto.account2_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_no不能为空',missingMessage:'account2_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account2_name</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.account2_name" name="orderInfo1Dto.account2_name" value="${orderInfo1Dto.account2_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_name不能为空',missingMessage:'account2_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account2_bank</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.account2_bank" name="orderInfo1Dto.account2_bank" value="${orderInfo1Dto.account2_bank}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account2_bank不能为空',missingMessage:'account2_bank不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_date</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.create_date" name="orderInfo1Dto.create_date" value="${orderInfo1Dto.create_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>full_card_no</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.full_card_no" name="orderInfo1Dto.full_card_no" value="${orderInfo1Dto.full_card_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'full_card_no不能为空',missingMessage:'full_card_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>order_rate_type</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.order_rate_type" name="orderInfo1Dto.order_rate_type" value="${orderInfo1Dto.order_rate_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_rate_type不能为空',missingMessage:'order_rate_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.reserved1" name="orderInfo1Dto.reserved1" value="${orderInfo1Dto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.reserved2" name="orderInfo1Dto.reserved2" value="${orderInfo1Dto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.reserved3" name="orderInfo1Dto.reserved3" value="${orderInfo1Dto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_mer_name</label></th>
									<td>
										<input type="text" id="orderInfo1Dto.trans_mer_name" name="orderInfo1Dto.trans_mer_name" value="${orderInfo1Dto.trans_mer_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_name不能为空',missingMessage:'trans_mer_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delOrderInfo1From" name="delOrderInfo1From" method="post" action="delOrderInfo1Action.action">
						<input type="hidden" id="pkid" name="pkid" value="${orderInfo1Dto.order_id}" />
			</form>
		</div>
	</div>
</div>