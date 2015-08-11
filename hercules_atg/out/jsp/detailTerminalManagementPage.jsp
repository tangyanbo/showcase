<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTerminalManagementFrom" name="editTerminalManagementFrom" method="post" action="editTerminalManagementAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>merchant_no</label></th>
								<td>
									<input type="text" id="terminalManagementDto.merchant_no" name="terminalManagementDto.merchant_no"  value="${terminalManagementDto.merchant_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_no</label></th>
								<td>
									<input type="text" id="terminalManagementDto.terminal_no" name="terminalManagementDto.terminal_no"  value="${terminalManagementDto.terminal_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tmk</label></th>
								<td>
									<input type="text" id="terminalManagementDto.tmk" name="terminalManagementDto.tmk"  value="${terminalManagementDto.tmk}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>channel_type</label></th>
								<td>
									<input type="text" id="terminalManagementDto.channel_type" name="terminalManagementDto.channel_type"  value="${terminalManagementDto.channel_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tmk_local</label></th>
								<td>
									<input type="text" id="terminalManagementDto.tmk_local" name="terminalManagementDto.tmk_local"  value="${terminalManagementDto.tmk_local}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pin_key</label></th>
								<td>
									<input type="text" id="terminalManagementDto.pin_key" name="terminalManagementDto.pin_key"  value="${terminalManagementDto.pin_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mac_key</label></th>
								<td>
									<input type="text" id="terminalManagementDto.mac_key" name="terminalManagementDto.mac_key"  value="${terminalManagementDto.mac_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>track_key</label></th>
								<td>
									<input type="text" id="terminalManagementDto.track_key" name="terminalManagementDto.track_key"  value="${terminalManagementDto.track_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>lot_no</label></th>
								<td>
									<input type="text" id="terminalManagementDto.lot_no" name="terminalManagementDto.lot_no"  value="${terminalManagementDto.lot_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="terminalManagementDto.create_date" name="terminalManagementDto.create_date"  value="${terminalManagementDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="terminalManagementDto.create_time" name="terminalManagementDto.create_time"  value="${terminalManagementDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>network_no</label></th>
								<td>
									<input type="text" id="terminalManagementDto.network_no" name="terminalManagementDto.network_no"  value="${terminalManagementDto.network_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="terminalManagementDto.ext" name="terminalManagementDto.ext"  value="${terminalManagementDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="terminalManagementDto.ext1" name="terminalManagementDto.ext1"  value="${terminalManagementDto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>