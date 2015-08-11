<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTerminalTypeFrom" name="editTerminalTypeFrom" method="post" action="editTerminalTypeAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>product_name</label></th>
								<td>
									<input type="text" id="terminalTypeDto.product_name" name="terminalTypeDto.product_name"  value="${terminalTypeDto.product_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>product_desc</label></th>
								<td>
									<input type="text" id="terminalTypeDto.product_desc" name="terminalTypeDto.product_desc"  value="${terminalTypeDto.product_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="terminalTypeDto.status" name="terminalTypeDto.status"  value="${terminalTypeDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="terminalTypeDto.remark" name="terminalTypeDto.remark"  value="${terminalTypeDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>type</label></th>
								<td>
									<input type="text" id="terminalTypeDto.type" name="terminalTypeDto.type"  value="${terminalTypeDto.type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>