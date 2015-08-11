<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTerminalBatchConfigFrom" name="editTerminalBatchConfigFrom" method="post" action="editTerminalBatchConfigAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.create_time" name="terminalBatchConfigDto.create_time"  value="${terminalBatchConfigDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_num</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.create_num" name="terminalBatchConfigDto.create_num"  value="${terminalBatchConfigDto.create_num}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mer_sys_id</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.mer_sys_id" name="terminalBatchConfigDto.mer_sys_id"  value="${terminalBatchConfigDto.mer_sys_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>factory_id</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.factory_id" name="terminalBatchConfigDto.factory_id"  value="${terminalBatchConfigDto.factory_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.status" name="terminalBatchConfigDto.status"  value="${terminalBatchConfigDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>file_name</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.file_name" name="terminalBatchConfigDto.file_name"  value="${terminalBatchConfigDto.file_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.reserved1" name="terminalBatchConfigDto.reserved1"  value="${terminalBatchConfigDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.reserved2" name="terminalBatchConfigDto.reserved2"  value="${terminalBatchConfigDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="terminalBatchConfigDto.reserved3" name="terminalBatchConfigDto.reserved3"  value="${terminalBatchConfigDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>