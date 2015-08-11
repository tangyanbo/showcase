<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editV2BankBehalfAccountInfoFrom" name="editV2BankBehalfAccountInfoFrom" method="post" action="editV2BankBehalfAccountInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="v2BankBehalfAccountInfoDto.bankid" name="v2BankBehalfAccountInfoDto.bankid" value="${v2BankBehalfAccountInfoDto.bankid}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>pay_branch_no</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.pay_branch_no" name="v2BankBehalfAccountInfoDto.pay_branch_no" value="${v2BankBehalfAccountInfoDto.pay_branch_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_branch_no不能为空',missingMessage:'pay_branch_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>balance</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.balance" name="v2BankBehalfAccountInfoDto.balance" value="${v2BankBehalfAccountInfoDto.balance}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'balance必须为数字',missingMessage:'balance必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pay_bank_name</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.pay_bank_name" name="v2BankBehalfAccountInfoDto.pay_bank_name" value="${v2BankBehalfAccountInfoDto.pay_bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_bank_name不能为空',missingMessage:'pay_bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pay_account_type</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.pay_account_type" name="v2BankBehalfAccountInfoDto.pay_account_type" value="${v2BankBehalfAccountInfoDto.pay_account_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_account_type不能为空',missingMessage:'pay_account_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.create_time" name="v2BankBehalfAccountInfoDto.create_time" value="${v2BankBehalfAccountInfoDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>finish_time</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.finish_time" name="v2BankBehalfAccountInfoDto.finish_time" value="${v2BankBehalfAccountInfoDto.finish_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account1_no</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.account1_no" name="v2BankBehalfAccountInfoDto.account1_no" value="${v2BankBehalfAccountInfoDto.account1_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account1_no不能为空',missingMessage:'account1_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account1_name</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.account1_name" name="v2BankBehalfAccountInfoDto.account1_name" value="${v2BankBehalfAccountInfoDto.account1_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account1_name不能为空',missingMessage:'account1_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.status" name="v2BankBehalfAccountInfoDto.status" value="${v2BankBehalfAccountInfoDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>acc_available_balance</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.acc_available_balance" name="v2BankBehalfAccountInfoDto.acc_available_balance" value="${v2BankBehalfAccountInfoDto.acc_available_balance}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'acc_available_balance必须为数字',missingMessage:'acc_available_balance必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>acc_blocked_balances</label></th>
									<td>
										<input type="text" id="v2BankBehalfAccountInfoDto.acc_blocked_balances" name="v2BankBehalfAccountInfoDto.acc_blocked_balances" value="${v2BankBehalfAccountInfoDto.acc_blocked_balances}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'acc_blocked_balances必须为数字',missingMessage:'acc_blocked_balances必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delV2BankBehalfAccountInfoFrom" name="delV2BankBehalfAccountInfoFrom" method="post" action="delV2BankBehalfAccountInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${v2BankBehalfAccountInfoDto.bankid}" />
			</form>
		</div>
	</div>
</div>