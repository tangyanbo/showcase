<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editFaiPayInfo2new1102From" name="editFaiPayInfo2new1102From" method="post" action="editFaiPayInfo2new1102Action.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_mer_id" name="faiPayInfo2new1102Dto.trans_mer_id"  value="${faiPayInfo2new1102Dto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_ter_id" name="faiPayInfo2new1102Dto.trans_ter_id"  value="${faiPayInfo2new1102Dto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.channel_type" name="faiPayInfo2new1102Dto.channel_type"  value="${faiPayInfo2new1102Dto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_amt" name="faiPayInfo2new1102Dto.trans_amt"  value="${faiPayInfo2new1102Dto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_cur" name="faiPayInfo2new1102Dto.trans_cur"  value="${faiPayInfo2new1102Dto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_time" name="faiPayInfo2new1102Dto.trans_time"  value="${faiPayInfo2new1102Dto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_status" name="faiPayInfo2new1102Dto.trans_status"  value="${faiPayInfo2new1102Dto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_type" name="faiPayInfo2new1102Dto.trans_type"  value="${faiPayInfo2new1102Dto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.res_code" name="faiPayInfo2new1102Dto.res_code"  value="${faiPayInfo2new1102Dto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_desc</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.res_desc" name="faiPayInfo2new1102Dto.res_desc"  value="${faiPayInfo2new1102Dto.res_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_trace_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_trace_time" name="faiPayInfo2new1102Dto.trans_trace_time"  value="${faiPayInfo2new1102Dto.trans_trace_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.settle_date" name="faiPayInfo2new1102Dto.settle_date"  value="${faiPayInfo2new1102Dto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_amt</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.settle_amt" name="faiPayInfo2new1102Dto.settle_amt"  value="${faiPayInfo2new1102Dto.settle_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.settle_cur" name="faiPayInfo2new1102Dto.settle_cur"  value="${faiPayInfo2new1102Dto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_conver_rate</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.settle_conver_rate" name="faiPayInfo2new1102Dto.settle_conver_rate"  value="${faiPayInfo2new1102Dto.settle_conver_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mobile</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.mobile" name="faiPayInfo2new1102Dto.mobile"  value="${faiPayInfo2new1102Dto.mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.id_type" name="faiPayInfo2new1102Dto.id_type"  value="${faiPayInfo2new1102Dto.id_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.id_no" name="faiPayInfo2new1102Dto.id_no"  value="${faiPayInfo2new1102Dto.id_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.user_name" name="faiPayInfo2new1102Dto.user_name"  value="${faiPayInfo2new1102Dto.user_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bind_num</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.bind_num" name="faiPayInfo2new1102Dto.bind_num"  value="${faiPayInfo2new1102Dto.bind_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.pan" name="faiPayInfo2new1102Dto.pan"  value="${faiPayInfo2new1102Dto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.card_type" name="faiPayInfo2new1102Dto.card_type"  value="${faiPayInfo2new1102Dto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.issbank_id" name="faiPayInfo2new1102Dto.issbank_id"  value="${faiPayInfo2new1102Dto.issbank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.issbank_name" name="faiPayInfo2new1102Dto.issbank_name"  value="${faiPayInfo2new1102Dto.issbank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ch_info</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.ch_info" name="faiPayInfo2new1102Dto.ch_info"  value="${faiPayInfo2new1102Dto.ch_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.account1" name="faiPayInfo2new1102Dto.account1"  value="${faiPayInfo2new1102Dto.account1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.account2" name="faiPayInfo2new1102Dto.account2"  value="${faiPayInfo2new1102Dto.account2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.org_order_id" name="faiPayInfo2new1102Dto.org_order_id"  value="${faiPayInfo2new1102Dto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.create_time" name="faiPayInfo2new1102Dto.create_time"  value="${faiPayInfo2new1102Dto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_time</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.modify_time" name="faiPayInfo2new1102Dto.modify_time"  value="${faiPayInfo2new1102Dto.modify_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.reserved" name="faiPayInfo2new1102Dto.reserved"  value="${faiPayInfo2new1102Dto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.ext" name="faiPayInfo2new1102Dto.ext"  value="${faiPayInfo2new1102Dto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>csn</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.csn" name="faiPayInfo2new1102Dto.csn"  value="${faiPayInfo2new1102Dto.csn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.trans_mer_name" name="faiPayInfo2new1102Dto.trans_mer_name"  value="${faiPayInfo2new1102Dto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.spid" name="faiPayInfo2new1102Dto.spid"  value="${faiPayInfo2new1102Dto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track2_data</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.track2_data" name="faiPayInfo2new1102Dto.track2_data"  value="${faiPayInfo2new1102Dto.track2_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track3_data</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.track3_data" name="faiPayInfo2new1102Dto.track3_data"  value="${faiPayInfo2new1102Dto.track3_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.ip" name="faiPayInfo2new1102Dto.ip"  value="${faiPayInfo2new1102Dto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reference_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.reference_no" name="faiPayInfo2new1102Dto.reference_no"  value="${faiPayInfo2new1102Dto.reference_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.auth_no" name="faiPayInfo2new1102Dto.auth_no"  value="${faiPayInfo2new1102Dto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date_transaction</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.date_transaction" name="faiPayInfo2new1102Dto.date_transaction"  value="${faiPayInfo2new1102Dto.date_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>time_transaction</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.time_transaction" name="faiPayInfo2new1102Dto.time_transaction"  value="${faiPayInfo2new1102Dto.time_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tracking_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.tracking_no" name="faiPayInfo2new1102Dto.tracking_no"  value="${faiPayInfo2new1102Dto.tracking_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.account2_name" name="faiPayInfo2new1102Dto.account2_name"  value="${faiPayInfo2new1102Dto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.batch_no" name="faiPayInfo2new1102Dto.batch_no"  value="${faiPayInfo2new1102Dto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.ext1" name="faiPayInfo2new1102Dto.ext1"  value="${faiPayInfo2new1102Dto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext2</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.ext2" name="faiPayInfo2new1102Dto.ext2"  value="${faiPayInfo2new1102Dto.ext2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext3</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.ext3" name="faiPayInfo2new1102Dto.ext3"  value="${faiPayInfo2new1102Dto.ext3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.create_date" name="faiPayInfo2new1102Dto.create_date"  value="${faiPayInfo2new1102Dto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_date</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.modify_date" name="faiPayInfo2new1102Dto.modify_date"  value="${faiPayInfo2new1102Dto.modify_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>entry_mode</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.entry_mode" name="faiPayInfo2new1102Dto.entry_mode"  value="${faiPayInfo2new1102Dto.entry_mode}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_no</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.card_no" name="faiPayInfo2new1102Dto.card_no"  value="${faiPayInfo2new1102Dto.card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.mer_order_id" name="faiPayInfo2new1102Dto.mer_order_id"  value="${faiPayInfo2new1102Dto.mer_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.mer_sys_id" name="faiPayInfo2new1102Dto.mer_sys_id"  value="${faiPayInfo2new1102Dto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.sub_mer_id" name="faiPayInfo2new1102Dto.sub_mer_id"  value="${faiPayInfo2new1102Dto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_code</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.resp_code" name="faiPayInfo2new1102Dto.resp_code"  value="${faiPayInfo2new1102Dto.resp_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_desc</label></th>
								<td>
									<input type="text" id="faiPayInfo2new1102Dto.resp_desc" name="faiPayInfo2new1102Dto.resp_desc"  value="${faiPayInfo2new1102Dto.resp_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>