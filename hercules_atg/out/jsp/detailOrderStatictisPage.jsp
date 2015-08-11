<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editOrderStatictisFrom" name="editOrderStatictisFrom" method="post" action="editOrderStatictisAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="orderStatictisDto.order_id" name="orderStatictisDto.order_id"  value="${orderStatictisDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="orderStatictisDto.sub_mer_id" name="orderStatictisDto.sub_mer_id"  value="${orderStatictisDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_amt</label></th>
								<td>
									<input type="text" id="orderStatictisDto.mer_amt" name="orderStatictisDto.mer_amt"  value="${orderStatictisDto.mer_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_fee</label></th>
								<td>
									<input type="text" id="orderStatictisDto.trans_fee" name="orderStatictisDto.trans_fee"  value="${orderStatictisDto.trans_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_amt</label></th>
								<td>
									<input type="text" id="orderStatictisDto.clear_amt" name="orderStatictisDto.clear_amt"  value="${orderStatictisDto.clear_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_type</label></th>
								<td>
									<input type="text" id="orderStatictisDto.clear_type" name="orderStatictisDto.clear_type"  value="${orderStatictisDto.clear_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_tract</label></th>
								<td>
									<input type="text" id="orderStatictisDto.clear_tract" name="orderStatictisDto.clear_tract"  value="${orderStatictisDto.clear_tract}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_time</label></th>
								<td>
									<input type="text" id="orderStatictisDto.clear_time" name="orderStatictisDto.clear_time"  value="${orderStatictisDto.clear_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="orderStatictisDto.create_time" name="orderStatictisDto.create_time"  value="${orderStatictisDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="orderStatictisDto.trans_type" name="orderStatictisDto.trans_type"  value="${orderStatictisDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="orderStatictisDto.settle_date" name="orderStatictisDto.settle_date"  value="${orderStatictisDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="orderStatictisDto.reserved" name="orderStatictisDto.reserved"  value="${orderStatictisDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="orderStatictisDto.create_date" name="orderStatictisDto.create_date"  value="${orderStatictisDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_batch_no</label></th>
								<td>
									<input type="text" id="orderStatictisDto.clear_batch_no" name="orderStatictisDto.clear_batch_no"  value="${orderStatictisDto.clear_batch_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>