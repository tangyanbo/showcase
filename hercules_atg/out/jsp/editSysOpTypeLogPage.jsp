<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSysOpTypeLogFrom" name="editSysOpTypeLogFrom" method="post" action="editSysOpTypeLogAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="sysOpTypeLogDto.id" name="sysOpTypeLogDto.id" value="${sysOpTypeLogDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>login_name</label></th>
									<td>
										<input type="text" id="sysOpTypeLogDto.login_name" name="sysOpTypeLogDto.login_name" value="${sysOpTypeLogDto.login_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_name不能为空',missingMessage:'login_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>op_desc</label></th>
									<td>
										<input type="text" id="sysOpTypeLogDto.op_desc" name="sysOpTypeLogDto.op_desc" value="${sysOpTypeLogDto.op_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_desc不能为空',missingMessage:'op_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>op_url</label></th>
									<td>
										<input type="text" id="sysOpTypeLogDto.op_url" name="sysOpTypeLogDto.op_url" value="${sysOpTypeLogDto.op_url}" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_url不能为空',missingMessage:'op_url不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ip</label></th>
									<td>
										<input type="text" id="sysOpTypeLogDto.ip" name="sysOpTypeLogDto.ip" value="${sysOpTypeLogDto.ip}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ip不能为空',missingMessage:'ip不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>op_type</label></th>
									<td>
										<input type="text" id="sysOpTypeLogDto.op_type" name="sysOpTypeLogDto.op_type" value="${sysOpTypeLogDto.op_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_type不能为空',missingMessage:'op_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>op_time</label></th>
									<td>
										<input type="text" id="sysOpTypeLogDto.op_time" name="sysOpTypeLogDto.op_time" value="${sysOpTypeLogDto.op_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_time不能为空',missingMessage:'op_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="sysOpTypeLogDto.remark" name="sysOpTypeLogDto.remark" value="${sysOpTypeLogDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSysOpTypeLogFrom" name="delSysOpTypeLogFrom" method="post" action="delSysOpTypeLogAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${sysOpTypeLogDto.id}" />
			</form>
		</div>
	</div>
</div>