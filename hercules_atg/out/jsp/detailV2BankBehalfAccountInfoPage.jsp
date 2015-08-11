<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editV2BankBehalfAccountInfoFrom" name="editV2BankBehalfAccountInfoFrom" method="post" action="editV2BankBehalfAccountInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>pay_branch_no</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.pay_branch_no" name="v2BankBehalfAccountInfoDto.pay_branch_no"  value="${v2BankBehalfAccountInfoDto.pay_branch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>balance</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.balance" name="v2BankBehalfAccountInfoDto.balance"  value="${v2BankBehalfAccountInfoDto.balance}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_bank_name</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.pay_bank_name" name="v2BankBehalfAccountInfoDto.pay_bank_name"  value="${v2BankBehalfAccountInfoDto.pay_bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_account_type</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.pay_account_type" name="v2BankBehalfAccountInfoDto.pay_account_type"  value="${v2BankBehalfAccountInfoDto.pay_account_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.create_time" name="v2BankBehalfAccountInfoDto.create_time"  value="${v2BankBehalfAccountInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.finish_time" name="v2BankBehalfAccountInfoDto.finish_time"  value="${v2BankBehalfAccountInfoDto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1_no</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.account1_no" name="v2BankBehalfAccountInfoDto.account1_no"  value="${v2BankBehalfAccountInfoDto.account1_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account1_name</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.account1_name" name="v2BankBehalfAccountInfoDto.account1_name"  value="${v2BankBehalfAccountInfoDto.account1_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.status" name="v2BankBehalfAccountInfoDto.status"  value="${v2BankBehalfAccountInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>acc_available_balance</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.acc_available_balance" name="v2BankBehalfAccountInfoDto.acc_available_balance"  value="${v2BankBehalfAccountInfoDto.acc_available_balance}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>acc_blocked_balances</label></th>
								<td>
									<input type="text" id="v2BankBehalfAccountInfoDto.acc_blocked_balances" name="v2BankBehalfAccountInfoDto.acc_blocked_balances"  value="${v2BankBehalfAccountInfoDto.acc_blocked_balances}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>