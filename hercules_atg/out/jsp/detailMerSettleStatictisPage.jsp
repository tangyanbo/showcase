<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerSettleStatictisFrom" name="editMerSettleStatictisFrom" method="post" action="editMerSettleStatictisAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mid</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.mid" name="merSettleStatictisDto.mid"  value="${merSettleStatictisDto.mid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.mer_type" name="merSettleStatictisDto.mer_type"  value="${merSettleStatictisDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.mer_sys_id" name="merSettleStatictisDto.mer_sys_id"  value="${merSettleStatictisDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_name</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.mer_name" name="merSettleStatictisDto.mer_name"  value="${merSettleStatictisDto.mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_num</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.account_num" name="merSettleStatictisDto.account_num"  value="${merSettleStatictisDto.account_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_name</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.account_name" name="merSettleStatictisDto.account_name"  value="${merSettleStatictisDto.account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_agency_id</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.account_agency_id" name="merSettleStatictisDto.account_agency_id"  value="${merSettleStatictisDto.account_agency_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.settle_date" name="merSettleStatictisDto.settle_date"  value="${merSettleStatictisDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_amt</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.sum_amt" name="merSettleStatictisDto.sum_amt"  value="${merSettleStatictisDto.sum_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_trans_fee</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.sum_trans_fee" name="merSettleStatictisDto.sum_trans_fee"  value="${merSettleStatictisDto.sum_trans_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_amt</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.clear_amt" name="merSettleStatictisDto.clear_amt"  value="${merSettleStatictisDto.clear_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.create_date" name="merSettleStatictisDto.create_date"  value="${merSettleStatictisDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.create_time" name="merSettleStatictisDto.create_time"  value="${merSettleStatictisDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_status</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.clear_status" name="merSettleStatictisDto.clear_status"  value="${merSettleStatictisDto.clear_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_order_id</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.clear_order_id" name="merSettleStatictisDto.clear_order_id"  value="${merSettleStatictisDto.clear_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>faile_amt</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.faile_amt" name="merSettleStatictisDto.faile_amt"  value="${merSettleStatictisDto.faile_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bp_serial_number</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.bp_serial_number" name="merSettleStatictisDto.bp_serial_number"  value="${merSettleStatictisDto.bp_serial_number}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>count_fee</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.count_fee" name="merSettleStatictisDto.count_fee"  value="${merSettleStatictisDto.count_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_desc</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.clear_desc" name="merSettleStatictisDto.clear_desc"  value="${merSettleStatictisDto.clear_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.reserved" name="merSettleStatictisDto.reserved"  value="${merSettleStatictisDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>stop_clear_amt</label></th>
								<td>
									<input type="text" id="merSettleStatictisDto.stop_clear_amt" name="merSettleStatictisDto.stop_clear_amt"  value="${merSettleStatictisDto.stop_clear_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>