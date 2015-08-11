<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerCashoutFrom" name="editSubMerCashoutFrom" method="post" action="editSubMerCashoutAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.sub_mer_id" name="subMerCashoutDto.sub_mer_id"  value="${subMerCashoutDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.mer_sys_id" name="subMerCashoutDto.mer_sys_id"  value="${subMerCashoutDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_amt</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.order_amt" name="subMerCashoutDto.order_amt"  value="${subMerCashoutDto.order_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>daifa_amt</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.daifa_amt" name="subMerCashoutDto.daifa_amt"  value="${subMerCashoutDto.daifa_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>order_status</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.order_status" name="subMerCashoutDto.order_status"  value="${subMerCashoutDto.order_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.create_time" name="subMerCashoutDto.create_time"  value="${subMerCashoutDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.finish_time" name="subMerCashoutDto.finish_time"  value="${subMerCashoutDto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_id</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.trans_id" name="subMerCashoutDto.trans_id"  value="${subMerCashoutDto.trans_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_qid</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.trans_qid" name="subMerCashoutDto.trans_qid"  value="${subMerCashoutDto.trans_qid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_fee</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.trans_fee" name="subMerCashoutDto.trans_fee"  value="${subMerCashoutDto.trans_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_id</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.batch_id" name="subMerCashoutDto.batch_id"  value="${subMerCashoutDto.batch_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>t0_mer_rate</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.t0_mer_rate" name="subMerCashoutDto.t0_mer_rate"  value="${subMerCashoutDto.t0_mer_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>t0_mer_profit</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.t0_mer_profit" name="subMerCashoutDto.t0_mer_profit"  value="${subMerCashoutDto.t0_mer_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>t0_mer_gain</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.t0_mer_gain" name="subMerCashoutDto.t0_mer_gain"  value="${subMerCashoutDto.t0_mer_gain}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>t0_hx_profit</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.t0_hx_profit" name="subMerCashoutDto.t0_hx_profit"  value="${subMerCashoutDto.t0_hx_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.reserved1" name="subMerCashoutDto.reserved1"  value="${subMerCashoutDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.reserved2" name="subMerCashoutDto.reserved2"  value="${subMerCashoutDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="subMerCashoutDto.reserved3" name="subMerCashoutDto.reserved3"  value="${subMerCashoutDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>