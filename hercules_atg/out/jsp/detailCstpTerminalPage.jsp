<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCstpTerminalFrom" name="editCstpTerminalFrom" method="post" action="editCstpTerminalAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>merchant_id</label></th>
								<td>
									<input type="text" id="cstpTerminalDto.merchant_id" name="cstpTerminalDto.merchant_id"  value="${cstpTerminalDto.merchant_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="cstpTerminalDto.terminal_id" name="cstpTerminalDto.terminal_id"  value="${cstpTerminalDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="cstpTerminalDto.create_time" name="cstpTerminalDto.create_time"  value="${cstpTerminalDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sign_in_date</label></th>
								<td>
									<input type="text" id="cstpTerminalDto.sign_in_date" name="cstpTerminalDto.sign_in_date"  value="${cstpTerminalDto.sign_in_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mac_key</label></th>
								<td>
									<input type="text" id="cstpTerminalDto.mac_key" name="cstpTerminalDto.mac_key"  value="${cstpTerminalDto.mac_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pin_key</label></th>
								<td>
									<input type="text" id="cstpTerminalDto.pin_key" name="cstpTerminalDto.pin_key"  value="${cstpTerminalDto.pin_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>