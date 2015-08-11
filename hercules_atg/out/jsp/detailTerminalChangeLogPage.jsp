<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTerminalChangeLogFrom" name="editTerminalChangeLogFrom" method="post" action="editTerminalChangeLogAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.terminal_id" name="terminalChangeLogDto.terminal_id"  value="${terminalChangeLogDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_sub_mer_id</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.org_sub_mer_id" name="terminalChangeLogDto.org_sub_mer_id"  value="${terminalChangeLogDto.org_sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_mer_sys_id</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.org_mer_sys_id" name="terminalChangeLogDto.org_mer_sys_id"  value="${terminalChangeLogDto.org_mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_login_name</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.org_login_name" name="terminalChangeLogDto.org_login_name"  value="${terminalChangeLogDto.org_login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_login_pwd</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.org_login_pwd" name="terminalChangeLogDto.org_login_pwd"  value="${terminalChangeLogDto.org_login_pwd}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>org_version</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.org_version" name="terminalChangeLogDto.org_version"  value="${terminalChangeLogDto.org_version}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>change_date</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.change_date" name="terminalChangeLogDto.change_date"  value="${terminalChangeLogDto.change_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>change_desc</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.change_desc" name="terminalChangeLogDto.change_desc"  value="${terminalChangeLogDto.change_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="terminalChangeLogDto.reserved" name="terminalChangeLogDto.reserved"  value="${terminalChangeLogDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>