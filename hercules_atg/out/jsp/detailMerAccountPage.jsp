<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerAccountFrom" name="editMerAccountFrom" method="post" action="editMerAccountAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="merAccountDto.mer_sys_id" name="merAccountDto.mer_sys_id"  value="${merAccountDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_name</label></th>
								<td>
									<input type="text" id="merAccountDto.sett_account_name" name="merAccountDto.sett_account_name"  value="${merAccountDto.sett_account_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_account_no</label></th>
								<td>
									<input type="text" id="merAccountDto.sett_account_no" name="merAccountDto.sett_account_no"  value="${merAccountDto.sett_account_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_agency</label></th>
								<td>
									<input type="text" id="merAccountDto.sett_agency" name="merAccountDto.sett_agency"  value="${merAccountDto.sett_agency}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_acc_type</label></th>
								<td>
									<input type="text" id="merAccountDto.sett_acc_type" name="merAccountDto.sett_acc_type"  value="${merAccountDto.sett_acc_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="merAccountDto.status" name="merAccountDto.status"  value="${merAccountDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="merAccountDto.reserved1" name="merAccountDto.reserved1"  value="${merAccountDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="merAccountDto.reserved2" name="merAccountDto.reserved2"  value="${merAccountDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="merAccountDto.reserved3" name="merAccountDto.reserved3"  value="${merAccountDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved4</label></th>
								<td>
									<input type="text" id="merAccountDto.reserved4" name="merAccountDto.reserved4"  value="${merAccountDto.reserved4}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved5</label></th>
								<td>
									<input type="text" id="merAccountDto.reserved5" name="merAccountDto.reserved5"  value="${merAccountDto.reserved5}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sett_agency_name</label></th>
								<td>
									<input type="text" id="merAccountDto.sett_agency_name" name="merAccountDto.sett_agency_name"  value="${merAccountDto.sett_agency_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>deduction_type</label></th>
								<td>
									<input type="text" id="merAccountDto.deduction_type" name="merAccountDto.deduction_type"  value="${merAccountDto.deduction_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>