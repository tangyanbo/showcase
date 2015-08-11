<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAppTractInfoFrom" name="editAppTractInfoFrom" method="post" action="editAppTractInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="appTractInfoDto.app_tract_id" name="appTractInfoDto.app_tract_id" value="${appTractInfoDto.app_tract_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>app_tract_name</label></th>
									<td>
										<input type="text" id="appTractInfoDto.app_tract_name" name="appTractInfoDto.app_tract_name" value="${appTractInfoDto.app_tract_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'app_tract_name不能为空',missingMessage:'app_tract_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_mer_id</label></th>
									<td>
										<input type="text" id="appTractInfoDto.trans_mer_id" name="appTractInfoDto.trans_mer_id" value="${appTractInfoDto.trans_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pay_tract</label></th>
									<td>
										<input type="text" id="appTractInfoDto.pay_tract" name="appTractInfoDto.pay_tract" value="${appTractInfoDto.pay_tract}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_tract不能为空',missingMessage:'pay_tract不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_rate_cost</label></th>
									<td>
										<input type="text" id="appTractInfoDto.trans_rate_cost" name="appTractInfoDto.trans_rate_cost" value="${appTractInfoDto.trans_rate_cost}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_rate_cost不能为空',missingMessage:'trans_rate_cost不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_lowest_cost</label></th>
									<td>
										<input type="text" id="appTractInfoDto.trans_lowest_cost" name="appTractInfoDto.trans_lowest_cost" value="${appTractInfoDto.trans_lowest_cost}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_lowest_cost不能为空',missingMessage:'trans_lowest_cost不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_highest_cost</label></th>
									<td>
										<input type="text" id="appTractInfoDto.trans_highest_cost" name="appTractInfoDto.trans_highest_cost" value="${appTractInfoDto.trans_highest_cost}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_highest_cost不能为空',missingMessage:'trans_highest_cost不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bypay_profit</label></th>
									<td>
										<input type="text" id="appTractInfoDto.bypay_profit" name="appTractInfoDto.bypay_profit" value="${appTractInfoDto.bypay_profit}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bypay_profit不能为空',missingMessage:'bypay_profit不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="appTractInfoDto.status" name="appTractInfoDto.status" value="${appTractInfoDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="appTractInfoDto.create_time" name="appTractInfoDto.create_time" value="${appTractInfoDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="appTractInfoDto.remark" name="appTractInfoDto.remark" value="${appTractInfoDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="appTractInfoDto.reserved" name="appTractInfoDto.reserved" value="${appTractInfoDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>per_card_quota</label></th>
									<td>
										<input type="text" id="appTractInfoDto.per_card_quota" name="appTractInfoDto.per_card_quota" value="${appTractInfoDto.per_card_quota}" class="easyui-validatebox" data-options="required:true,invalidMessage:'per_card_quota不能为空',missingMessage:'per_card_quota不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_quota</label></th>
									<td>
										<input type="text" id="appTractInfoDto.card_quota" name="appTractInfoDto.card_quota" value="${appTractInfoDto.card_quota}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_quota不能为空',missingMessage:'card_quota不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_count</label></th>
									<td>
										<input type="text" id="appTractInfoDto.card_count" name="appTractInfoDto.card_count" value="${appTractInfoDto.card_count}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_count不能为空',missingMessage:'card_count不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_time_begin</label></th>
									<td>
										<input type="text" id="appTractInfoDto.trans_time_begin" name="appTractInfoDto.trans_time_begin" value="${appTractInfoDto.trans_time_begin}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time_begin不能为空',missingMessage:'trans_time_begin不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_time_end</label></th>
									<td>
										<input type="text" id="appTractInfoDto.trans_time_end" name="appTractInfoDto.trans_time_end" value="${appTractInfoDto.trans_time_end}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time_end不能为空',missingMessage:'trans_time_end不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>tract_type</label></th>
									<td>
										<input type="text" id="appTractInfoDto.tract_type" name="appTractInfoDto.tract_type" value="${appTractInfoDto.tract_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_type不能为空',missingMessage:'tract_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>terminal_id</label></th>
									<td>
										<input type="text" id="appTractInfoDto.terminal_id" name="appTractInfoDto.terminal_id" value="${appTractInfoDto.terminal_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>spid</label></th>
									<td>
										<input type="text" id="appTractInfoDto.spid" name="appTractInfoDto.spid" value="${appTractInfoDto.spid}" class="easyui-validatebox" data-options="required:true,invalidMessage:'spid不能为空',missingMessage:'spid不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delAppTractInfoFrom" name="delAppTractInfoFrom" method="post" action="delAppTractInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${appTractInfoDto.app_tract_id}" />
			</form>
		</div>
	</div>
</div>