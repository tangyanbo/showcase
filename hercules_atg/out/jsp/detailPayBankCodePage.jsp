<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPayBankCodeFrom" name="editPayBankCodeFrom" method="post" action="editPayBankCodeAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>pay_bank_name</label></th>
								<td>
									<input type="text" id="payBankCodeDto.pay_bank_name" name="payBankCodeDto.pay_bank_name"  value="${payBankCodeDto.pay_bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_bank_id</label></th>
								<td>
									<input type="text" id="payBankCodeDto.pay_bank_id" name="payBankCodeDto.pay_bank_id"  value="${payBankCodeDto.pay_bank_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="payBankCodeDto.reserved1" name="payBankCodeDto.reserved1"  value="${payBankCodeDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="payBankCodeDto.reserved2" name="payBankCodeDto.reserved2"  value="${payBankCodeDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="payBankCodeDto.reserved3" name="payBankCodeDto.reserved3"  value="${payBankCodeDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>