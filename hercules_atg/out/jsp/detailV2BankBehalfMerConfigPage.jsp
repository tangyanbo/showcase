<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editV2BankBehalfMerConfigFrom" name="editV2BankBehalfMerConfigFrom" method="post" action="editV2BankBehalfMerConfigAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>balance</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.balance" name="v2BankBehalfMerConfigDto.balance"  value="${v2BankBehalfMerConfigDto.balance}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>fee</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.fee" name="v2BankBehalfMerConfigDto.fee"  value="${v2BankBehalfMerConfigDto.fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>rate</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.rate" name="v2BankBehalfMerConfigDto.rate"  value="${v2BankBehalfMerConfigDto.rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.status" name="v2BankBehalfMerConfigDto.status"  value="${v2BankBehalfMerConfigDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.create_time" name="v2BankBehalfMerConfigDto.create_time"  value="${v2BankBehalfMerConfigDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.finish_time" name="v2BankBehalfMerConfigDto.finish_time"  value="${v2BankBehalfMerConfigDto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>back_url</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.back_url" name="v2BankBehalfMerConfigDto.back_url"  value="${v2BankBehalfMerConfigDto.back_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_name</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.mer_name" name="v2BankBehalfMerConfigDto.mer_name"  value="${v2BankBehalfMerConfigDto.mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>available_balance</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.available_balance" name="v2BankBehalfMerConfigDto.available_balance"  value="${v2BankBehalfMerConfigDto.available_balance}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>blocked_balances</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.blocked_balances" name="v2BankBehalfMerConfigDto.blocked_balances"  value="${v2BankBehalfMerConfigDto.blocked_balances}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>available_fee</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.available_fee" name="v2BankBehalfMerConfigDto.available_fee"  value="${v2BankBehalfMerConfigDto.available_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>blocked_fee</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.blocked_fee" name="v2BankBehalfMerConfigDto.blocked_fee"  value="${v2BankBehalfMerConfigDto.blocked_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_tract</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.pay_tract" name="v2BankBehalfMerConfigDto.pay_tract"  value="${v2BankBehalfMerConfigDto.pay_tract}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.mer_sys_id" name="v2BankBehalfMerConfigDto.mer_sys_id"  value="${v2BankBehalfMerConfigDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.mer_type" name="v2BankBehalfMerConfigDto.mer_type"  value="${v2BankBehalfMerConfigDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.trans_mer_id" name="v2BankBehalfMerConfigDto.trans_mer_id"  value="${v2BankBehalfMerConfigDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_no</label></th>
								<td>
									<input type="text" id="v2BankBehalfMerConfigDto.account_no" name="v2BankBehalfMerConfigDto.account_no"  value="${v2BankBehalfMerConfigDto.account_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>