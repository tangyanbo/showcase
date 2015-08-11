<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSucPayInfoNewFrom" name="editSucPayInfoNewFrom" method="post" action="editSucPayInfoNewAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_mer_id" name="sucPayInfoNewDto.trans_mer_id"  value="${sucPayInfoNewDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_ter_id" name="sucPayInfoNewDto.trans_ter_id"  value="${sucPayInfoNewDto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.channel_type" name="sucPayInfoNewDto.channel_type"  value="${sucPayInfoNewDto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_amt" name="sucPayInfoNewDto.trans_amt"  value="${sucPayInfoNewDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_cur" name="sucPayInfoNewDto.trans_cur"  value="${sucPayInfoNewDto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_time" name="sucPayInfoNewDto.trans_time"  value="${sucPayInfoNewDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_status" name="sucPayInfoNewDto.trans_status"  value="${sucPayInfoNewDto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_type" name="sucPayInfoNewDto.trans_type"  value="${sucPayInfoNewDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.res_code" name="sucPayInfoNewDto.res_code"  value="${sucPayInfoNewDto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_desc</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.res_desc" name="sucPayInfoNewDto.res_desc"  value="${sucPayInfoNewDto.res_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_trace_time</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_trace_time" name="sucPayInfoNewDto.trans_trace_time"  value="${sucPayInfoNewDto.trans_trace_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.settle_date" name="sucPayInfoNewDto.settle_date"  value="${sucPayInfoNewDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_amt</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.settle_amt" name="sucPayInfoNewDto.settle_amt"  value="${sucPayInfoNewDto.settle_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.settle_cur" name="sucPayInfoNewDto.settle_cur"  value="${sucPayInfoNewDto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_conver_rate</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.settle_conver_rate" name="sucPayInfoNewDto.settle_conver_rate"  value="${sucPayInfoNewDto.settle_conver_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mobile</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.mobile" name="sucPayInfoNewDto.mobile"  value="${sucPayInfoNewDto.mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_type</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.id_type" name="sucPayInfoNewDto.id_type"  value="${sucPayInfoNewDto.id_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_no</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.id_no" name="sucPayInfoNewDto.id_no"  value="${sucPayInfoNewDto.id_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_name</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.user_name" name="sucPayInfoNewDto.user_name"  value="${sucPayInfoNewDto.user_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bind_num</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.bind_num" name="sucPayInfoNewDto.bind_num"  value="${sucPayInfoNewDto.bind_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.pan" name="sucPayInfoNewDto.pan"  value="${sucPayInfoNewDto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.card_type" name="sucPayInfoNewDto.card_type"  value="${sucPayInfoNewDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_id</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.issbank_id" name="sucPayInfoNewDto.issbank_id"  value="${sucPayInfoNewDto.issbank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_name</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.issbank_name" name="sucPayInfoNewDto.issbank_name"  value="${sucPayInfoNewDto.issbank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ch_info</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.ch_info" name="sucPayInfoNewDto.ch_info"  value="${sucPayInfoNewDto.ch_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.account1" name="sucPayInfoNewDto.account1"  value="${sucPayInfoNewDto.account1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.account2" name="sucPayInfoNewDto.account2"  value="${sucPayInfoNewDto.account2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.org_order_id" name="sucPayInfoNewDto.org_order_id"  value="${sucPayInfoNewDto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.create_time" name="sucPayInfoNewDto.create_time"  value="${sucPayInfoNewDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_time</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.modify_time" name="sucPayInfoNewDto.modify_time"  value="${sucPayInfoNewDto.modify_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.reserved" name="sucPayInfoNewDto.reserved"  value="${sucPayInfoNewDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.ext" name="sucPayInfoNewDto.ext"  value="${sucPayInfoNewDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>csn</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.csn" name="sucPayInfoNewDto.csn"  value="${sucPayInfoNewDto.csn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.trans_mer_name" name="sucPayInfoNewDto.trans_mer_name"  value="${sucPayInfoNewDto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.spid" name="sucPayInfoNewDto.spid"  value="${sucPayInfoNewDto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track2_data</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.track2_data" name="sucPayInfoNewDto.track2_data"  value="${sucPayInfoNewDto.track2_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track3_data</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.track3_data" name="sucPayInfoNewDto.track3_data"  value="${sucPayInfoNewDto.track3_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.ip" name="sucPayInfoNewDto.ip"  value="${sucPayInfoNewDto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reference_no</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.reference_no" name="sucPayInfoNewDto.reference_no"  value="${sucPayInfoNewDto.reference_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.auth_no" name="sucPayInfoNewDto.auth_no"  value="${sucPayInfoNewDto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date_transaction</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.date_transaction" name="sucPayInfoNewDto.date_transaction"  value="${sucPayInfoNewDto.date_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>time_transaction</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.time_transaction" name="sucPayInfoNewDto.time_transaction"  value="${sucPayInfoNewDto.time_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tracking_no</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.tracking_no" name="sucPayInfoNewDto.tracking_no"  value="${sucPayInfoNewDto.tracking_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.account2_name" name="sucPayInfoNewDto.account2_name"  value="${sucPayInfoNewDto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.batch_no" name="sucPayInfoNewDto.batch_no"  value="${sucPayInfoNewDto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.ext1" name="sucPayInfoNewDto.ext1"  value="${sucPayInfoNewDto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext2</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.ext2" name="sucPayInfoNewDto.ext2"  value="${sucPayInfoNewDto.ext2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext3</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.ext3" name="sucPayInfoNewDto.ext3"  value="${sucPayInfoNewDto.ext3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.create_date" name="sucPayInfoNewDto.create_date"  value="${sucPayInfoNewDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_date</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.modify_date" name="sucPayInfoNewDto.modify_date"  value="${sucPayInfoNewDto.modify_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>entry_mode</label></th>
								<td>
									<input type="text" id="sucPayInfoNewDto.entry_mode" name="sucPayInfoNewDto.entry_mode"  value="${sucPayInfoNewDto.entry_mode}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>