<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTerminalTypeFrom" name="editTerminalTypeFrom" method="post" action="editTerminalTypeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="terminalTypeDto.product_id" name="terminalTypeDto.product_id" value="${terminalTypeDto.product_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>product_name</label></th>
									<td>
										<input type="text" id="terminalTypeDto.product_name" name="terminalTypeDto.product_name" value="${terminalTypeDto.product_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'product_name不能为空',missingMessage:'product_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>product_desc</label></th>
									<td>
										<input type="text" id="terminalTypeDto.product_desc" name="terminalTypeDto.product_desc" value="${terminalTypeDto.product_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'product_desc不能为空',missingMessage:'product_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="terminalTypeDto.remark" name="terminalTypeDto.remark" value="${terminalTypeDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delTerminalTypeFrom" name="delTerminalTypeFrom" method="post" action="delTerminalTypeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${terminalTypeDto.product_id}" />
			</form>
		</div>
	</div>
</div>