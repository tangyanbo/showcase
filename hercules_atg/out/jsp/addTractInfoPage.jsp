<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addTractInfoFrom" name="addTractInfoFrom" method="post" action="addTractInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>tract_name</label></th>
							<td>
								<input type="text" id="tractInfoDto.tract_name" name="tractInfoDto.tract_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_name不能为空',missingMessage:'tract_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_mer_id</label></th>
							<td>
								<input type="text" id="tractInfoDto.trans_mer_id" name="tractInfoDto.trans_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_agency</label></th>
							<td>
								<input type="text" id="tractInfoDto.tract_agency" name="tractInfoDto.tract_agency" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_agency不能为空',missingMessage:'tract_agency不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>rates_type</label></th>
							<td>
								<input type="text" id="tractInfoDto.rates_type" name="tractInfoDto.rates_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'rates_type不能为空',missingMessage:'rates_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>acq_agency_id</label></th>
							<td>
								<input type="text" id="tractInfoDto.acq_agency_id" name="tractInfoDto.acq_agency_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'acq_agency_id不能为空',missingMessage:'acq_agency_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>acq_agency_name</label></th>
							<td>
								<input type="text" id="tractInfoDto.acq_agency_name" name="tractInfoDto.acq_agency_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'acq_agency_name不能为空',missingMessage:'acq_agency_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pay_tract</label></th>
							<td>
								<input type="text" id="tractInfoDto.pay_tract" name="tractInfoDto.pay_tract" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_tract不能为空',missingMessage:'pay_tract不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_rate</label></th>
							<td>
								<input type="text" id="tractInfoDto.tract_rate" name="tractInfoDto.tract_rate" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_rate不能为空',missingMessage:'tract_rate不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_highest_fee</label></th>
							<td>
								<input type="text" id="tractInfoDto.tract_highest_fee" name="tractInfoDto.tract_highest_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_highest_fee不能为空',missingMessage:'tract_highest_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>credit_rate_cost</label></th>
							<td>
								<input type="text" id="tractInfoDto.credit_rate_cost" name="tractInfoDto.credit_rate_cost" class="easyui-validatebox" data-options="required:true,invalidMessage:'credit_rate_cost不能为空',missingMessage:'credit_rate_cost不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>debit_rate_cost</label></th>
							<td>
								<input type="text" id="tractInfoDto.debit_rate_cost" name="tractInfoDto.debit_rate_cost" class="easyui-validatebox" data-options="required:true,invalidMessage:'debit_rate_cost不能为空',missingMessage:'debit_rate_cost不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>credit_highest_cost</label></th>
							<td>
								<input type="text" id="tractInfoDto.credit_highest_cost" name="tractInfoDto.credit_highest_cost" class="easyui-validatebox" data-options="required:true,invalidMessage:'credit_highest_cost不能为空',missingMessage:'credit_highest_cost不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>debit_highest_cost</label></th>
							<td>
								<input type="text" id="tractInfoDto.debit_highest_cost" name="tractInfoDto.debit_highest_cost" class="easyui-validatebox" data-options="required:true,invalidMessage:'debit_highest_cost不能为空',missingMessage:'debit_highest_cost不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>lowest_cost</label></th>
							<td>
								<input type="text" id="tractInfoDto.lowest_cost" name="tractInfoDto.lowest_cost" class="easyui-validatebox" data-options="required:true,invalidMessage:'lowest_cost不能为空',missingMessage:'lowest_cost不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bypay_profit</label></th>
							<td>
								<input type="text" id="tractInfoDto.bypay_profit" name="tractInfoDto.bypay_profit" class="easyui-validatebox" data-options="required:true,invalidMessage:'bypay_profit不能为空',missingMessage:'bypay_profit不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="tractInfoDto.status" name="tractInfoDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="tractInfoDto.create_time" name="tractInfoDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>per_card_quota</label></th>
							<td>
								<input type="text" id="tractInfoDto.per_card_quota" name="tractInfoDto.per_card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'per_card_quota不能为空',missingMessage:'per_card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_quota</label></th>
							<td>
								<input type="text" id="tractInfoDto.card_quota" name="tractInfoDto.card_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_quota不能为空',missingMessage:'card_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_count</label></th>
							<td>
								<input type="text" id="tractInfoDto.card_count" name="tractInfoDto.card_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_count不能为空',missingMessage:'card_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="tractInfoDto.remark" name="tractInfoDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="tractInfoDto.reserved" name="tractInfoDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time_begin</label></th>
							<td>
								<input type="text" id="tractInfoDto.trans_time_begin" name="tractInfoDto.trans_time_begin" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time_begin不能为空',missingMessage:'trans_time_begin不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time_end</label></th>
							<td>
								<input type="text" id="tractInfoDto.trans_time_end" name="tractInfoDto.trans_time_end" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time_end不能为空',missingMessage:'trans_time_end不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mcc</label></th>
							<td>
								<input type="text" id="tractInfoDto.mcc" name="tractInfoDto.mcc" class="easyui-validatebox" data-options="required:true,invalidMessage:'mcc不能为空',missingMessage:'mcc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>night_flag</label></th>
							<td>
								<input type="text" id="tractInfoDto.night_flag" name="tractInfoDto.night_flag" class="easyui-validatebox" data-options="required:true,invalidMessage:'night_flag不能为空',missingMessage:'night_flag不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>integral</label></th>
							<td>
								<input type="text" id="tractInfoDto.integral" name="tractInfoDto.integral" class="easyui-validatebox" data-options="required:true,invalidMessage:'integral不能为空',missingMessage:'integral不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_quota</label></th>
							<td>
								<input type="text" id="tractInfoDto.tract_quota" name="tractInfoDto.tract_quota" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_quota不能为空',missingMessage:'tract_quota不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_flag</label></th>
							<td>
								<input type="text" id="tractInfoDto.tract_flag" name="tractInfoDto.tract_flag" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_flag不能为空',missingMessage:'tract_flag不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_id</label></th>
							<td>
								<input type="text" id="tractInfoDto.terminal_id" name="tractInfoDto.terminal_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>spid</label></th>
							<td>
								<input type="text" id="tractInfoDto.spid" name="tractInfoDto.spid" class="easyui-validatebox" data-options="required:true,invalidMessage:'spid不能为空',missingMessage:'spid不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>card_flag</label></th>
							<td>
								<input type="text" id="tractInfoDto.card_flag" name="tractInfoDto.card_flag" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_flag不能为空',missingMessage:'card_flag不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_num</label></th>
							<td>
								<input type="text" id="tractInfoDto.tract_num" name="tractInfoDto.tract_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_num不能为空',missingMessage:'tract_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>