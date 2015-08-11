<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editBusTypeFrom" name="editBusTypeFrom" method="post" action="editBusTypeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="busTypeDto.bus_id" name="busTypeDto.bus_id" value="${busTypeDto.bus_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>bus_name</label></th>
									<td>
										<input type="text" id="busTypeDto.bus_name" name="busTypeDto.bus_name" value="${busTypeDto.bus_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_name不能为空',missingMessage:'bus_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bus_desc</label></th>
									<td>
										<input type="text" id="busTypeDto.bus_desc" name="busTypeDto.bus_desc" value="${busTypeDto.bus_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_desc不能为空',missingMessage:'bus_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="busTypeDto.remark" name="busTypeDto.remark" value="${busTypeDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delBusTypeFrom" name="delBusTypeFrom" method="post" action="delBusTypeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${busTypeDto.bus_id}" />
			</form>
		</div>
	</div>
</div>