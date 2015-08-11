<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTractInfoFrom" name="editTractInfoFrom" method="post" action="editTractInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>tract_name</label></th>
								<td>
									<input type="text" id="tractInfoDto.tract_name" name="tractInfoDto.tract_name"  value="${tractInfoDto.tract_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="tractInfoDto.trans_mer_id" name="tractInfoDto.trans_mer_id"  value="${tractInfoDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_agency</label></th>
								<td>
									<input type="text" id="tractInfoDto.tract_agency" name="tractInfoDto.tract_agency"  value="${tractInfoDto.tract_agency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>rates_type</label></th>
								<td>
									<input type="text" id="tractInfoDto.rates_type" name="tractInfoDto.rates_type"  value="${tractInfoDto.rates_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>acq_agency_id</label></th>
								<td>
									<input type="text" id="tractInfoDto.acq_agency_id" name="tractInfoDto.acq_agency_id"  value="${tractInfoDto.acq_agency_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>acq_agency_name</label></th>
								<td>
									<input type="text" id="tractInfoDto.acq_agency_name" name="tractInfoDto.acq_agency_name"  value="${tractInfoDto.acq_agency_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_tract</label></th>
								<td>
									<input type="text" id="tractInfoDto.pay_tract" name="tractInfoDto.pay_tract"  value="${tractInfoDto.pay_tract}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_rate</label></th>
								<td>
									<input type="text" id="tractInfoDto.tract_rate" name="tractInfoDto.tract_rate"  value="${tractInfoDto.tract_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_highest_fee</label></th>
								<td>
									<input type="text" id="tractInfoDto.tract_highest_fee" name="tractInfoDto.tract_highest_fee"  value="${tractInfoDto.tract_highest_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>credit_rate_cost</label></th>
								<td>
									<input type="text" id="tractInfoDto.credit_rate_cost" name="tractInfoDto.credit_rate_cost"  value="${tractInfoDto.credit_rate_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>debit_rate_cost</label></th>
								<td>
									<input type="text" id="tractInfoDto.debit_rate_cost" name="tractInfoDto.debit_rate_cost"  value="${tractInfoDto.debit_rate_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>credit_highest_cost</label></th>
								<td>
									<input type="text" id="tractInfoDto.credit_highest_cost" name="tractInfoDto.credit_highest_cost"  value="${tractInfoDto.credit_highest_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>debit_highest_cost</label></th>
								<td>
									<input type="text" id="tractInfoDto.debit_highest_cost" name="tractInfoDto.debit_highest_cost"  value="${tractInfoDto.debit_highest_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>lowest_cost</label></th>
								<td>
									<input type="text" id="tractInfoDto.lowest_cost" name="tractInfoDto.lowest_cost"  value="${tractInfoDto.lowest_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bypay_profit</label></th>
								<td>
									<input type="text" id="tractInfoDto.bypay_profit" name="tractInfoDto.bypay_profit"  value="${tractInfoDto.bypay_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="tractInfoDto.status" name="tractInfoDto.status"  value="${tractInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="tractInfoDto.create_time" name="tractInfoDto.create_time"  value="${tractInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>per_card_quota</label></th>
								<td>
									<input type="text" id="tractInfoDto.per_card_quota" name="tractInfoDto.per_card_quota"  value="${tractInfoDto.per_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_quota</label></th>
								<td>
									<input type="text" id="tractInfoDto.card_quota" name="tractInfoDto.card_quota"  value="${tractInfoDto.card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_count</label></th>
								<td>
									<input type="text" id="tractInfoDto.card_count" name="tractInfoDto.card_count"  value="${tractInfoDto.card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="tractInfoDto.remark" name="tractInfoDto.remark"  value="${tractInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="tractInfoDto.reserved" name="tractInfoDto.reserved"  value="${tractInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time_begin</label></th>
								<td>
									<input type="text" id="tractInfoDto.trans_time_begin" name="tractInfoDto.trans_time_begin"  value="${tractInfoDto.trans_time_begin}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time_end</label></th>
								<td>
									<input type="text" id="tractInfoDto.trans_time_end" name="tractInfoDto.trans_time_end"  value="${tractInfoDto.trans_time_end}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mcc</label></th>
								<td>
									<input type="text" id="tractInfoDto.mcc" name="tractInfoDto.mcc"  value="${tractInfoDto.mcc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>night_flag</label></th>
								<td>
									<input type="text" id="tractInfoDto.night_flag" name="tractInfoDto.night_flag"  value="${tractInfoDto.night_flag}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>integral</label></th>
								<td>
									<input type="text" id="tractInfoDto.integral" name="tractInfoDto.integral"  value="${tractInfoDto.integral}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_quota</label></th>
								<td>
									<input type="text" id="tractInfoDto.tract_quota" name="tractInfoDto.tract_quota"  value="${tractInfoDto.tract_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_flag</label></th>
								<td>
									<input type="text" id="tractInfoDto.tract_flag" name="tractInfoDto.tract_flag"  value="${tractInfoDto.tract_flag}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="tractInfoDto.terminal_id" name="tractInfoDto.terminal_id"  value="${tractInfoDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="tractInfoDto.spid" name="tractInfoDto.spid"  value="${tractInfoDto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_flag</label></th>
								<td>
									<input type="text" id="tractInfoDto.card_flag" name="tractInfoDto.card_flag"  value="${tractInfoDto.card_flag}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_num</label></th>
								<td>
									<input type="text" id="tractInfoDto.tract_num" name="tractInfoDto.tract_num"  value="${tractInfoDto.tract_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>