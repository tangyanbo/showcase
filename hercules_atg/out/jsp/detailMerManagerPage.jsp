<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerManagerFrom" name="editMerManagerFrom" method="post" action="editMerManagerAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>mid</label></th>
								<td>
									<input type="text" id="merManagerDto.mid" name="merManagerDto.mid"  value="${merManagerDto.mid}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_type</label></th>
								<td>
									<input type="text" id="merManagerDto.mer_type" name="merManagerDto.mer_type"  value="${merManagerDto.mer_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_name</label></th>
								<td>
									<input type="text" id="merManagerDto.login_name" name="merManagerDto.login_name"  value="${merManagerDto.login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_pwd</label></th>
								<td>
									<input type="text" id="merManagerDto.login_pwd" name="merManagerDto.login_pwd"  value="${merManagerDto.login_pwd}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>purview</label></th>
								<td>
									<input type="text" id="merManagerDto.purview" name="merManagerDto.purview"  value="${merManagerDto.purview}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>real_name</label></th>
								<td>
									<input type="text" id="merManagerDto.real_name" name="merManagerDto.real_name"  value="${merManagerDto.real_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>phone</label></th>
								<td>
									<input type="text" id="merManagerDto.phone" name="merManagerDto.phone"  value="${merManagerDto.phone}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>email</label></th>
								<td>
									<input type="text" id="merManagerDto.email" name="merManagerDto.email"  value="${merManagerDto.email}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_count</label></th>
								<td>
									<input type="text" id="merManagerDto.login_count" name="merManagerDto.login_count"  value="${merManagerDto.login_count}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>last_login_time</label></th>
								<td>
									<input type="text" id="merManagerDto.last_login_time" name="merManagerDto.last_login_time"  value="${merManagerDto.last_login_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>login_ip</label></th>
								<td>
									<input type="text" id="merManagerDto.login_ip" name="merManagerDto.login_ip"  value="${merManagerDto.login_ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="merManagerDto.create_time" name="merManagerDto.create_time"  value="${merManagerDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="merManagerDto.status" name="merManagerDto.status"  value="${merManagerDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="merManagerDto.remark" name="merManagerDto.remark"  value="${merManagerDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>