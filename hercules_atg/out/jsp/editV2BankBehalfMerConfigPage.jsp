<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editV2BankBehalfMerConfigFrom" name="editV2BankBehalfMerConfigFrom" method="post" action="editV2BankBehalfMerConfigAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="v2BankBehalfMerConfigDto.mer_id" name="v2BankBehalfMerConfigDto.mer_id" value="${v2BankBehalfMerConfigDto.mer_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>balance</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.balance" name="v2BankBehalfMerConfigDto.balance" value="${v2BankBehalfMerConfigDto.balance}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'balance必须为数字',missingMessage:'balance必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>fee</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.fee" name="v2BankBehalfMerConfigDto.fee" value="${v2BankBehalfMerConfigDto.fee}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'fee必须为数字',missingMessage:'fee必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>rate</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.rate" name="v2BankBehalfMerConfigDto.rate" value="${v2BankBehalfMerConfigDto.rate}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'rate必须为数字',missingMessage:'rate必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.status" name="v2BankBehalfMerConfigDto.status" value="${v2BankBehalfMerConfigDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.create_time" name="v2BankBehalfMerConfigDto.create_time" value="${v2BankBehalfMerConfigDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>finish_time</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.finish_time" name="v2BankBehalfMerConfigDto.finish_time" value="${v2BankBehalfMerConfigDto.finish_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>back_url</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.back_url" name="v2BankBehalfMerConfigDto.back_url" value="${v2BankBehalfMerConfigDto.back_url}" class="easyui-validatebox" data-options="required:true,invalidMessage:'back_url不能为空',missingMessage:'back_url不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_name</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.mer_name" name="v2BankBehalfMerConfigDto.mer_name" value="${v2BankBehalfMerConfigDto.mer_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_name不能为空',missingMessage:'mer_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>available_balance</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.available_balance" name="v2BankBehalfMerConfigDto.available_balance" value="${v2BankBehalfMerConfigDto.available_balance}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'available_balance必须为数字',missingMessage:'available_balance必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>blocked_balances</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.blocked_balances" name="v2BankBehalfMerConfigDto.blocked_balances" value="${v2BankBehalfMerConfigDto.blocked_balances}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'blocked_balances必须为数字',missingMessage:'blocked_balances必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>available_fee</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.available_fee" name="v2BankBehalfMerConfigDto.available_fee" value="${v2BankBehalfMerConfigDto.available_fee}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'available_fee必须为数字',missingMessage:'available_fee必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>blocked_fee</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.blocked_fee" name="v2BankBehalfMerConfigDto.blocked_fee" value="${v2BankBehalfMerConfigDto.blocked_fee}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'blocked_fee必须为数字',missingMessage:'blocked_fee必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pay_tract</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.pay_tract" name="v2BankBehalfMerConfigDto.pay_tract" value="${v2BankBehalfMerConfigDto.pay_tract}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_tract不能为空',missingMessage:'pay_tract不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.mer_sys_id" name="v2BankBehalfMerConfigDto.mer_sys_id" value="${v2BankBehalfMerConfigDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_sys_id不能为空',missingMessage:'mer_sys_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_type</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.mer_type" name="v2BankBehalfMerConfigDto.mer_type" value="${v2BankBehalfMerConfigDto.mer_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_type不能为空',missingMessage:'mer_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_mer_id</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.trans_mer_id" name="v2BankBehalfMerConfigDto.trans_mer_id" value="${v2BankBehalfMerConfigDto.trans_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>account_no</label></th>
									<td>
										<input type="text" id="v2BankBehalfMerConfigDto.account_no" name="v2BankBehalfMerConfigDto.account_no" value="${v2BankBehalfMerConfigDto.account_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_no不能为空',missingMessage:'account_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delV2BankBehalfMerConfigFrom" name="delV2BankBehalfMerConfigFrom" method="post" action="delV2BankBehalfMerConfigAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${v2BankBehalfMerConfigDto.mer_id}" />
			</form>
		</div>
	</div>
</div>