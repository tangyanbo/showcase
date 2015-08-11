<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editErrOrderInfoFrom" name="editErrOrderInfoFrom" method="post" action="editErrOrderInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.order_id" name="errOrderInfoDto.order_id"  value="${errOrderInfoDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.terminal_id" name="errOrderInfoDto.terminal_id"  value="${errOrderInfoDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>merchant_id</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.merchant_id" name="errOrderInfoDto.merchant_id"  value="${errOrderInfoDto.merchant_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>merchant_name</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.merchant_name" name="errOrderInfoDto.merchant_name"  value="${errOrderInfoDto.merchant_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tsn</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.tsn" name="errOrderInfoDto.tsn"  value="${errOrderInfoDto.tsn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_code</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.trans_code" name="errOrderInfoDto.trans_code"  value="${errOrderInfoDto.trans_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>merchant_order_id</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.merchant_order_id" name="errOrderInfoDto.merchant_order_id"  value="${errOrderInfoDto.merchant_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>merchant_order_time</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.merchant_order_time" name="errOrderInfoDto.merchant_order_time"  value="${errOrderInfoDto.merchant_order_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>merchant_order_amt</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.merchant_order_amt" name="errOrderInfoDto.merchant_order_amt"  value="${errOrderInfoDto.merchant_order_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>merchant_order_currency</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.merchant_order_currency" name="errOrderInfoDto.merchant_order_currency"  value="${errOrderInfoDto.merchant_order_currency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>phone_num</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.phone_num" name="errOrderInfoDto.phone_num"  value="${errOrderInfoDto.phone_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>product_type</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.product_type" name="errOrderInfoDto.product_type"  value="${errOrderInfoDto.product_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bus_type</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.bus_type" name="errOrderInfoDto.bus_type"  value="${errOrderInfoDto.bus_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.trans_type" name="errOrderInfoDto.trans_type"  value="${errOrderInfoDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_ip</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.terminal_ip" name="errOrderInfoDto.terminal_ip"  value="${errOrderInfoDto.terminal_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>user_ip</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.user_ip" name="errOrderInfoDto.user_ip"  value="${errOrderInfoDto.user_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_no</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.batch_no" name="errOrderInfoDto.batch_no"  value="${errOrderInfoDto.batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>voucher_no</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.voucher_no" name="errOrderInfoDto.voucher_no"  value="${errOrderInfoDto.voucher_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_code</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.resp_code" name="errOrderInfoDto.resp_code"  value="${errOrderInfoDto.resp_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>resp_desc</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.resp_desc" name="errOrderInfoDto.resp_desc"  value="${errOrderInfoDto.resp_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.trans_time" name="errOrderInfoDto.trans_time"  value="${errOrderInfoDto.trans_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.create_date" name="errOrderInfoDto.create_date"  value="${errOrderInfoDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>full_card_no</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.full_card_no" name="errOrderInfoDto.full_card_no"  value="${errOrderInfoDto.full_card_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>full_card_no2</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.full_card_no2" name="errOrderInfoDto.full_card_no2"  value="${errOrderInfoDto.full_card_no2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="errOrderInfoDto.reserved1" name="errOrderInfoDto.reserved1"  value="${errOrderInfoDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>