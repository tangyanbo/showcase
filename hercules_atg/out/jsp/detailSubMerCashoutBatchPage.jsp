<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerCashoutBatchFrom" name="editSubMerCashoutBatchFrom" method="post" action="editSubMerCashoutBatchAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>batch_date</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.batch_date" name="subMerCashoutBatchDto.batch_date"  value="${subMerCashoutBatchDto.batch_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>prder_amt</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.prder_amt" name="subMerCashoutBatchDto.prder_amt"  value="${subMerCashoutBatchDto.prder_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.create_date" name="subMerCashoutBatchDto.create_date"  value="${subMerCashoutBatchDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>finish_time</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.finish_time" name="subMerCashoutBatchDto.finish_time"  value="${subMerCashoutBatchDto.finish_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_fee</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.trans_fee" name="subMerCashoutBatchDto.trans_fee"  value="${subMerCashoutBatchDto.trans_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ordeer_count</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.ordeer_count" name="subMerCashoutBatchDto.ordeer_count"  value="${subMerCashoutBatchDto.ordeer_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.status" name="subMerCashoutBatchDto.status"  value="${subMerCashoutBatchDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reservaed1</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.reservaed1" name="subMerCashoutBatchDto.reservaed1"  value="${subMerCashoutBatchDto.reservaed1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reservaed2</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.reservaed2" name="subMerCashoutBatchDto.reservaed2"  value="${subMerCashoutBatchDto.reservaed2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reservaed3</label></th>
								<td>
									<input type="text" id="subMerCashoutBatchDto.reservaed3" name="subMerCashoutBatchDto.reservaed3"  value="${subMerCashoutBatchDto.reservaed3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>