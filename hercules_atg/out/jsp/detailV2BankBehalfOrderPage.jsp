<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editV2BankBehalfOrderFrom" name="editV2BankBehalfOrderFrom" method="post" action="editV2BankBehalfOrderAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_order_id</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.mer_order_id" name="v2BankBehalfOrderDto.mer_order_id"  value="${v2BankBehalfOrderDto.mer_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_order_time</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.mer_order_time" name="v2BankBehalfOrderDto.mer_order_time"  value="${v2BankBehalfOrderDto.mer_order_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bus_mer_id</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.bus_mer_id" name="v2BankBehalfOrderDto.bus_mer_id"  value="${v2BankBehalfOrderDto.bus_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.status" name="v2BankBehalfOrderDto.status"  value="${v2BankBehalfOrderDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.create_time" name="v2BankBehalfOrderDto.create_time"  value="${v2BankBehalfOrderDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.finish_time" name="v2BankBehalfOrderDto.finish_time"  value="${v2BankBehalfOrderDto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>total_number</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.total_number" name="v2BankBehalfOrderDto.total_number"  value="${v2BankBehalfOrderDto.total_number}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>success_mumber</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.success_mumber" name="v2BankBehalfOrderDto.success_mumber"  value="${v2BankBehalfOrderDto.success_mumber}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>fail_number</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.fail_number" name="v2BankBehalfOrderDto.fail_number"  value="${v2BankBehalfOrderDto.fail_number}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>amount</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.amount" name="v2BankBehalfOrderDto.amount"  value="${v2BankBehalfOrderDto.amount}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_amount</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.trans_amount" name="v2BankBehalfOrderDto.trans_amount"  value="${v2BankBehalfOrderDto.trans_amount}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>back_url</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.back_url" name="v2BankBehalfOrderDto.back_url"  value="${v2BankBehalfOrderDto.back_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.order_id" name="v2BankBehalfOrderDto.order_id"  value="${v2BankBehalfOrderDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_name</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.mer_name" name="v2BankBehalfOrderDto.mer_name"  value="${v2BankBehalfOrderDto.mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="v2BankBehalfOrderDto.sub_mer_id" name="v2BankBehalfOrderDto.sub_mer_id"  value="${v2BankBehalfOrderDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>