<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSucOrderInfoV2From" name="editSucOrderInfoV2From" method="post" action="editSucOrderInfoV2Action.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_mer_id" name="sucOrderInfoV2Dto.trans_mer_id"  value="${sucOrderInfoV2Dto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_ter_id</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_ter_id" name="sucOrderInfoV2Dto.trans_ter_id"  value="${sucOrderInfoV2Dto.trans_ter_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.channel_type" name="sucOrderInfoV2Dto.channel_type"  value="${sucOrderInfoV2Dto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amt</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_amt" name="sucOrderInfoV2Dto.trans_amt"  value="${sucOrderInfoV2Dto.trans_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_cur</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_cur" name="sucOrderInfoV2Dto.trans_cur"  value="${sucOrderInfoV2Dto.trans_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_time" name="sucOrderInfoV2Dto.trans_time"  value="${sucOrderInfoV2Dto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_status</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_status" name="sucOrderInfoV2Dto.trans_status"  value="${sucOrderInfoV2Dto.trans_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_type" name="sucOrderInfoV2Dto.trans_type"  value="${sucOrderInfoV2Dto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_code</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.res_code" name="sucOrderInfoV2Dto.res_code"  value="${sucOrderInfoV2Dto.res_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>res_desc</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.res_desc" name="sucOrderInfoV2Dto.res_desc"  value="${sucOrderInfoV2Dto.res_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_qid</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_qid" name="sucOrderInfoV2Dto.trans_qid"  value="${sucOrderInfoV2Dto.trans_qid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_trace_number</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_trace_number" name="sucOrderInfoV2Dto.trans_trace_number"  value="${sucOrderInfoV2Dto.trans_trace_number}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_trace_time</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_trace_time" name="sucOrderInfoV2Dto.trans_trace_time"  value="${sucOrderInfoV2Dto.trans_trace_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.settle_date" name="sucOrderInfoV2Dto.settle_date"  value="${sucOrderInfoV2Dto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_amt</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.settle_amt" name="sucOrderInfoV2Dto.settle_amt"  value="${sucOrderInfoV2Dto.settle_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_cur</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.settle_cur" name="sucOrderInfoV2Dto.settle_cur"  value="${sucOrderInfoV2Dto.settle_cur}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_conver_rate</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.settle_conver_rate" name="sucOrderInfoV2Dto.settle_conver_rate"  value="${sucOrderInfoV2Dto.settle_conver_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mobile</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.mobile" name="sucOrderInfoV2Dto.mobile"  value="${sucOrderInfoV2Dto.mobile}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_type</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.id_type" name="sucOrderInfoV2Dto.id_type"  value="${sucOrderInfoV2Dto.id_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>id_no</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.id_no" name="sucOrderInfoV2Dto.id_no"  value="${sucOrderInfoV2Dto.id_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_name</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.user_name" name="sucOrderInfoV2Dto.user_name"  value="${sucOrderInfoV2Dto.user_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bind_num</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.bind_num" name="sucOrderInfoV2Dto.bind_num"  value="${sucOrderInfoV2Dto.bind_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pan</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.pan" name="sucOrderInfoV2Dto.pan"  value="${sucOrderInfoV2Dto.pan}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_type</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.card_type" name="sucOrderInfoV2Dto.card_type"  value="${sucOrderInfoV2Dto.card_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_id</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.issbank_id" name="sucOrderInfoV2Dto.issbank_id"  value="${sucOrderInfoV2Dto.issbank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>issbank_name</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.issbank_name" name="sucOrderInfoV2Dto.issbank_name"  value="${sucOrderInfoV2Dto.issbank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ch_info</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.ch_info" name="sucOrderInfoV2Dto.ch_info"  value="${sucOrderInfoV2Dto.ch_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.account1" name="sucOrderInfoV2Dto.account1"  value="${sucOrderInfoV2Dto.account1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account2</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.account2" name="sucOrderInfoV2Dto.account2"  value="${sucOrderInfoV2Dto.account2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_order_id</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.org_order_id" name="sucOrderInfoV2Dto.org_order_id"  value="${sucOrderInfoV2Dto.org_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.create_time" name="sucOrderInfoV2Dto.create_time"  value="${sucOrderInfoV2Dto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>modify_time</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.modify_time" name="sucOrderInfoV2Dto.modify_time"  value="${sucOrderInfoV2Dto.modify_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.reserved" name="sucOrderInfoV2Dto.reserved"  value="${sucOrderInfoV2Dto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.ext" name="sucOrderInfoV2Dto.ext"  value="${sucOrderInfoV2Dto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>csn</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.csn" name="sucOrderInfoV2Dto.csn"  value="${sucOrderInfoV2Dto.csn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_name</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.trans_mer_name" name="sucOrderInfoV2Dto.trans_mer_name"  value="${sucOrderInfoV2Dto.trans_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="sucOrderInfoV2Dto.spid" name="sucOrderInfoV2Dto.spid"  value="${sucOrderInfoV2Dto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>