<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPayInfo0703From" name="editPayInfo0703From" method="post" action="editPayInfo0703Action.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_mer_id" name="payInfo0703Dto.trans_mer_id"  value="${payInfo0703Dto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_ter_id" name="payInfo0703Dto.trans_ter_id"  value="${payInfo0703Dto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.channel_type" name="payInfo0703Dto.channel_type"  value="${payInfo0703Dto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_amt" name="payInfo0703Dto.trans_amt"  value="${payInfo0703Dto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_cur" name="payInfo0703Dto.trans_cur"  value="${payInfo0703Dto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_time" name="payInfo0703Dto.trans_time"  value="${payInfo0703Dto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_status" name="payInfo0703Dto.trans_status"  value="${payInfo0703Dto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_type" name="payInfo0703Dto.trans_type"  value="${payInfo0703Dto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.res_code" name="payInfo0703Dto.res_code"  value="${payInfo0703Dto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_desc</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.res_desc" name="payInfo0703Dto.res_desc"  value="${payInfo0703Dto.res_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_trace_time</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_trace_time" name="payInfo0703Dto.trans_trace_time"  value="${payInfo0703Dto.trans_trace_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.settle_date" name="payInfo0703Dto.settle_date"  value="${payInfo0703Dto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_amt</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.settle_amt" name="payInfo0703Dto.settle_amt"  value="${payInfo0703Dto.settle_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.settle_cur" name="payInfo0703Dto.settle_cur"  value="${payInfo0703Dto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_conver_rate</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.settle_conver_rate" name="payInfo0703Dto.settle_conver_rate"  value="${payInfo0703Dto.settle_conver_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mobile</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.mobile" name="payInfo0703Dto.mobile"  value="${payInfo0703Dto.mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_type</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.id_type" name="payInfo0703Dto.id_type"  value="${payInfo0703Dto.id_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_no</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.id_no" name="payInfo0703Dto.id_no"  value="${payInfo0703Dto.id_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_name</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.user_name" name="payInfo0703Dto.user_name"  value="${payInfo0703Dto.user_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bind_num</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.bind_num" name="payInfo0703Dto.bind_num"  value="${payInfo0703Dto.bind_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.pan" name="payInfo0703Dto.pan"  value="${payInfo0703Dto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.card_type" name="payInfo0703Dto.card_type"  value="${payInfo0703Dto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_id</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.issbank_id" name="payInfo0703Dto.issbank_id"  value="${payInfo0703Dto.issbank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_name</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.issbank_name" name="payInfo0703Dto.issbank_name"  value="${payInfo0703Dto.issbank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ch_info</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ch_info" name="payInfo0703Dto.ch_info"  value="${payInfo0703Dto.ch_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.account1" name="payInfo0703Dto.account1"  value="${payInfo0703Dto.account1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.account2" name="payInfo0703Dto.account2"  value="${payInfo0703Dto.account2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.org_order_id" name="payInfo0703Dto.org_order_id"  value="${payInfo0703Dto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.create_time" name="payInfo0703Dto.create_time"  value="${payInfo0703Dto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_time</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.modify_time" name="payInfo0703Dto.modify_time"  value="${payInfo0703Dto.modify_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.reserved" name="payInfo0703Dto.reserved"  value="${payInfo0703Dto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ext" name="payInfo0703Dto.ext"  value="${payInfo0703Dto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>csn</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.csn" name="payInfo0703Dto.csn"  value="${payInfo0703Dto.csn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.trans_mer_name" name="payInfo0703Dto.trans_mer_name"  value="${payInfo0703Dto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.spid" name="payInfo0703Dto.spid"  value="${payInfo0703Dto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track2_data</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.track2_data" name="payInfo0703Dto.track2_data"  value="${payInfo0703Dto.track2_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track3_data</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.track3_data" name="payInfo0703Dto.track3_data"  value="${payInfo0703Dto.track3_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ip" name="payInfo0703Dto.ip"  value="${payInfo0703Dto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reference_no</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.reference_no" name="payInfo0703Dto.reference_no"  value="${payInfo0703Dto.reference_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>auth_no</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.auth_no" name="payInfo0703Dto.auth_no"  value="${payInfo0703Dto.auth_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date_transaction</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.date_transaction" name="payInfo0703Dto.date_transaction"  value="${payInfo0703Dto.date_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>time_transaction</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.time_transaction" name="payInfo0703Dto.time_transaction"  value="${payInfo0703Dto.time_transaction}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tracking_no</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.tracking_no" name="payInfo0703Dto.tracking_no"  value="${payInfo0703Dto.tracking_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2_name</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.account2_name" name="payInfo0703Dto.account2_name"  value="${payInfo0703Dto.account2_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.batch_no" name="payInfo0703Dto.batch_no"  value="${payInfo0703Dto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ext1" name="payInfo0703Dto.ext1"  value="${payInfo0703Dto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext2</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ext2" name="payInfo0703Dto.ext2"  value="${payInfo0703Dto.ext2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext3</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ext3" name="payInfo0703Dto.ext3"  value="${payInfo0703Dto.ext3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ic_no</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ic_no" name="payInfo0703Dto.ic_no"  value="${payInfo0703Dto.ic_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ic_data</label></th>
								<td>
									<input type="text" id="payInfo0703Dto.ic_data" name="payInfo0703Dto.ic_data"  value="${payInfo0703Dto.ic_data}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>