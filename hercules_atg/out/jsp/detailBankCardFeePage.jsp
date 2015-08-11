<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editBankCardFeeFrom" name="editBankCardFeeFrom" method="post" action="editBankCardFeeAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>bank_code</label></th>
								<td>
									<input type="text" id="bankCardFeeDto.bank_code" name="bankCardFeeDto.bank_code"  value="${bankCardFeeDto.bank_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bank_name</label></th>
								<td>
									<input type="text" id="bankCardFeeDto.bank_name" name="bankCardFeeDto.bank_name"  value="${bankCardFeeDto.bank_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>fee</label></th>
								<td>
									<input type="text" id="bankCardFeeDto.fee" name="bankCardFeeDto.fee"  value="${bankCardFeeDto.fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>arrive_time</label></th>
								<td>
									<input type="text" id="bankCardFeeDto.arrive_time" name="bankCardFeeDto.arrive_time"  value="${bankCardFeeDto.arrive_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="bankCardFeeDto.create_time" name="bankCardFeeDto.create_time"  value="${bankCardFeeDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>