<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSysOpTypeLogFrom" name="addSysOpTypeLogFrom" method="post" action="addSysOpTypeLogAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>login_name</label></th>
							<td>
								<input type="text" id="sysOpTypeLogDto.login_name" name="sysOpTypeLogDto.login_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_name不能为空',missingMessage:'login_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>op_desc</label></th>
							<td>
								<input type="text" id="sysOpTypeLogDto.op_desc" name="sysOpTypeLogDto.op_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_desc不能为空',missingMessage:'op_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>op_url</label></th>
							<td>
								<input type="text" id="sysOpTypeLogDto.op_url" name="sysOpTypeLogDto.op_url" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_url不能为空',missingMessage:'op_url不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ip</label></th>
							<td>
								<input type="text" id="sysOpTypeLogDto.ip" name="sysOpTypeLogDto.ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'ip不能为空',missingMessage:'ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>op_type</label></th>
							<td>
								<input type="text" id="sysOpTypeLogDto.op_type" name="sysOpTypeLogDto.op_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_type不能为空',missingMessage:'op_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>op_time</label></th>
							<td>
								<input type="text" id="sysOpTypeLogDto.op_time" name="sysOpTypeLogDto.op_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_time不能为空',missingMessage:'op_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="sysOpTypeLogDto.remark" name="sysOpTypeLogDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>