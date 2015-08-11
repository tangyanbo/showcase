<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubOperatorInfoFrom" name="editSubOperatorInfoFrom" method="post" action="editSubOperatorInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.sub_mer_id" name="subOperatorInfoDto.sub_mer_id"  value="${subOperatorInfoDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>operator_id</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.operator_id" name="subOperatorInfoDto.operator_id"  value="${subOperatorInfoDto.operator_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>operator_name</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.operator_name" name="subOperatorInfoDto.operator_name"  value="${subOperatorInfoDto.operator_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.contactor" name="subOperatorInfoDto.contactor"  value="${subOperatorInfoDto.contactor}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_phone</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.contactor_phone" name="subOperatorInfoDto.contactor_phone"  value="${subOperatorInfoDto.contactor_phone}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>contactor_addr</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.contactor_addr" name="subOperatorInfoDto.contactor_addr"  value="${subOperatorInfoDto.contactor_addr}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.status" name="subOperatorInfoDto.status"  value="${subOperatorInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.create_time" name="subOperatorInfoDto.create_time"  value="${subOperatorInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.remark" name="subOperatorInfoDto.remark"  value="${subOperatorInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="subOperatorInfoDto.reserved" name="subOperatorInfoDto.reserved"  value="${subOperatorInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>