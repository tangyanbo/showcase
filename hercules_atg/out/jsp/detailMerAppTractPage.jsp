<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerAppTractFrom" name="editMerAppTractFrom" method="post" action="editMerAppTractAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="merAppTractDto.mer_sys_id" name="merAppTractDto.mer_sys_id"  value="${merAppTractDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>app_tract_id</label></th>
								<td>
									<input type="text" id="merAppTractDto.app_tract_id" name="merAppTractDto.app_tract_id"  value="${merAppTractDto.app_tract_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_mer_id</label></th>
								<td>
									<input type="text" id="merAppTractDto.trans_mer_id" name="merAppTractDto.trans_mer_id"  value="${merAppTractDto.trans_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>trans_rate</label></th>
								<td>
									<input type="text" id="merAppTractDto.trans_rate" name="merAppTractDto.trans_rate"  value="${merAppTractDto.trans_rate}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>lowest_fee</label></th>
								<td>
									<input type="text" id="merAppTractDto.lowest_fee" name="merAppTractDto.lowest_fee"  value="${merAppTractDto.lowest_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>highest_fee</label></th>
								<td>
									<input type="text" id="merAppTractDto.highest_fee" name="merAppTractDto.highest_fee"  value="${merAppTractDto.highest_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_profit</label></th>
								<td>
									<input type="text" id="merAppTractDto.mer_profit" name="merAppTractDto.mer_profit"  value="${merAppTractDto.mer_profit}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="merAppTractDto.status" name="merAppTractDto.status"  value="${merAppTractDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="merAppTractDto.create_time" name="merAppTractDto.create_time"  value="${merAppTractDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>app_tract_type</label></th>
								<td>
									<input type="text" id="merAppTractDto.app_tract_type" name="merAppTractDto.app_tract_type"  value="${merAppTractDto.app_tract_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="merAppTractDto.remark" name="merAppTractDto.remark"  value="${merAppTractDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="merAppTractDto.reserved" name="merAppTractDto.reserved"  value="${merAppTractDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>