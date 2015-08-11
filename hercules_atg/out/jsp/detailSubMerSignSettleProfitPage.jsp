<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerSignSettleProfitFrom" name="editSubMerSignSettleProfitFrom" method="post" action="editSubMerSignSettleProfitAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.order_id" name="subMerSignSettleProfitDto.order_id"  value="${subMerSignSettleProfitDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.sub_mer_id" name="subMerSignSettleProfitDto.sub_mer_id"  value="${subMerSignSettleProfitDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.mer_sys_id" name="subMerSignSettleProfitDto.mer_sys_id"  value="${subMerSignSettleProfitDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_sign_rate</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.sub_mer_sign_rate" name="subMerSignSettleProfitDto.sub_mer_sign_rate"  value="${subMerSignSettleProfitDto.sub_mer_sign_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_sign_high_fee</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.sub_mer_sign_high_fee" name="subMerSignSettleProfitDto.sub_mer_sign_high_fee"  value="${subMerSignSettleProfitDto.sub_mer_sign_high_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_trans_rate</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.sub_mer_trans_rate" name="subMerSignSettleProfitDto.sub_mer_trans_rate"  value="${subMerSignSettleProfitDto.sub_mer_trans_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_trans_high_fee</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.sub_mer_trans_high_fee" name="subMerSignSettleProfitDto.sub_mer_trans_high_fee"  value="${subMerSignSettleProfitDto.sub_mer_trans_high_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.create_date" name="subMerSignSettleProfitDto.create_date"  value="${subMerSignSettleProfitDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.create_time" name="subMerSignSettleProfitDto.create_time"  value="${subMerSignSettleProfitDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>profit_date</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.profit_date" name="subMerSignSettleProfitDto.profit_date"  value="${subMerSignSettleProfitDto.profit_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>profit_time</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.profit_time" name="subMerSignSettleProfitDto.profit_time"  value="${subMerSignSettleProfitDto.profit_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>profit</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.profit" name="subMerSignSettleProfitDto.profit"  value="${subMerSignSettleProfitDto.profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_type</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.trans_type" name="subMerSignSettleProfitDto.trans_type"  value="${subMerSignSettleProfitDto.trans_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.status" name="subMerSignSettleProfitDto.status"  value="${subMerSignSettleProfitDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>desc</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.desc" name="subMerSignSettleProfitDto.desc"  value="${subMerSignSettleProfitDto.desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="subMerSignSettleProfitDto.reserved" name="subMerSignSettleProfitDto.reserved"  value="${subMerSignSettleProfitDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>