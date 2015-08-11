<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerTerminalFrom" name="editSubMerTerminalFrom" method="post" action="editSubMerTerminalAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>tsn</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.tsn" name="subMerTerminalDto.tsn"  value="${subMerTerminalDto.tsn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>factory</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.factory" name="subMerTerminalDto.factory"  value="${subMerTerminalDto.factory}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.sub_mer_id" name="subMerTerminalDto.sub_mer_id"  value="${subMerTerminalDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.mer_sys_id" name="subMerTerminalDto.mer_sys_id"  value="${subMerTerminalDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>plat_mer_id</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.plat_mer_id" name="subMerTerminalDto.plat_mer_id"  value="${subMerTerminalDto.plat_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>version</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.version" name="subMerTerminalDto.version"  value="${subMerTerminalDto.version}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>category</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.category" name="subMerTerminalDto.category"  value="${subMerTerminalDto.category}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.create_time" name="subMerTerminalDto.create_time"  value="${subMerTerminalDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>active_time</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.active_time" name="subMerTerminalDto.active_time"  value="${subMerTerminalDto.active_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>last_update_time</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.last_update_time" name="subMerTerminalDto.last_update_time"  value="${subMerTerminalDto.last_update_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_info</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.terminal_info" name="subMerTerminalDto.terminal_info"  value="${subMerTerminalDto.terminal_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_name</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.login_name" name="subMerTerminalDto.login_name"  value="${subMerTerminalDto.login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_pwd</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.login_pwd" name="subMerTerminalDto.login_pwd"  value="${subMerTerminalDto.login_pwd}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>last_login_time</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.last_login_time" name="subMerTerminalDto.last_login_time"  value="${subMerTerminalDto.last_login_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>last_login_info</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.last_login_info" name="subMerTerminalDto.last_login_info"  value="${subMerTerminalDto.last_login_info}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.status" name="subMerTerminalDto.status"  value="${subMerTerminalDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.reserved" name="subMerTerminalDto.reserved"  value="${subMerTerminalDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l1</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.agent_id_l1" name="subMerTerminalDto.agent_id_l1"  value="${subMerTerminalDto.agent_id_l1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_id_l2</label></th>
								<td>
									<input type="text" id="subMerTerminalDto.agent_id_l2" name="subMerTerminalDto.agent_id_l2"  value="${subMerTerminalDto.agent_id_l2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>