<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSysManagerFrom" name="editSysManagerFrom" method="post" action="editSysManagerAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>login_name</label></th>
								<td>
									<input type="text" id="sysManagerDto.login_name" name="sysManagerDto.login_name"  value="${sysManagerDto.login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_pwd</label></th>
								<td>
									<input type="text" id="sysManagerDto.login_pwd" name="sysManagerDto.login_pwd"  value="${sysManagerDto.login_pwd}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>department</label></th>
								<td>
									<input type="text" id="sysManagerDto.department" name="sysManagerDto.department"  value="${sysManagerDto.department}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>real_name</label></th>
								<td>
									<input type="text" id="sysManagerDto.real_name" name="sysManagerDto.real_name"  value="${sysManagerDto.real_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>phone</label></th>
								<td>
									<input type="text" id="sysManagerDto.phone" name="sysManagerDto.phone"  value="${sysManagerDto.phone}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>email</label></th>
								<td>
									<input type="text" id="sysManagerDto.email" name="sysManagerDto.email"  value="${sysManagerDto.email}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>level</label></th>
								<td>
									<input type="text" id="sysManagerDto.level" name="sysManagerDto.level"  value="${sysManagerDto.level}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>band_ip</label></th>
								<td>
									<input type="text" id="sysManagerDto.band_ip" name="sysManagerDto.band_ip"  value="${sysManagerDto.band_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>level_pwd</label></th>
								<td>
									<input type="text" id="sysManagerDto.level_pwd" name="sysManagerDto.level_pwd"  value="${sysManagerDto.level_pwd}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>purview</label></th>
								<td>
									<input type="text" id="sysManagerDto.purview" name="sysManagerDto.purview"  value="${sysManagerDto.purview}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>last_login_time</label></th>
								<td>
									<input type="text" id="sysManagerDto.last_login_time" name="sysManagerDto.last_login_time"  value="${sysManagerDto.last_login_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_times</label></th>
								<td>
									<input type="text" id="sysManagerDto.login_times" name="sysManagerDto.login_times"  value="${sysManagerDto.login_times}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>last_login_ip</label></th>
								<td>
									<input type="text" id="sysManagerDto.last_login_ip" name="sysManagerDto.last_login_ip"  value="${sysManagerDto.last_login_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="sysManagerDto.status" name="sysManagerDto.status"  value="${sysManagerDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="sysManagerDto.create_time" name="sysManagerDto.create_time"  value="${sysManagerDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="sysManagerDto.reserved" name="sysManagerDto.reserved"  value="${sysManagerDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>report_email</label></th>
								<td>
									<input type="text" id="sysManagerDto.report_email" name="sysManagerDto.report_email"  value="${sysManagerDto.report_email}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>