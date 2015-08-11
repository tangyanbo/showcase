<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPayBankCodeFrom" name="editPayBankCodeFrom" method="post" action="editPayBankCodeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="payBankCodeDto.id" name="payBankCodeDto.id" value="${payBankCodeDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>pay_bank_name</label></th>
									<td>
										<input type="text" id="payBankCodeDto.pay_bank_name" name="payBankCodeDto.pay_bank_name" value="${payBankCodeDto.pay_bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_bank_name不能为空',missingMessage:'pay_bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pay_bank_id</label></th>
									<td>
										<input type="text" id="payBankCodeDto.pay_bank_id" name="payBankCodeDto.pay_bank_id" value="${payBankCodeDto.pay_bank_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pay_bank_id不能为空',missingMessage:'pay_bank_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="payBankCodeDto.reserved1" name="payBankCodeDto.reserved1" value="${payBankCodeDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="payBankCodeDto.reserved2" name="payBankCodeDto.reserved2" value="${payBankCodeDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="payBankCodeDto.reserved3" name="payBankCodeDto.reserved3" value="${payBankCodeDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delPayBankCodeFrom" name="delPayBankCodeFrom" method="post" action="delPayBankCodeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${payBankCodeDto.id}" />
			</form>
		</div>
	</div>
</div>