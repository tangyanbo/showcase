<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editOrderInfo1From" name="editOrderInfo1From" method="post" action="editOrderInfo1Action.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.terminal_id" name="orderInfo1Dto.terminal_id"  value="${orderInfo1Dto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.sub_mer_id" name="orderInfo1Dto.sub_mer_id"  value="${orderInfo1Dto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.mer_sys_id" name="orderInfo1Dto.mer_sys_id"  value="${orderInfo1Dto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l2</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.agent_id_l2" name="orderInfo1Dto.agent_id_l2"  value="${orderInfo1Dto.agent_id_l2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l1</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.agent_id_l1" name="orderInfo1Dto.agent_id_l1"  value="${orderInfo1Dto.agent_id_l1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.trans_mer_id" name="orderInfo1Dto.trans_mer_id"  value="${orderInfo1Dto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.trans_type" name="orderInfo1Dto.trans_type"  value="${orderInfo1Dto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_type</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.terminal_type" name="orderInfo1Dto.terminal_type"  value="${orderInfo1Dto.terminal_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_id</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.mer_order_id" name="orderInfo1Dto.mer_order_id"  value="${orderInfo1Dto.mer_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_time</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.mer_order_time" name="orderInfo1Dto.mer_order_time"  value="${orderInfo1Dto.mer_order_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_amt</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.mer_amt" name="orderInfo1Dto.mer_amt"  value="${orderInfo1Dto.mer_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>currency</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.currency" name="orderInfo1Dto.currency"  value="${orderInfo1Dto.currency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_status</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.order_status" name="orderInfo1Dto.order_status"  value="${orderInfo1Dto.order_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>refund_status</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.refund_status" name="orderInfo1Dto.refund_status"  value="${orderInfo1Dto.refund_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.org_order_id" name="orderInfo1Dto.org_order_id"  value="${orderInfo1Dto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.card_no" name="orderInfo1Dto.card_no"  value="${orderInfo1Dto.card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.card_type" name="orderInfo1Dto.card_type"  value="${orderInfo1Dto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issue_bank_id</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.issue_bank_id" name="orderInfo1Dto.issue_bank_id"  value="${orderInfo1Dto.issue_bank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issue_bank_name</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.issue_bank_name" name="orderInfo1Dto.issue_bank_name"  value="${orderInfo1Dto.issue_bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_mobile</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.user_mobile" name="orderInfo1Dto.user_mobile"  value="${orderInfo1Dto.user_mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>back_url</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.back_url" name="orderInfo1Dto.back_url"  value="${orderInfo1Dto.back_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.trans_time" name="orderInfo1Dto.trans_time"  value="${orderInfo1Dto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.finish_time" name="orderInfo1Dto.finish_time"  value="${orderInfo1Dto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_ip</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.user_ip" name="orderInfo1Dto.user_ip"  value="${orderInfo1Dto.user_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.batch_no" name="orderInfo1Dto.batch_no"  value="${orderInfo1Dto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reffer_no</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.reffer_no" name="orderInfo1Dto.reffer_no"  value="${orderInfo1Dto.reffer_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.auth_no" name="orderInfo1Dto.auth_no"  value="${orderInfo1Dto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>voucher_no</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.voucher_no" name="orderInfo1Dto.voucher_no"  value="${orderInfo1Dto.voucher_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.settle_date" name="orderInfo1Dto.settle_date"  value="${orderInfo1Dto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_code</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.resp_code" name="orderInfo1Dto.resp_code"  value="${orderInfo1Dto.resp_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_desc</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.resp_desc" name="orderInfo1Dto.resp_desc"  value="${orderInfo1Dto.resp_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.remark" name="orderInfo1Dto.remark"  value="${orderInfo1Dto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.reserved" name="orderInfo1Dto.reserved"  value="${orderInfo1Dto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_name</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.account_name" name="orderInfo1Dto.account_name"  value="${orderInfo1Dto.account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_no</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.account2_no" name="orderInfo1Dto.account2_no"  value="${orderInfo1Dto.account2_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.account2_name" name="orderInfo1Dto.account2_name"  value="${orderInfo1Dto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_bank</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.account2_bank" name="orderInfo1Dto.account2_bank"  value="${orderInfo1Dto.account2_bank}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.create_date" name="orderInfo1Dto.create_date"  value="${orderInfo1Dto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>full_card_no</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.full_card_no" name="orderInfo1Dto.full_card_no"  value="${orderInfo1Dto.full_card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_rate_type</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.order_rate_type" name="orderInfo1Dto.order_rate_type"  value="${orderInfo1Dto.order_rate_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.reserved1" name="orderInfo1Dto.reserved1"  value="${orderInfo1Dto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.reserved2" name="orderInfo1Dto.reserved2"  value="${orderInfo1Dto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.reserved3" name="orderInfo1Dto.reserved3"  value="${orderInfo1Dto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_status</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.settle_status" name="orderInfo1Dto.settle_status"  value="${orderInfo1Dto.settle_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="orderInfo1Dto.trans_mer_name" name="orderInfo1Dto.trans_mer_name"  value="${orderInfo1Dto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>