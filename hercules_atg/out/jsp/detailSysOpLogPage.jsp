<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSysOpLogFrom" name="editSysOpLogFrom" method="post" action="editSysOpLogAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>login_name</label></th>
								<td>
									<input type="text" id="sysOpLogDto.login_name" name="sysOpLogDto.login_name"  value="${sysOpLogDto.login_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_desc</label></th>
								<td>
									<input type="text" id="sysOpLogDto.op_desc" name="sysOpLogDto.op_desc"  value="${sysOpLogDto.op_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_url</label></th>
								<td>
									<input type="text" id="sysOpLogDto.op_url" name="sysOpLogDto.op_url"  value="${sysOpLogDto.op_url}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ip</label></th>
								<td>
									<input type="text" id="sysOpLogDto.ip" name="sysOpLogDto.ip"  value="${sysOpLogDto.ip}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ua</label></th>
								<td>
									<input type="text" id="sysOpLogDto.ua" name="sysOpLogDto.ua"  value="${sysOpLogDto.ua}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>op_time</label></th>
								<td>
									<input type="text" id="sysOpLogDto.op_time" name="sysOpLogDto.op_time"  value="${sysOpLogDto.op_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="sysOpLogDto.remark" name="sysOpLogDto.remark"  value="${sysOpLogDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>