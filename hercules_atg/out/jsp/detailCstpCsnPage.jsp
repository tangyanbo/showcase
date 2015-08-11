<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCstpCsnFrom" name="editCstpCsnFrom" method="post" action="editCstpCsnAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>card_serial_no</label></th>
								<td>
									<input type="text" id="cstpCsnDto.card_serial_no" name="cstpCsnDto.card_serial_no"  value="${cstpCsnDto.card_serial_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>main_key</label></th>
								<td>
									<input type="text" id="cstpCsnDto.main_key" name="cstpCsnDto.main_key"  value="${cstpCsnDto.main_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>security_key</label></th>
								<td>
									<input type="text" id="cstpCsnDto.security_key" name="cstpCsnDto.security_key"  value="${cstpCsnDto.security_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pin_key</label></th>
								<td>
									<input type="text" id="cstpCsnDto.pin_key" name="cstpCsnDto.pin_key"  value="${cstpCsnDto.pin_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mac_key</label></th>
								<td>
									<input type="text" id="cstpCsnDto.mac_key" name="cstpCsnDto.mac_key"  value="${cstpCsnDto.mac_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track_key</label></th>
								<td>
									<input type="text" id="cstpCsnDto.track_key" name="cstpCsnDto.track_key"  value="${cstpCsnDto.track_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ccd_status</label></th>
								<td>
									<input type="text" id="cstpCsnDto.ccd_status" name="cstpCsnDto.ccd_status"  value="${cstpCsnDto.ccd_status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="cstpCsnDto.create_time" name="cstpCsnDto.create_time"  value="${cstpCsnDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sp_id</label></th>
								<td>
									<input type="text" id="cstpCsnDto.sp_id" name="cstpCsnDto.sp_id"  value="${cstpCsnDto.sp_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>update_time</label></th>
								<td>
									<input type="text" id="cstpCsnDto.update_time" name="cstpCsnDto.update_time"  value="${cstpCsnDto.update_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="cstpCsnDto.ext" name="cstpCsnDto.ext"  value="${cstpCsnDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>