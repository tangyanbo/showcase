<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSysOpTypeLogFrom" name="editSysOpTypeLogFrom" method="post" action="editSysOpTypeLogAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>login_name</label></th>
								<td>
									<input type="text" id="sysOpTypeLogDto.login_name" name="sysOpTypeLogDto.login_name"  value="${sysOpTypeLogDto.login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_desc</label></th>
								<td>
									<input type="text" id="sysOpTypeLogDto.op_desc" name="sysOpTypeLogDto.op_desc"  value="${sysOpTypeLogDto.op_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_url</label></th>
								<td>
									<input type="text" id="sysOpTypeLogDto.op_url" name="sysOpTypeLogDto.op_url"  value="${sysOpTypeLogDto.op_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="sysOpTypeLogDto.ip" name="sysOpTypeLogDto.ip"  value="${sysOpTypeLogDto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_type</label></th>
								<td>
									<input type="text" id="sysOpTypeLogDto.op_type" name="sysOpTypeLogDto.op_type"  value="${sysOpTypeLogDto.op_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_time</label></th>
								<td>
									<input type="text" id="sysOpTypeLogDto.op_time" name="sysOpTypeLogDto.op_time"  value="${sysOpTypeLogDto.op_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="sysOpTypeLogDto.remark" name="sysOpTypeLogDto.remark"  value="${sysOpTypeLogDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>