<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editFaiPayInfoBackTestFrom" name="editFaiPayInfoBackTestFrom" method="post" action="editFaiPayInfoBackTestAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_mer_id" name="faiPayInfoBackTestDto.trans_mer_id"  value="${faiPayInfoBackTestDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_ter_id" name="faiPayInfoBackTestDto.trans_ter_id"  value="${faiPayInfoBackTestDto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.channel_type" name="faiPayInfoBackTestDto.channel_type"  value="${faiPayInfoBackTestDto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_amt" name="faiPayInfoBackTestDto.trans_amt"  value="${faiPayInfoBackTestDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_cur" name="faiPayInfoBackTestDto.trans_cur"  value="${faiPayInfoBackTestDto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_time" name="faiPayInfoBackTestDto.trans_time"  value="${faiPayInfoBackTestDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_status" name="faiPayInfoBackTestDto.trans_status"  value="${faiPayInfoBackTestDto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_type" name="faiPayInfoBackTestDto.trans_type"  value="${faiPayInfoBackTestDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.res_code" name="faiPayInfoBackTestDto.res_code"  value="${faiPayInfoBackTestDto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_desc</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.res_desc" name="faiPayInfoBackTestDto.res_desc"  value="${faiPayInfoBackTestDto.res_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_trace_time</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_trace_time" name="faiPayInfoBackTestDto.trans_trace_time"  value="${faiPayInfoBackTestDto.trans_trace_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.settle_date" name="faiPayInfoBackTestDto.settle_date"  value="${faiPayInfoBackTestDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_amt</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.settle_amt" name="faiPayInfoBackTestDto.settle_amt"  value="${faiPayInfoBackTestDto.settle_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.settle_cur" name="faiPayInfoBackTestDto.settle_cur"  value="${faiPayInfoBackTestDto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_conver_rate</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.settle_conver_rate" name="faiPayInfoBackTestDto.settle_conver_rate"  value="${faiPayInfoBackTestDto.settle_conver_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mobile</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.mobile" name="faiPayInfoBackTestDto.mobile"  value="${faiPayInfoBackTestDto.mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_type</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.id_type" name="faiPayInfoBackTestDto.id_type"  value="${faiPayInfoBackTestDto.id_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_no</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.id_no" name="faiPayInfoBackTestDto.id_no"  value="${faiPayInfoBackTestDto.id_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_name</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.user_name" name="faiPayInfoBackTestDto.user_name"  value="${faiPayInfoBackTestDto.user_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bind_num</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.bind_num" name="faiPayInfoBackTestDto.bind_num"  value="${faiPayInfoBackTestDto.bind_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.pan" name="faiPayInfoBackTestDto.pan"  value="${faiPayInfoBackTestDto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.card_type" name="faiPayInfoBackTestDto.card_type"  value="${faiPayInfoBackTestDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_id</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.issbank_id" name="faiPayInfoBackTestDto.issbank_id"  value="${faiPayInfoBackTestDto.issbank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_name</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.issbank_name" name="faiPayInfoBackTestDto.issbank_name"  value="${faiPayInfoBackTestDto.issbank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ch_info</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.ch_info" name="faiPayInfoBackTestDto.ch_info"  value="${faiPayInfoBackTestDto.ch_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.account1" name="faiPayInfoBackTestDto.account1"  value="${faiPayInfoBackTestDto.account1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.account2" name="faiPayInfoBackTestDto.account2"  value="${faiPayInfoBackTestDto.account2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.org_order_id" name="faiPayInfoBackTestDto.org_order_id"  value="${faiPayInfoBackTestDto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.create_time" name="faiPayInfoBackTestDto.create_time"  value="${faiPayInfoBackTestDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_time</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.modify_time" name="faiPayInfoBackTestDto.modify_time"  value="${faiPayInfoBackTestDto.modify_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.reserved" name="faiPayInfoBackTestDto.reserved"  value="${faiPayInfoBackTestDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.ext" name="faiPayInfoBackTestDto.ext"  value="${faiPayInfoBackTestDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>csn</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.csn" name="faiPayInfoBackTestDto.csn"  value="${faiPayInfoBackTestDto.csn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.trans_mer_name" name="faiPayInfoBackTestDto.trans_mer_name"  value="${faiPayInfoBackTestDto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.spid" name="faiPayInfoBackTestDto.spid"  value="${faiPayInfoBackTestDto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track2_data</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.track2_data" name="faiPayInfoBackTestDto.track2_data"  value="${faiPayInfoBackTestDto.track2_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track3_data</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.track3_data" name="faiPayInfoBackTestDto.track3_data"  value="${faiPayInfoBackTestDto.track3_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.ip" name="faiPayInfoBackTestDto.ip"  value="${faiPayInfoBackTestDto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reference_no</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.reference_no" name="faiPayInfoBackTestDto.reference_no"  value="${faiPayInfoBackTestDto.reference_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.auth_no" name="faiPayInfoBackTestDto.auth_no"  value="${faiPayInfoBackTestDto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date_transaction</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.date_transaction" name="faiPayInfoBackTestDto.date_transaction"  value="${faiPayInfoBackTestDto.date_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>time_transaction</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.time_transaction" name="faiPayInfoBackTestDto.time_transaction"  value="${faiPayInfoBackTestDto.time_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tracking_no</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.tracking_no" name="faiPayInfoBackTestDto.tracking_no"  value="${faiPayInfoBackTestDto.tracking_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.account2_name" name="faiPayInfoBackTestDto.account2_name"  value="${faiPayInfoBackTestDto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.batch_no" name="faiPayInfoBackTestDto.batch_no"  value="${faiPayInfoBackTestDto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.ext1" name="faiPayInfoBackTestDto.ext1"  value="${faiPayInfoBackTestDto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext2</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.ext2" name="faiPayInfoBackTestDto.ext2"  value="${faiPayInfoBackTestDto.ext2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext3</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.ext3" name="faiPayInfoBackTestDto.ext3"  value="${faiPayInfoBackTestDto.ext3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.create_date" name="faiPayInfoBackTestDto.create_date"  value="${faiPayInfoBackTestDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_date</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.modify_date" name="faiPayInfoBackTestDto.modify_date"  value="${faiPayInfoBackTestDto.modify_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>entry_mode</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.entry_mode" name="faiPayInfoBackTestDto.entry_mode"  value="${faiPayInfoBackTestDto.entry_mode}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.card_no" name="faiPayInfoBackTestDto.card_no"  value="${faiPayInfoBackTestDto.card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_id</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.mer_order_id" name="faiPayInfoBackTestDto.mer_order_id"  value="${faiPayInfoBackTestDto.mer_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.mer_sys_id" name="faiPayInfoBackTestDto.mer_sys_id"  value="${faiPayInfoBackTestDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.sub_mer_id" name="faiPayInfoBackTestDto.sub_mer_id"  value="${faiPayInfoBackTestDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_code</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.resp_code" name="faiPayInfoBackTestDto.resp_code"  value="${faiPayInfoBackTestDto.resp_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_desc</label></th>
								<td>
									<input type="text" id="faiPayInfoBackTestDto.resp_desc" name="faiPayInfoBackTestDto.resp_desc"  value="${faiPayInfoBackTestDto.resp_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>