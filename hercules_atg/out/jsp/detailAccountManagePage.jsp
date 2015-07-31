<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAccountManageFrom" name="editAccountManageFrom" method="post" action="editAccountManageAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="accountManageDto.mer_sys_id" name="accountManageDto.mer_sys_id"  value="${accountManageDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_amt</label></th>
								<td>
									<input type="text" id="accountManageDto.mer_amt" name="accountManageDto.mer_amt"  value="${accountManageDto.mer_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>fee_amt</label></th>
								<td>
									<input type="text" id="accountManageDto.fee_amt" name="accountManageDto.fee_amt"  value="${accountManageDto.fee_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>account_type</label></th>
								<td>
									<input type="text" id="accountManageDto.account_type" name="accountManageDto.account_type"  value="${accountManageDto.account_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="accountManageDto.status" name="accountManageDto.status"  value="${accountManageDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_date</label></th>
								<td>
									<input type="text" id="accountManageDto.settle_date" name="accountManageDto.settle_date"  value="${accountManageDto.settle_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="accountManageDto.create_time" name="accountManageDto.create_time"  value="${accountManageDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>update_time</label></th>
								<td>
									<input type="text" id="accountManageDto.update_time" name="accountManageDto.update_time"  value="${accountManageDto.update_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>update_oper_id</label></th>
								<td>
									<input type="text" id="accountManageDto.update_oper_id" name="accountManageDto.update_oper_id"  value="${accountManageDto.update_oper_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>change_status</label></th>
								<td>
									<input type="text" id="accountManageDto.change_status" name="accountManageDto.change_status"  value="${accountManageDto.change_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>change_amt</label></th>
								<td>
									<input type="text" id="accountManageDto.change_amt" name="accountManageDto.change_amt"  value="${accountManageDto.change_amt}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>change_oper_id</label></th>
								<td>
									<input type="text" id="accountManageDto.change_oper_id" name="accountManageDto.change_oper_id"  value="${accountManageDto.change_oper_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>change_reason</label></th>
								<td>
									<input type="text" id="accountManageDto.change_reason" name="accountManageDto.change_reason"  value="${accountManageDto.change_reason}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="accountManageDto.reserved1" name="accountManageDto.reserved1"  value="${accountManageDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="accountManageDto.reserved2" name="accountManageDto.reserved2"  value="${accountManageDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="accountManageDto.reserved3" name="accountManageDto.reserved3"  value="${accountManageDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>