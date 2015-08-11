<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAppTractInfoFrom" name="editAppTractInfoFrom" method="post" action="editAppTractInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>app_tract_name</label></th>
								<td>
									<input type="text" id="appTractInfoDto.app_tract_name" name="appTractInfoDto.app_tract_name"  value="${appTractInfoDto.app_tract_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="appTractInfoDto.trans_mer_id" name="appTractInfoDto.trans_mer_id"  value="${appTractInfoDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_tract</label></th>
								<td>
									<input type="text" id="appTractInfoDto.pay_tract" name="appTractInfoDto.pay_tract"  value="${appTractInfoDto.pay_tract}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_rate_cost</label></th>
								<td>
									<input type="text" id="appTractInfoDto.trans_rate_cost" name="appTractInfoDto.trans_rate_cost"  value="${appTractInfoDto.trans_rate_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_lowest_cost</label></th>
								<td>
									<input type="text" id="appTractInfoDto.trans_lowest_cost" name="appTractInfoDto.trans_lowest_cost"  value="${appTractInfoDto.trans_lowest_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_highest_cost</label></th>
								<td>
									<input type="text" id="appTractInfoDto.trans_highest_cost" name="appTractInfoDto.trans_highest_cost"  value="${appTractInfoDto.trans_highest_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bypay_profit</label></th>
								<td>
									<input type="text" id="appTractInfoDto.bypay_profit" name="appTractInfoDto.bypay_profit"  value="${appTractInfoDto.bypay_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="appTractInfoDto.status" name="appTractInfoDto.status"  value="${appTractInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="appTractInfoDto.create_time" name="appTractInfoDto.create_time"  value="${appTractInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="appTractInfoDto.remark" name="appTractInfoDto.remark"  value="${appTractInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="appTractInfoDto.reserved" name="appTractInfoDto.reserved"  value="${appTractInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>per_card_quota</label></th>
								<td>
									<input type="text" id="appTractInfoDto.per_card_quota" name="appTractInfoDto.per_card_quota"  value="${appTractInfoDto.per_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_quota</label></th>
								<td>
									<input type="text" id="appTractInfoDto.card_quota" name="appTractInfoDto.card_quota"  value="${appTractInfoDto.card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>card_count</label></th>
								<td>
									<input type="text" id="appTractInfoDto.card_count" name="appTractInfoDto.card_count"  value="${appTractInfoDto.card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time_begin</label></th>
								<td>
									<input type="text" id="appTractInfoDto.trans_time_begin" name="appTractInfoDto.trans_time_begin"  value="${appTractInfoDto.trans_time_begin}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time_end</label></th>
								<td>
									<input type="text" id="appTractInfoDto.trans_time_end" name="appTractInfoDto.trans_time_end"  value="${appTractInfoDto.trans_time_end}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_type</label></th>
								<td>
									<input type="text" id="appTractInfoDto.tract_type" name="appTractInfoDto.tract_type"  value="${appTractInfoDto.tract_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="appTractInfoDto.terminal_id" name="appTractInfoDto.terminal_id"  value="${appTractInfoDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>spid</label></th>
								<td>
									<input type="text" id="appTractInfoDto.spid" name="appTractInfoDto.spid"  value="${appTractInfoDto.spid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>