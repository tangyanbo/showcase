<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editBypayProfitStatictisFrom" name="editBypayProfitStatictisFrom" method="post" action="editBypayProfitStatictisAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.settle_date" name="bypayProfitStatictisDto.settle_date"  value="${bypayProfitStatictisDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_amt</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_amt" name="bypayProfitStatictisDto.sum_amt"  value="${bypayProfitStatictisDto.sum_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_fee_amt</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_fee_amt" name="bypayProfitStatictisDto.sum_fee_amt"  value="${bypayProfitStatictisDto.sum_fee_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_count</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_count" name="bypayProfitStatictisDto.sum_count"  value="${bypayProfitStatictisDto.sum_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_camt</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_camt" name="bypayProfitStatictisDto.sum_camt"  value="${bypayProfitStatictisDto.sum_camt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_fee_camt</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_fee_camt" name="bypayProfitStatictisDto.sum_fee_camt"  value="${bypayProfitStatictisDto.sum_fee_camt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_ccount</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_ccount" name="bypayProfitStatictisDto.sum_ccount"  value="${bypayProfitStatictisDto.sum_ccount}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_ramt</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_ramt" name="bypayProfitStatictisDto.sum_ramt"  value="${bypayProfitStatictisDto.sum_ramt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_fee_ramt</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_fee_ramt" name="bypayProfitStatictisDto.sum_fee_ramt"  value="${bypayProfitStatictisDto.sum_fee_ramt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_rcount</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_rcount" name="bypayProfitStatictisDto.sum_rcount"  value="${bypayProfitStatictisDto.sum_rcount}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.create_time" name="bypayProfitStatictisDto.create_time"  value="${bypayProfitStatictisDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sum_tract_fee</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.sum_tract_fee" name="bypayProfitStatictisDto.sum_tract_fee"  value="${bypayProfitStatictisDto.sum_tract_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tract_bypay_profit</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.tract_bypay_profit" name="bypayProfitStatictisDto.tract_bypay_profit"  value="${bypayProfitStatictisDto.tract_bypay_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bypay_profit</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.bypay_profit" name="bypayProfitStatictisDto.bypay_profit"  value="${bypayProfitStatictisDto.bypay_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.reserved1" name="bypayProfitStatictisDto.reserved1"  value="${bypayProfitStatictisDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.reserved2" name="bypayProfitStatictisDto.reserved2"  value="${bypayProfitStatictisDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="bypayProfitStatictisDto.reserved3" name="bypayProfitStatictisDto.reserved3"  value="${bypayProfitStatictisDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>