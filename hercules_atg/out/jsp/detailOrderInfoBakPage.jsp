<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editOrderInfoBakFrom" name="editOrderInfoBakFrom" method="post" action="editOrderInfoBakAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>batch_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.batch_id" name="orderInfoBakDto.batch_id"  value="${orderInfoBakDto.batch_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.terminal_id" name="orderInfoBakDto.terminal_id"  value="${orderInfoBakDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.sub_mer_id" name="orderInfoBakDto.sub_mer_id"  value="${orderInfoBakDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.mer_sys_id" name="orderInfoBakDto.mer_sys_id"  value="${orderInfoBakDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l2</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.agent_id_l2" name="orderInfoBakDto.agent_id_l2"  value="${orderInfoBakDto.agent_id_l2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l1</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.agent_id_l1" name="orderInfoBakDto.agent_id_l1"  value="${orderInfoBakDto.agent_id_l1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.trans_mer_id" name="orderInfoBakDto.trans_mer_id"  value="${orderInfoBakDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.trans_type" name="orderInfoBakDto.trans_type"  value="${orderInfoBakDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_type</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.terminal_type" name="orderInfoBakDto.terminal_type"  value="${orderInfoBakDto.terminal_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.mer_order_id" name="orderInfoBakDto.mer_order_id"  value="${orderInfoBakDto.mer_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_time</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.mer_order_time" name="orderInfoBakDto.mer_order_time"  value="${orderInfoBakDto.mer_order_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_amt</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.mer_amt" name="orderInfoBakDto.mer_amt"  value="${orderInfoBakDto.mer_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_fee</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.order_fee" name="orderInfoBakDto.order_fee"  value="${orderInfoBakDto.order_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>currency</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.currency" name="orderInfoBakDto.currency"  value="${orderInfoBakDto.currency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_desc</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.order_desc" name="orderInfoBakDto.order_desc"  value="${orderInfoBakDto.order_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_over_time</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.order_over_time" name="orderInfoBakDto.order_over_time"  value="${orderInfoBakDto.order_over_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_status</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.order_status" name="orderInfoBakDto.order_status"  value="${orderInfoBakDto.order_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>refund_status</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.refund_status" name="orderInfoBakDto.refund_status"  value="${orderInfoBakDto.refund_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.org_order_id" name="orderInfoBakDto.org_order_id"  value="${orderInfoBakDto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_amt</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.org_order_amt" name="orderInfoBakDto.org_order_amt"  value="${orderInfoBakDto.org_order_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.card_no" name="orderInfoBakDto.card_no"  value="${orderInfoBakDto.card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.card_type" name="orderInfoBakDto.card_type"  value="${orderInfoBakDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issue_bank_id</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.issue_bank_id" name="orderInfoBakDto.issue_bank_id"  value="${orderInfoBakDto.issue_bank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issue_bank_name</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.issue_bank_name" name="orderInfoBakDto.issue_bank_name"  value="${orderInfoBakDto.issue_bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_mobile</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.user_mobile" name="orderInfoBakDto.user_mobile"  value="${orderInfoBakDto.user_mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>back_url</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.back_url" name="orderInfoBakDto.back_url"  value="${orderInfoBakDto.back_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.create_time" name="orderInfoBakDto.create_time"  value="${orderInfoBakDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.trans_time" name="orderInfoBakDto.trans_time"  value="${orderInfoBakDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.finish_time" name="orderInfoBakDto.finish_time"  value="${orderInfoBakDto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_ip</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.user_ip" name="orderInfoBakDto.user_ip"  value="${orderInfoBakDto.user_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.batch_no" name="orderInfoBakDto.batch_no"  value="${orderInfoBakDto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reffer_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.reffer_no" name="orderInfoBakDto.reffer_no"  value="${orderInfoBakDto.reffer_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.auth_no" name="orderInfoBakDto.auth_no"  value="${orderInfoBakDto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>voucher_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.voucher_no" name="orderInfoBakDto.voucher_no"  value="${orderInfoBakDto.voucher_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_amt</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.settle_amt" name="orderInfoBakDto.settle_amt"  value="${orderInfoBakDto.settle_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.settle_date" name="orderInfoBakDto.settle_date"  value="${orderInfoBakDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.settle_cur" name="orderInfoBakDto.settle_cur"  value="${orderInfoBakDto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_conver_rate</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.settle_conver_rate" name="orderInfoBakDto.settle_conver_rate"  value="${orderInfoBakDto.settle_conver_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trace_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.trace_no" name="orderInfoBakDto.trace_no"  value="${orderInfoBakDto.trace_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>qid</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.qid" name="orderInfoBakDto.qid"  value="${orderInfoBakDto.qid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_code</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.resp_code" name="orderInfoBakDto.resp_code"  value="${orderInfoBakDto.resp_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_desc</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.resp_desc" name="orderInfoBakDto.resp_desc"  value="${orderInfoBakDto.resp_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.remark" name="orderInfoBakDto.remark"  value="${orderInfoBakDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.reserved" name="orderInfoBakDto.reserved"  value="${orderInfoBakDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.ext" name="orderInfoBakDto.ext"  value="${orderInfoBakDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_name</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.account_name" name="orderInfoBakDto.account_name"  value="${orderInfoBakDto.account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.account2_no" name="orderInfoBakDto.account2_no"  value="${orderInfoBakDto.account2_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.account2_name" name="orderInfoBakDto.account2_name"  value="${orderInfoBakDto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_bank</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.account2_bank" name="orderInfoBakDto.account2_bank"  value="${orderInfoBakDto.account2_bank}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_fee</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.trans_fee" name="orderInfoBakDto.trans_fee"  value="${orderInfoBakDto.trans_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bus_type</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.bus_type" name="orderInfoBakDto.bus_type"  value="${orderInfoBakDto.bus_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.create_date" name="orderInfoBakDto.create_date"  value="${orderInfoBakDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>full_card_no</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.full_card_no" name="orderInfoBakDto.full_card_no"  value="${orderInfoBakDto.full_card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_rate_type</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.order_rate_type" name="orderInfoBakDto.order_rate_type"  value="${orderInfoBakDto.order_rate_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.trans_mer_name" name="orderInfoBakDto.trans_mer_name"  value="${orderInfoBakDto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.reserved1" name="orderInfoBakDto.reserved1"  value="${orderInfoBakDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.reserved2" name="orderInfoBakDto.reserved2"  value="${orderInfoBakDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.reserved3" name="orderInfoBakDto.reserved3"  value="${orderInfoBakDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_status</label></th>
								<td>
									<input type="text" id="orderInfoBakDto.settle_status" name="orderInfoBakDto.settle_status"  value="${orderInfoBakDto.settle_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>