<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editStopSettleStatictisFrom" name="editStopSettleStatictisFrom" method="post" action="editStopSettleStatictisAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.mer_sys_id" name="stopSettleStatictisDto.mer_sys_id"  value="${stopSettleStatictisDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.sub_mer_id" name="stopSettleStatictisDto.sub_mer_id"  value="${stopSettleStatictisDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_amt</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.mer_amt" name="stopSettleStatictisDto.mer_amt"  value="${stopSettleStatictisDto.mer_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_fee</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.trans_fee" name="stopSettleStatictisDto.trans_fee"  value="${stopSettleStatictisDto.trans_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>clear_amt</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.clear_amt" name="stopSettleStatictisDto.clear_amt"  value="${stopSettleStatictisDto.clear_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.settle_date" name="stopSettleStatictisDto.settle_date"  value="${stopSettleStatictisDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.reserved1" name="stopSettleStatictisDto.reserved1"  value="${stopSettleStatictisDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.reserved2" name="stopSettleStatictisDto.reserved2"  value="${stopSettleStatictisDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.reserved3" name="stopSettleStatictisDto.reserved3"  value="${stopSettleStatictisDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_num</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.account_num" name="stopSettleStatictisDto.account_num"  value="${stopSettleStatictisDto.account_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_name</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.account_name" name="stopSettleStatictisDto.account_name"  value="${stopSettleStatictisDto.account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_agency_id</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.account_agency_id" name="stopSettleStatictisDto.account_agency_id"  value="${stopSettleStatictisDto.account_agency_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved4</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.reserved4" name="stopSettleStatictisDto.reserved4"  value="${stopSettleStatictisDto.reserved4}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved5</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.reserved5" name="stopSettleStatictisDto.reserved5"  value="${stopSettleStatictisDto.reserved5}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_name</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.mer_name" name="stopSettleStatictisDto.mer_name"  value="${stopSettleStatictisDto.mer_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mss_id</label></th>
								<td>
									<input type="text" id="stopSettleStatictisDto.mss_id" name="stopSettleStatictisDto.mss_id"  value="${stopSettleStatictisDto.mss_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>