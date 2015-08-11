<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerRiskFrom" name="editMerRiskFrom" method="post" action="editMerRiskAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merRiskDto.mer_type" name="merRiskDto.mer_type"  value="${merRiskDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="merRiskDto.mer_sys_id" name="merRiskDto.mer_sys_id"  value="${merRiskDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_name</label></th>
								<td>
									<input type="text" id="merRiskDto.sub_mer_name" name="merRiskDto.sub_mer_name"  value="${merRiskDto.sub_mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>debit_per_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.debit_per_card_quota" name="merRiskDto.debit_per_card_quota"  value="${merRiskDto.debit_per_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>debit_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.debit_card_quota" name="merRiskDto.debit_card_quota"  value="${merRiskDto.debit_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>debit_card_count</label></th>
								<td>
									<input type="text" id="merRiskDto.debit_card_count" name="merRiskDto.debit_card_count"  value="${merRiskDto.debit_card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>credit_per_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.credit_per_card_quota" name="merRiskDto.credit_per_card_quota"  value="${merRiskDto.credit_per_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>credit_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.credit_card_quota" name="merRiskDto.credit_card_quota"  value="${merRiskDto.credit_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>credit_card_count</label></th>
								<td>
									<input type="text" id="merRiskDto.credit_card_count" name="merRiskDto.credit_card_count"  value="${merRiskDto.credit_card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.terminal_card_quota" name="merRiskDto.terminal_card_quota"  value="${merRiskDto.terminal_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>transfer_per_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.transfer_per_card_quota" name="merRiskDto.transfer_per_card_quota"  value="${merRiskDto.transfer_per_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>transfer_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.transfer_card_quota" name="merRiskDto.transfer_card_quota"  value="${merRiskDto.transfer_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>transfer_card_count</label></th>
								<td>
									<input type="text" id="merRiskDto.transfer_card_count" name="merRiskDto.transfer_card_count"  value="${merRiskDto.transfer_card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_transfer_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.terminal_transfer_card_quota" name="merRiskDto.terminal_transfer_card_quota"  value="${merRiskDto.terminal_transfer_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_credit_per_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.pay_credit_per_card_quota" name="merRiskDto.pay_credit_per_card_quota"  value="${merRiskDto.pay_credit_per_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_credit_card_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.pay_credit_card_quota" name="merRiskDto.pay_credit_card_quota"  value="${merRiskDto.pay_credit_card_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pay_credit_card_count</label></th>
								<td>
									<input type="text" id="merRiskDto.pay_credit_card_count" name="merRiskDto.pay_credit_card_count"  value="${merRiskDto.pay_credit_card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time_begin</label></th>
								<td>
									<input type="text" id="merRiskDto.trans_time_begin" name="merRiskDto.trans_time_begin"  value="${merRiskDto.trans_time_begin}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_time_end</label></th>
								<td>
									<input type="text" id="merRiskDto.trans_time_end" name="merRiskDto.trans_time_end"  value="${merRiskDto.trans_time_end}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_rules</label></th>
								<td>
									<input type="text" id="merRiskDto.trans_rules" name="merRiskDto.trans_rules"  value="${merRiskDto.trans_rules}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>query_credit_card_count</label></th>
								<td>
									<input type="text" id="merRiskDto.query_credit_card_count" name="merRiskDto.query_credit_card_count"  value="${merRiskDto.query_credit_card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>query_debit_card_count</label></th>
								<td>
									<input type="text" id="merRiskDto.query_debit_card_count" name="merRiskDto.query_debit_card_count"  value="${merRiskDto.query_debit_card_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_trans_quota</label></th>
								<td>
									<input type="text" id="merRiskDto.mer_trans_quota" name="merRiskDto.mer_trans_quota"  value="${merRiskDto.mer_trans_quota}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>