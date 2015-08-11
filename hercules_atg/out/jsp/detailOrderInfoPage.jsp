<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editOrderInfoFrom" name="editOrderInfoFrom" method="post" action="editOrderInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="orderInfoDto.terminal_id" name="orderInfoDto.terminal_id"  value="${orderInfoDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="orderInfoDto.sub_mer_id" name="orderInfoDto.sub_mer_id"  value="${orderInfoDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="orderInfoDto.mer_sys_id" name="orderInfoDto.mer_sys_id"  value="${orderInfoDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l2</label></th>
								<td>
									<input type="text" id="orderInfoDto.agent_id_l2" name="orderInfoDto.agent_id_l2"  value="${orderInfoDto.agent_id_l2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l1</label></th>
								<td>
									<input type="text" id="orderInfoDto.agent_id_l1" name="orderInfoDto.agent_id_l1"  value="${orderInfoDto.agent_id_l1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="orderInfoDto.trans_mer_id" name="orderInfoDto.trans_mer_id"  value="${orderInfoDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="orderInfoDto.trans_type" name="orderInfoDto.trans_type"  value="${orderInfoDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_type</label></th>
								<td>
									<input type="text" id="orderInfoDto.terminal_type" name="orderInfoDto.terminal_type"  value="${orderInfoDto.terminal_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_id</label></th>
								<td>
									<input type="text" id="orderInfoDto.mer_order_id" name="orderInfoDto.mer_order_id"  value="${orderInfoDto.mer_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_time</label></th>
								<td>
									<input type="text" id="orderInfoDto.mer_order_time" name="orderInfoDto.mer_order_time"  value="${orderInfoDto.mer_order_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_amt</label></th>
								<td>
									<input type="text" id="orderInfoDto.mer_amt" name="orderInfoDto.mer_amt"  value="${orderInfoDto.mer_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>currency</label></th>
								<td>
									<input type="text" id="orderInfoDto.currency" name="orderInfoDto.currency"  value="${orderInfoDto.currency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_status</label></th>
								<td>
									<input type="text" id="orderInfoDto.order_status" name="orderInfoDto.order_status"  value="${orderInfoDto.order_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>refund_status</label></th>
								<td>
									<input type="text" id="orderInfoDto.refund_status" name="orderInfoDto.refund_status"  value="${orderInfoDto.refund_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="orderInfoDto.org_order_id" name="orderInfoDto.org_order_id"  value="${orderInfoDto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no</label></th>
								<td>
									<input type="text" id="orderInfoDto.card_no" name="orderInfoDto.card_no"  value="${orderInfoDto.card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="orderInfoDto.card_type" name="orderInfoDto.card_type"  value="${orderInfoDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issue_bank_id</label></th>
								<td>
									<input type="text" id="orderInfoDto.issue_bank_id" name="orderInfoDto.issue_bank_id"  value="${orderInfoDto.issue_bank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issue_bank_name</label></th>
								<td>
									<input type="text" id="orderInfoDto.issue_bank_name" name="orderInfoDto.issue_bank_name"  value="${orderInfoDto.issue_bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_mobile</label></th>
								<td>
									<input type="text" id="orderInfoDto.user_mobile" name="orderInfoDto.user_mobile"  value="${orderInfoDto.user_mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>back_url</label></th>
								<td>
									<input type="text" id="orderInfoDto.back_url" name="orderInfoDto.back_url"  value="${orderInfoDto.back_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="orderInfoDto.trans_time" name="orderInfoDto.trans_time"  value="${orderInfoDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="orderInfoDto.finish_time" name="orderInfoDto.finish_time"  value="${orderInfoDto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_ip</label></th>
								<td>
									<input type="text" id="orderInfoDto.user_ip" name="orderInfoDto.user_ip"  value="${orderInfoDto.user_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="orderInfoDto.batch_no" name="orderInfoDto.batch_no"  value="${orderInfoDto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reffer_no</label></th>
								<td>
									<input type="text" id="orderInfoDto.reffer_no" name="orderInfoDto.reffer_no"  value="${orderInfoDto.reffer_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="orderInfoDto.auth_no" name="orderInfoDto.auth_no"  value="${orderInfoDto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>voucher_no</label></th>
								<td>
									<input type="text" id="orderInfoDto.voucher_no" name="orderInfoDto.voucher_no"  value="${orderInfoDto.voucher_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="orderInfoDto.settle_date" name="orderInfoDto.settle_date"  value="${orderInfoDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="orderInfoDto.settle_cur" name="orderInfoDto.settle_cur"  value="${orderInfoDto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_code</label></th>
								<td>
									<input type="text" id="orderInfoDto.resp_code" name="orderInfoDto.resp_code"  value="${orderInfoDto.resp_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_desc</label></th>
								<td>
									<input type="text" id="orderInfoDto.resp_desc" name="orderInfoDto.resp_desc"  value="${orderInfoDto.resp_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="orderInfoDto.remark" name="orderInfoDto.remark"  value="${orderInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="orderInfoDto.reserved" name="orderInfoDto.reserved"  value="${orderInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_name</label></th>
								<td>
									<input type="text" id="orderInfoDto.account_name" name="orderInfoDto.account_name"  value="${orderInfoDto.account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_no</label></th>
								<td>
									<input type="text" id="orderInfoDto.account2_no" name="orderInfoDto.account2_no"  value="${orderInfoDto.account2_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="orderInfoDto.account2_name" name="orderInfoDto.account2_name"  value="${orderInfoDto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_bank</label></th>
								<td>
									<input type="text" id="orderInfoDto.account2_bank" name="orderInfoDto.account2_bank"  value="${orderInfoDto.account2_bank}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="orderInfoDto.create_date" name="orderInfoDto.create_date"  value="${orderInfoDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>full_card_no</label></th>
								<td>
									<input type="text" id="orderInfoDto.full_card_no" name="orderInfoDto.full_card_no"  value="${orderInfoDto.full_card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_rate_type</label></th>
								<td>
									<input type="text" id="orderInfoDto.order_rate_type" name="orderInfoDto.order_rate_type"  value="${orderInfoDto.order_rate_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="orderInfoDto.trans_mer_name" name="orderInfoDto.trans_mer_name"  value="${orderInfoDto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="orderInfoDto.reserved1" name="orderInfoDto.reserved1"  value="${orderInfoDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="orderInfoDto.reserved2" name="orderInfoDto.reserved2"  value="${orderInfoDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="orderInfoDto.reserved3" name="orderInfoDto.reserved3"  value="${orderInfoDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_status</label></th>
								<td>
									<input type="text" id="orderInfoDto.settle_status" name="orderInfoDto.settle_status"  value="${orderInfoDto.settle_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>