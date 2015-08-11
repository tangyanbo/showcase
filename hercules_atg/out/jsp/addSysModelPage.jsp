<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSysModelFrom" name="addSysModelFrom" method="post" action="addSysModelAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>model_name</label></th>
							<td>
								<input type="text" id="sysModelDto.model_name" name="sysModelDto.model_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_name不能为空',missingMessage:'model_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>model_no</label></th>
							<td>
								<input type="text" id="sysModelDto.model_no" name="sysModelDto.model_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_no不能为空',missingMessage:'model_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>path</label></th>
							<td>
								<input type="text" id="sysModelDto.path" name="sysModelDto.path" class="easyui-validatebox" data-options="required:true,invalidMessage:'path不能为空',missingMessage:'path不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>desc</label></th>
							<td>
								<input type="text" id="sysModelDto.desc" name="sysModelDto.desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="sysModelDto.remark" name="sysModelDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>super_no</label></th>
							<td>
								<input type="text" id="sysModelDto.super_no" name="sysModelDto.super_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_no不能为空',missingMessage:'super_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>