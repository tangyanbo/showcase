<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerProfitStatictisFrom" name="editMerProfitStatictisFrom" method="post" action="editMerProfitStatictisAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mid</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.mid" name="merProfitStatictisDto.mid"  value="${merProfitStatictisDto.mid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.mer_type" name="merProfitStatictisDto.mer_type"  value="${merProfitStatictisDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.mer_sys_id" name="merProfitStatictisDto.mer_sys_id"  value="${merProfitStatictisDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_sys_id</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.agent_sys_id" name="merProfitStatictisDto.agent_sys_id"  value="${merProfitStatictisDto.agent_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_name</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.mer_name" name="merProfitStatictisDto.mer_name"  value="${merProfitStatictisDto.mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.settle_date" name="merProfitStatictisDto.settle_date"  value="${merProfitStatictisDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_amt</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.sum_amt" name="merProfitStatictisDto.sum_amt"  value="${merProfitStatictisDto.sum_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>profit</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.profit" name="merProfitStatictisDto.profit"  value="${merProfitStatictisDto.profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_trans_fee</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.sum_trans_fee" name="merProfitStatictisDto.sum_trans_fee"  value="${merProfitStatictisDto.sum_trans_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.create_time" name="merProfitStatictisDto.create_time"  value="${merProfitStatictisDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_status</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.clear_status" name="merProfitStatictisDto.clear_status"  value="${merProfitStatictisDto.clear_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_order_id</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.clear_order_id" name="merProfitStatictisDto.clear_order_id"  value="${merProfitStatictisDto.clear_order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>faile_amt</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.faile_amt" name="merProfitStatictisDto.faile_amt"  value="${merProfitStatictisDto.faile_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bp_serial_number</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.bp_serial_number" name="merProfitStatictisDto.bp_serial_number"  value="${merProfitStatictisDto.bp_serial_number}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>count_fee</label></th>
								<td>
									<input type="text" id="merProfitStatictisDto.count_fee" name="merProfitStatictisDto.count_fee"  value="${merProfitStatictisDto.count_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>