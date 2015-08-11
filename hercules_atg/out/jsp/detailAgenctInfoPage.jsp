<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgenctInfoFrom" name="editAgenctInfoFrom" method="post" action="editAgenctInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>agent_name</label></th>
								<td>
									<input type="text" id="agenctInfoDto.agent_name" name="agenctInfoDto.agent_name"  value="${agenctInfoDto.agent_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reg_no</label></th>
								<td>
									<input type="text" id="agenctInfoDto.reg_no" name="agenctInfoDto.reg_no"  value="${agenctInfoDto.reg_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tax_no</label></th>
								<td>
									<input type="text" id="agenctInfoDto.tax_no" name="agenctInfoDto.tax_no"  value="${agenctInfoDto.tax_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reg_addr</label></th>
								<td>
									<input type="text" id="agenctInfoDto.reg_addr" name="agenctInfoDto.reg_addr"  value="${agenctInfoDto.reg_addr}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>region</label></th>
								<td>
									<input type="text" id="agenctInfoDto.region" name="agenctInfoDto.region"  value="${agenctInfoDto.region}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_name</label></th>
								<td>
									<input type="text" id="agenctInfoDto.sett_account_name" name="agenctInfoDto.sett_account_name"  value="${agenctInfoDto.sett_account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_no</label></th>
								<td>
									<input type="text" id="agenctInfoDto.sett_account_no" name="agenctInfoDto.sett_account_no"  value="${agenctInfoDto.sett_account_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_agency</label></th>
								<td>
									<input type="text" id="agenctInfoDto.sett_agency" name="agenctInfoDto.sett_agency"  value="${agenctInfoDto.sett_agency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_acc_type</label></th>
								<td>
									<input type="text" id="agenctInfoDto.sett_acc_type" name="agenctInfoDto.sett_acc_type"  value="${agenctInfoDto.sett_acc_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="agenctInfoDto.mer_sys_id" name="agenctInfoDto.mer_sys_id"  value="${agenctInfoDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>level</label></th>
								<td>
									<input type="text" id="agenctInfoDto.level" name="agenctInfoDto.level"  value="${agenctInfoDto.level}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>super_agent_id</label></th>
								<td>
									<input type="text" id="agenctInfoDto.super_agent_id" name="agenctInfoDto.super_agent_id"  value="${agenctInfoDto.super_agent_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bill_cycle</label></th>
								<td>
									<input type="text" id="agenctInfoDto.bill_cycle" name="agenctInfoDto.bill_cycle"  value="${agenctInfoDto.bill_cycle}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_type</label></th>
								<td>
									<input type="text" id="agenctInfoDto.terminal_type" name="agenctInfoDto.terminal_type"  value="${agenctInfoDto.terminal_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bus_type</label></th>
								<td>
									<input type="text" id="agenctInfoDto.bus_type" name="agenctInfoDto.bus_type"  value="${agenctInfoDto.bus_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="agenctInfoDto.status" name="agenctInfoDto.status"  value="${agenctInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="agenctInfoDto.create_time" name="agenctInfoDto.create_time"  value="${agenctInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="agenctInfoDto.remark" name="agenctInfoDto.remark"  value="${agenctInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="agenctInfoDto.reserved" name="agenctInfoDto.reserved"  value="${agenctInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>logo</label></th>
								<td>
									<input type="text" id="agenctInfoDto.logo" name="agenctInfoDto.logo"  value="${agenctInfoDto.logo}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>color</label></th>
								<td>
									<input type="text" id="agenctInfoDto.color" name="agenctInfoDto.color"  value="${agenctInfoDto.color}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_rate_1</label></th>
								<td>
									<input type="text" id="agenctInfoDto.agent_rate_1" name="agenctInfoDto.agent_rate_1"  value="${agenctInfoDto.agent_rate_1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_highest_fee</label></th>
								<td>
									<input type="text" id="agenctInfoDto.agent_highest_fee" name="agenctInfoDto.agent_highest_fee"  value="${agenctInfoDto.agent_highest_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_profit_rate</label></th>
								<td>
									<input type="text" id="agenctInfoDto.agent_profit_rate" name="agenctInfoDto.agent_profit_rate"  value="${agenctInfoDto.agent_profit_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_rate_2</label></th>
								<td>
									<input type="text" id="agenctInfoDto.agent_rate_2" name="agenctInfoDto.agent_rate_2"  value="${agenctInfoDto.agent_rate_2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>