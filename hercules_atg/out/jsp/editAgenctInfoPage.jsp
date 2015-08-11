<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgenctInfoFrom" name="editAgenctInfoFrom" method="post" action="editAgenctInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="agenctInfoDto.agent_id" name="agenctInfoDto.agent_id" value="${agenctInfoDto.agent_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>agent_name</label></th>
									<td>
										<input type="text" id="agenctInfoDto.agent_name" name="agenctInfoDto.agent_name" value="${agenctInfoDto.agent_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_name不能为空',missingMessage:'agent_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reg_no</label></th>
									<td>
										<input type="text" id="agenctInfoDto.reg_no" name="agenctInfoDto.reg_no" value="${agenctInfoDto.reg_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reg_no不能为空',missingMessage:'reg_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>tax_no</label></th>
									<td>
										<input type="text" id="agenctInfoDto.tax_no" name="agenctInfoDto.tax_no" value="${agenctInfoDto.tax_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'tax_no不能为空',missingMessage:'tax_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reg_addr</label></th>
									<td>
										<input type="text" id="agenctInfoDto.reg_addr" name="agenctInfoDto.reg_addr" value="${agenctInfoDto.reg_addr}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reg_addr不能为空',missingMessage:'reg_addr不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>region</label></th>
									<td>
										<input type="text" id="agenctInfoDto.region" name="agenctInfoDto.region" value="${agenctInfoDto.region}" class="easyui-validatebox" data-options="required:true,invalidMessage:'region不能为空',missingMessage:'region不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_account_name</label></th>
									<td>
										<input type="text" id="agenctInfoDto.sett_account_name" name="agenctInfoDto.sett_account_name" value="${agenctInfoDto.sett_account_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_account_name不能为空',missingMessage:'sett_account_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_account_no</label></th>
									<td>
										<input type="text" id="agenctInfoDto.sett_account_no" name="agenctInfoDto.sett_account_no" value="${agenctInfoDto.sett_account_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_account_no不能为空',missingMessage:'sett_account_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_agency</label></th>
									<td>
										<input type="text" id="agenctInfoDto.sett_agency" name="agenctInfoDto.sett_agency" value="${agenctInfoDto.sett_agency}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_agency不能为空',missingMessage:'sett_agency不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sett_acc_type</label></th>
									<td>
										<input type="text" id="agenctInfoDto.sett_acc_type" name="agenctInfoDto.sett_acc_type" value="${agenctInfoDto.sett_acc_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sett_acc_type不能为空',missingMessage:'sett_acc_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="agenctInfoDto.mer_sys_id" name="agenctInfoDto.mer_sys_id" value="${agenctInfoDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>level</label></th>
									<td>
										<input type="text" id="agenctInfoDto.level" name="agenctInfoDto.level" value="${agenctInfoDto.level}" class="easyui-validatebox" data-options="required:true,invalidMessage:'level不能为空',missingMessage:'level不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_agent_id</label></th>
									<td>
										<input type="text" id="agenctInfoDto.super_agent_id" name="agenctInfoDto.super_agent_id" value="${agenctInfoDto.super_agent_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'super_agent_id必须为数字',missingMessage:'super_agent_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bill_cycle</label></th>
									<td>
										<input type="text" id="agenctInfoDto.bill_cycle" name="agenctInfoDto.bill_cycle" value="${agenctInfoDto.bill_cycle}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bill_cycle不能为空',missingMessage:'bill_cycle不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>terminal_type</label></th>
									<td>
										<input type="text" id="agenctInfoDto.terminal_type" name="agenctInfoDto.terminal_type" value="${agenctInfoDto.terminal_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_type不能为空',missingMessage:'terminal_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bus_type</label></th>
									<td>
										<input type="text" id="agenctInfoDto.bus_type" name="agenctInfoDto.bus_type" value="${agenctInfoDto.bus_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_type不能为空',missingMessage:'bus_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="agenctInfoDto.status" name="agenctInfoDto.status" value="${agenctInfoDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="agenctInfoDto.create_time" name="agenctInfoDto.create_time" value="${agenctInfoDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="agenctInfoDto.remark" name="agenctInfoDto.remark" value="${agenctInfoDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="agenctInfoDto.reserved" name="agenctInfoDto.reserved" value="${agenctInfoDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>logo</label></th>
									<td>
										<input type="text" id="agenctInfoDto.logo" name="agenctInfoDto.logo" value="${agenctInfoDto.logo}" class="easyui-validatebox" data-options="required:true,invalidMessage:'logo不能为空',missingMessage:'logo不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>color</label></th>
									<td>
										<input type="text" id="agenctInfoDto.color" name="agenctInfoDto.color" value="${agenctInfoDto.color}" class="easyui-validatebox" data-options="required:true,invalidMessage:'color不能为空',missingMessage:'color不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_rate_1</label></th>
									<td>
										<input type="text" id="agenctInfoDto.agent_rate_1" name="agenctInfoDto.agent_rate_1" value="${agenctInfoDto.agent_rate_1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_rate_1不能为空',missingMessage:'agent_rate_1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_highest_fee</label></th>
									<td>
										<input type="text" id="agenctInfoDto.agent_highest_fee" name="agenctInfoDto.agent_highest_fee" value="${agenctInfoDto.agent_highest_fee}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_highest_fee不能为空',missingMessage:'agent_highest_fee不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_profit_rate</label></th>
									<td>
										<input type="text" id="agenctInfoDto.agent_profit_rate" name="agenctInfoDto.agent_profit_rate" value="${agenctInfoDto.agent_profit_rate}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_profit_rate不能为空',missingMessage:'agent_profit_rate不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_rate_2</label></th>
									<td>
										<input type="text" id="agenctInfoDto.agent_rate_2" name="agenctInfoDto.agent_rate_2" value="${agenctInfoDto.agent_rate_2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_rate_2不能为空',missingMessage:'agent_rate_2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delAgenctInfoFrom" name="delAgenctInfoFrom" method="post" action="delAgenctInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${agenctInfoDto.agent_id}" />
			</form>
		</div>
	</div>
</div>