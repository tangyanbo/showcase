<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgentManagerFrom" name="editAgentManagerFrom" method="post" action="editAgentManagerAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>agent_id</label></th>
								<td>
									<input type="text" id="agentManagerDto.agent_id" name="agentManagerDto.agent_id"  value="${agentManagerDto.agent_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>level</label></th>
								<td>
									<input type="text" id="agentManagerDto.level" name="agentManagerDto.level"  value="${agentManagerDto.level}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_name</label></th>
								<td>
									<input type="text" id="agentManagerDto.login_name" name="agentManagerDto.login_name"  value="${agentManagerDto.login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_pwd</label></th>
								<td>
									<input type="text" id="agentManagerDto.login_pwd" name="agentManagerDto.login_pwd"  value="${agentManagerDto.login_pwd}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>purview</label></th>
								<td>
									<input type="text" id="agentManagerDto.purview" name="agentManagerDto.purview"  value="${agentManagerDto.purview}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>real_name</label></th>
								<td>
									<input type="text" id="agentManagerDto.real_name" name="agentManagerDto.real_name"  value="${agentManagerDto.real_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>phone</label></th>
								<td>
									<input type="text" id="agentManagerDto.phone" name="agentManagerDto.phone"  value="${agentManagerDto.phone}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>email</label></th>
								<td>
									<input type="text" id="agentManagerDto.email" name="agentManagerDto.email"  value="${agentManagerDto.email}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_count</label></th>
								<td>
									<input type="text" id="agentManagerDto.login_count" name="agentManagerDto.login_count"  value="${agentManagerDto.login_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>last_login_time</label></th>
								<td>
									<input type="text" id="agentManagerDto.last_login_time" name="agentManagerDto.last_login_time"  value="${agentManagerDto.last_login_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_ip</label></th>
								<td>
									<input type="text" id="agentManagerDto.login_ip" name="agentManagerDto.login_ip"  value="${agentManagerDto.login_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="agentManagerDto.create_time" name="agentManagerDto.create_time"  value="${agentManagerDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="agentManagerDto.status" name="agentManagerDto.status"  value="${agentManagerDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="agentManagerDto.remark" name="agentManagerDto.remark"  value="${agentManagerDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>