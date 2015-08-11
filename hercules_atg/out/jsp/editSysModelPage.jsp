<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSysModelFrom" name="editSysModelFrom" method="post" action="editSysModelAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="sysModelDto.id" name="sysModelDto.id" value="${sysModelDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>model_name</label></th>
									<td>
										<input type="text" id="sysModelDto.model_name" name="sysModelDto.model_name" value="${sysModelDto.model_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_name不能为空',missingMessage:'model_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>model_no</label></th>
									<td>
										<input type="text" id="sysModelDto.model_no" name="sysModelDto.model_no" value="${sysModelDto.model_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_no不能为空',missingMessage:'model_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>path</label></th>
									<td>
										<input type="text" id="sysModelDto.path" name="sysModelDto.path" value="${sysModelDto.path}" class="easyui-validatebox" data-options="required:true,invalidMessage:'path不能为空',missingMessage:'path不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="sysModelDto.desc" name="sysModelDto.desc" value="${sysModelDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="sysModelDto.remark" name="sysModelDto.remark" value="${sysModelDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_no</label></th>
									<td>
										<input type="text" id="sysModelDto.super_no" name="sysModelDto.super_no" value="${sysModelDto.super_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_no不能为空',missingMessage:'super_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSysModelFrom" name="delSysModelFrom" method="post" action="delSysModelAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${sysModelDto.id}" />
			</form>
		</div>
	</div>
</div>