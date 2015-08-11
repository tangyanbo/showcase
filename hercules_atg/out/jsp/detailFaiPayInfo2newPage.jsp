<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editFaiPayInfo2newFrom" name="editFaiPayInfo2newFrom" method="post" action="editFaiPayInfo2newAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_mer_id" name="faiPayInfo2newDto.trans_mer_id"  value="${faiPayInfo2newDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_ter_id" name="faiPayInfo2newDto.trans_ter_id"  value="${faiPayInfo2newDto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.channel_type" name="faiPayInfo2newDto.channel_type"  value="${faiPayInfo2newDto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_amt" name="faiPayInfo2newDto.trans_amt"  value="${faiPayInfo2newDto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_cur" name="faiPayInfo2newDto.trans_cur"  value="${faiPayInfo2newDto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_time" name="faiPayInfo2newDto.trans_time"  value="${faiPayInfo2newDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_status" name="faiPayInfo2newDto.trans_status"  value="${faiPayInfo2newDto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_type" name="faiPayInfo2newDto.trans_type"  value="${faiPayInfo2newDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.res_code" name="faiPayInfo2newDto.res_code"  value="${faiPayInfo2newDto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_desc</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.res_desc" name="faiPayInfo2newDto.res_desc"  value="${faiPayInfo2newDto.res_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_trace_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_trace_time" name="faiPayInfo2newDto.trans_trace_time"  value="${faiPayInfo2newDto.trans_trace_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.settle_date" name="faiPayInfo2newDto.settle_date"  value="${faiPayInfo2newDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_amt</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.settle_amt" name="faiPayInfo2newDto.settle_amt"  value="${faiPayInfo2newDto.settle_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.settle_cur" name="faiPayInfo2newDto.settle_cur"  value="${faiPayInfo2newDto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_conver_rate</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.settle_conver_rate" name="faiPayInfo2newDto.settle_conver_rate"  value="${faiPayInfo2newDto.settle_conver_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mobile</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.mobile" name="faiPayInfo2newDto.mobile"  value="${faiPayInfo2newDto.mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.id_type" name="faiPayInfo2newDto.id_type"  value="${faiPayInfo2newDto.id_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.id_no" name="faiPayInfo2newDto.id_no"  value="${faiPayInfo2newDto.id_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.user_name" name="faiPayInfo2newDto.user_name"  value="${faiPayInfo2newDto.user_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bind_num</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.bind_num" name="faiPayInfo2newDto.bind_num"  value="${faiPayInfo2newDto.bind_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.pan" name="faiPayInfo2newDto.pan"  value="${faiPayInfo2newDto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.card_type" name="faiPayInfo2newDto.card_type"  value="${faiPayInfo2newDto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.issbank_id" name="faiPayInfo2newDto.issbank_id"  value="${faiPayInfo2newDto.issbank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.issbank_name" name="faiPayInfo2newDto.issbank_name"  value="${faiPayInfo2newDto.issbank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ch_info</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.ch_info" name="faiPayInfo2newDto.ch_info"  value="${faiPayInfo2newDto.ch_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.account1" name="faiPayInfo2newDto.account1"  value="${faiPayInfo2newDto.account1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.account2" name="faiPayInfo2newDto.account2"  value="${faiPayInfo2newDto.account2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.org_order_id" name="faiPayInfo2newDto.org_order_id"  value="${faiPayInfo2newDto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.create_time" name="faiPayInfo2newDto.create_time"  value="${faiPayInfo2newDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.modify_time" name="faiPayInfo2newDto.modify_time"  value="${faiPayInfo2newDto.modify_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.reserved" name="faiPayInfo2newDto.reserved"  value="${faiPayInfo2newDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.ext" name="faiPayInfo2newDto.ext"  value="${faiPayInfo2newDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>csn</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.csn" name="faiPayInfo2newDto.csn"  value="${faiPayInfo2newDto.csn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.trans_mer_name" name="faiPayInfo2newDto.trans_mer_name"  value="${faiPayInfo2newDto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.spid" name="faiPayInfo2newDto.spid"  value="${faiPayInfo2newDto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track2_data</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.track2_data" name="faiPayInfo2newDto.track2_data"  value="${faiPayInfo2newDto.track2_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track3_data</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.track3_data" name="faiPayInfo2newDto.track3_data"  value="${faiPayInfo2newDto.track3_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.ip" name="faiPayInfo2newDto.ip"  value="${faiPayInfo2newDto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reference_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.reference_no" name="faiPayInfo2newDto.reference_no"  value="${faiPayInfo2newDto.reference_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.auth_no" name="faiPayInfo2newDto.auth_no"  value="${faiPayInfo2newDto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date_transaction</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.date_transaction" name="faiPayInfo2newDto.date_transaction"  value="${faiPayInfo2newDto.date_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>time_transaction</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.time_transaction" name="faiPayInfo2newDto.time_transaction"  value="${faiPayInfo2newDto.time_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tracking_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.tracking_no" name="faiPayInfo2newDto.tracking_no"  value="${faiPayInfo2newDto.tracking_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.account2_name" name="faiPayInfo2newDto.account2_name"  value="${faiPayInfo2newDto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.batch_no" name="faiPayInfo2newDto.batch_no"  value="${faiPayInfo2newDto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.ext1" name="faiPayInfo2newDto.ext1"  value="${faiPayInfo2newDto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext2</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.ext2" name="faiPayInfo2newDto.ext2"  value="${faiPayInfo2newDto.ext2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext3</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.ext3" name="faiPayInfo2newDto.ext3"  value="${faiPayInfo2newDto.ext3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.create_date" name="faiPayInfo2newDto.create_date"  value="${faiPayInfo2newDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_date</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.modify_date" name="faiPayInfo2newDto.modify_date"  value="${faiPayInfo2newDto.modify_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>entry_mode</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.entry_mode" name="faiPayInfo2newDto.entry_mode"  value="${faiPayInfo2newDto.entry_mode}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.card_no" name="faiPayInfo2newDto.card_no"  value="${faiPayInfo2newDto.card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.mer_order_id" name="faiPayInfo2newDto.mer_order_id"  value="${faiPayInfo2newDto.mer_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.mer_sys_id" name="faiPayInfo2newDto.mer_sys_id"  value="${faiPayInfo2newDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.sub_mer_id" name="faiPayInfo2newDto.sub_mer_id"  value="${faiPayInfo2newDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_code</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.resp_code" name="faiPayInfo2newDto.resp_code"  value="${faiPayInfo2newDto.resp_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_desc</label></th>
								<td>
									<input type="text" id="faiPayInfo2newDto.resp_desc" name="faiPayInfo2newDto.resp_desc"  value="${faiPayInfo2newDto.resp_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>