<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerTerminalInfoFrom" name="editMerTerminalInfoFrom" method="post" action="editMerTerminalInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.mer_sys_id" name="merTerminalInfoDto.mer_sys_id"  value="${merTerminalInfoDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>category</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.category" name="merTerminalInfoDto.category"  value="${merTerminalInfoDto.category}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_code</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.terminal_code" name="merTerminalInfoDto.terminal_code"  value="${merTerminalInfoDto.terminal_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_systerm</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.terminal_systerm" name="merTerminalInfoDto.terminal_systerm"  value="${merTerminalInfoDto.terminal_systerm}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>file_name</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.file_name" name="merTerminalInfoDto.file_name"  value="${merTerminalInfoDto.file_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>version</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.version" name="merTerminalInfoDto.version"  value="${merTerminalInfoDto.version}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>version_desc</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.version_desc" name="merTerminalInfoDto.version_desc"  value="${merTerminalInfoDto.version_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>update_type</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.update_type" name="merTerminalInfoDto.update_type"  value="${merTerminalInfoDto.update_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>update_path</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.update_path" name="merTerminalInfoDto.update_path"  value="${merTerminalInfoDto.update_path}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.create_time" name="merTerminalInfoDto.create_time"  value="${merTerminalInfoDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.status" name="merTerminalInfoDto.status"  value="${merTerminalInfoDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="merTerminalInfoDto.reserved" name="merTerminalInfoDto.reserved"  value="${merTerminalInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>