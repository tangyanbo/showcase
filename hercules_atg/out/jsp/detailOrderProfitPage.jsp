<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editOrderProfitFrom" name="editOrderProfitFrom" method="post" action="editOrderProfitAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>order_id</label></th>
								<td>
									<input type="text" id="orderProfitDto.order_id" name="orderProfitDto.order_id"  value="${orderProfitDto.order_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="orderProfitDto.mer_sys_id" name="orderProfitDto.mer_sys_id"  value="${orderProfitDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_amt</label></th>
								<td>
									<input type="text" id="orderProfitDto.mer_amt" name="orderProfitDto.mer_amt"  value="${orderProfitDto.mer_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_profit</label></th>
								<td>
									<input type="text" id="orderProfitDto.mer_profit" name="orderProfitDto.mer_profit"  value="${orderProfitDto.mer_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_rate</label></th>
								<td>
									<input type="text" id="orderProfitDto.mer_rate" name="orderProfitDto.mer_rate"  value="${orderProfitDto.mer_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_hight_fee</label></th>
								<td>
									<input type="text" id="orderProfitDto.mer_hight_fee" name="orderProfitDto.mer_hight_fee"  value="${orderProfitDto.mer_hight_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_l1_id</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent_l1_id" name="orderProfitDto.agent_l1_id"  value="${orderProfitDto.agent_l1_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent1_profit</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent1_profit" name="orderProfitDto.agent1_profit"  value="${orderProfitDto.agent1_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent1_rate</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent1_rate" name="orderProfitDto.agent1_rate"  value="${orderProfitDto.agent1_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent1_hight_fee</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent1_hight_fee" name="orderProfitDto.agent1_hight_fee"  value="${orderProfitDto.agent1_hight_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_l2_id</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent_l2_id" name="orderProfitDto.agent_l2_id"  value="${orderProfitDto.agent_l2_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent2_profit</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent2_profit" name="orderProfitDto.agent2_profit"  value="${orderProfitDto.agent2_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent2_rate</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent2_rate" name="orderProfitDto.agent2_rate"  value="${orderProfitDto.agent2_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent2_hight_fee</label></th>
								<td>
									<input type="text" id="orderProfitDto.agent2_hight_fee" name="orderProfitDto.agent2_hight_fee"  value="${orderProfitDto.agent2_hight_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>plat_id</label></th>
								<td>
									<input type="text" id="orderProfitDto.plat_id" name="orderProfitDto.plat_id"  value="${orderProfitDto.plat_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>plat_profit</label></th>
								<td>
									<input type="text" id="orderProfitDto.plat_profit" name="orderProfitDto.plat_profit"  value="${orderProfitDto.plat_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bypay_profit</label></th>
								<td>
									<input type="text" id="orderProfitDto.bypay_profit" name="orderProfitDto.bypay_profit"  value="${orderProfitDto.bypay_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_fee</label></th>
								<td>
									<input type="text" id="orderProfitDto.tract_fee" name="orderProfitDto.tract_fee"  value="${orderProfitDto.tract_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_bypay_profit</label></th>
								<td>
									<input type="text" id="orderProfitDto.tract_bypay_profit" name="orderProfitDto.tract_bypay_profit"  value="${orderProfitDto.tract_bypay_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_acqbank_profit</label></th>
								<td>
									<input type="text" id="orderProfitDto.tract_acqbank_profit" name="orderProfitDto.tract_acqbank_profit"  value="${orderProfitDto.tract_acqbank_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_cost</label></th>
								<td>
									<input type="text" id="orderProfitDto.tract_cost" name="orderProfitDto.tract_cost"  value="${orderProfitDto.tract_cost}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="orderProfitDto.reserved" name="orderProfitDto.reserved"  value="${orderProfitDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="orderProfitDto.create_time" name="orderProfitDto.create_time"  value="${orderProfitDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_rate</label></th>
								<td>
									<input type="text" id="orderProfitDto.sub_mer_rate" name="orderProfitDto.sub_mer_rate"  value="${orderProfitDto.sub_mer_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_hight_fee</label></th>
								<td>
									<input type="text" id="orderProfitDto.sub_mer_hight_fee" name="orderProfitDto.sub_mer_hight_fee"  value="${orderProfitDto.sub_mer_hight_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="orderProfitDto.create_date" name="orderProfitDto.create_date"  value="${orderProfitDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>